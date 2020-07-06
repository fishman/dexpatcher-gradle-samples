package com.samsung.android.shealthmonitor.dataroom.manager

import android.app.Activity
import android.content.Context
import android.os.Handler
import android.os.HandlerThread
import android.support.v4.app.FragmentActivity
import com.samsung.android.sdk.healthdata.*
import com.samsung.android.shealthmonitor.data.HealthSdkHelperInterface
import com.samsung.android.shealthmonitor.dataroom.data.HealthSdkSyncedData
import com.samsung.android.shealthmonitor.data.HealthSyncData
import com.samsung.android.shealthmonitor.helper.ContextHolder
import com.samsung.android.shealthmonitor.helper.SingletonHolder
import com.samsung.android.shealthmonitor.controller.ControlManager
import com.samsung.android.shealthmonitor.util.LOG
import com.samsung.android.shealthmonitor.util.Utils.runOnUiThread
import java.lang.ref.WeakReference
import java.util.*
import com.samsung.android.sdk.healthdata.HealthUserProfile
import com.samsung.android.sdk.healthdata.HealthPermissionManager
import com.samsung.android.sdk.healthdata.HealthConstants
import com.samsung.android.shealthmonitor.dataroom.R
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager
import com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment


class SamsungHealthDataSyncManager private constructor() {

    private val TAG = LOG.prefix + "SamsungHealthDataSyncManager"
    private val SDK_UUID = "datauuid"
    private val SDK_COMMENT = "comment"
    private val mStore: HealthDataStore
    private val ERROR_POPUP_TAG = "ERROR_POPUP_TAG"

    internal enum class SdkStoreConnectionState {
        DISCONNECT, CONNECTING, CONNECTED, SYNCABLE
    }

    private val mApplicationContext: Context
    private var MAX_SENDING_COUNT = 1000
    private val mAllPermissionKeySet:MutableSet<HealthPermissionManager.PermissionKey>
    private var mSdkHelperList : ArrayList<HealthSdkHelperInterface> = ArrayList()
    private var mConnectState = SdkStoreConnectionState.DISCONNECT
    private var mSycing = false
    private var mNeedToPermissionKeySet:Set<HealthPermissionManager.PermissionKey>? = null
    private var mIsShowRequest = false
    private val mSyncThread: HandlerThread // for using sync call on Health SDK, need looper thread.
    private val mHandler: Handler
    private var mConnError: HealthConnectionErrorResult? = null
    private var mWeakListener = WeakReference<SyncResultListener>(null)
    private var mWeakActivity = WeakReference<FragmentActivity>(null)
    private var mConnectionListener : HealthDataStore.ConnectionListener

    //for Singleton
    companion object : SingletonHolder<SamsungHealthDataSyncManager>(::SamsungHealthDataSyncManager)

    init {
        mApplicationContext = ContextHolder.getContext().getApplicationContext()
        mConnError = null

        mAllPermissionKeySet = HashSet<HealthPermissionManager.PermissionKey>()
        mConnectionListener = ConnectionListenerObject()

        initSdkHelper()

        mStore = HealthDataStore(mApplicationContext, mConnectionListener)
        requestConnectService(null)
        // SyncThread(looper) for room database, it is not accessible on the main thread.
        // and for using health store sdk
        mSyncThread = HandlerThread("syncThread")
        mSyncThread.start()
        val looper = mSyncThread.looper
        mHandler = Handler(looper)
    }

    /**
     * must be called in init{}
     */
    private fun initSdkHelper() {

        mSdkHelperList = ControlManager.getInstance().getHealthSdkHelpers()
        if ( mSdkHelperList.isEmpty()) {
            LOG.e(TAG, "SdkHelper is empty")
        }

        for (sdkHelper in mSdkHelperList) {
            val permissionSetList = sdkHelper.getSdkPermission()
            for (permissionKeySet in permissionSetList) {
                permissionKeySet as HealthPermissionManager.PermissionKey
                mAllPermissionKeySet.add(permissionKeySet)
            }

            // Is default permission
            val defaultPermissionKey = getDefaultPermissionKey()
            if (defaultPermissionKey != null) {
                mAllPermissionKeySet.add(defaultPermissionKey)
            }

            LOG.i(TAG, "init SDK DataType : ${sdkHelper.getSdkDataType()}")
        }

        if (mAllPermissionKeySet.isEmpty()) {
            LOG.e(TAG, "AllPermissionKeySet is empty")
        }
    }

    private fun getDefaultPermissionKey() : HealthPermissionManager.PermissionKey? {
          return null
//        return HealthPermissionManager.PermissionKey(HealthConstants.USER_PROFILE_DATA_TYPE,
//                HealthPermissionManager.PermissionType.READ)
    }

    fun hasDefaultPermissions() : Boolean {
        val keyList = HashSet<HealthPermissionManager.PermissionKey>()
        val defaultPermissionKey = getDefaultPermissionKey()
        if (defaultPermissionKey != null) {
            keyList.add(defaultPermissionKey)
            return hasPermission(keyList)
        } else {
            return false
        }
    }

    private fun getSdkHelper(sdkDataType : String) : HealthSdkHelperInterface? {
        for (sdkHelper in mSdkHelperList) {
            if (sdkHelper.getSdkDataType().equals(sdkDataType)) {
                return sdkHelper
            }
        }
        return null
    }

    /**
     * Connection listener class for receiving HealthDataStore events.
     */
    inner class ConnectionListenerObject : HealthDataStore.ConnectionListener {

        override fun onConnected() {
            LOG.d(TAG, "Health data service is connected.")
            mConnectState = SdkStoreConnectionState.CONNECTED
            if (isSyncable()) { // if only one feature has true, it returns true.
                mConnectState = SdkStoreConnectionState.SYNCABLE
            }

            if (mNeedToPermissionKeySet != null) { // Case : Has a requested permission.
                if (mIsShowRequest) {
                    requestPermission(mWeakActivity.get()!!, mNeedToPermissionKeySet!!)
                } else {
                    if (hasPermission(mNeedToPermissionKeySet!!)) {
                        if (mWeakListener.get() != null) {
                            mWeakListener.get()!!.onResult(true, true)
                        }
                        mNeedToPermissionKeySet = null
                    } else {
                        requestPermission(mWeakActivity.get()!!, mNeedToPermissionKeySet!!)
                    }
                }
            }
        }

        override fun onConnectionFailed(error: HealthConnectionErrorResult) {
            LOG.d(TAG, "Health data service is not available.")
            mConnectState = SdkStoreConnectionState.DISCONNECT
            mConnError = error
            if (mNeedToPermissionKeySet != null) {
                val activity = mWeakActivity.get()
                if (activity != null) {
                    showConnectionFailureDialog(mConnError!!, activity)
                }
                mNeedToPermissionKeySet = null
            }
        }

        override fun onDisconnected() {
            mConnectState = SdkStoreConnectionState.DISCONNECT
            LOG.d(TAG, "Health data service is disconnected.")
            if (mNeedToPermissionKeySet != null) {
                val activity = mWeakActivity.get()
                if (activity != null) {
                    showConnectionFailureDialog(mConnError!!, activity)
                }
                mNeedToPermissionKeySet = null
            }
        }
    }

    //get,set method
    fun setMaxSendingCount(max : Int) {
        MAX_SENDING_COUNT = max
    }
    // end get/set


    /**
     * listener for requestPermissionForSdkStore result
     *
     */
    interface SyncResultListener {
        /**
         * @param hasDefaultPermission if true, has default permission (profile)
         * @param hasAllPermissions if false, shows the proper message to user and retry it.
         */
        fun onResult(hasAllPermissions:Boolean, hasDefaultPermission : Boolean)
    }

    fun getProfile() : HealthUserProfile? {

        if (mConnectState != SdkStoreConnectionState.CONNECTED
                && mConnectState != SdkStoreConnectionState.SYNCABLE) {
            LOG.e(TAG, "Not initialize service connection : $mConnectState")
            return null
        }

        if (!isUsable()) {
            return null
        }

        val keySet = HashSet<HealthPermissionManager.PermissionKey>()
        keySet.add(HealthPermissionManager.PermissionKey(HealthConstants.USER_PROFILE_DATA_TYPE,
                HealthPermissionManager.PermissionType.READ))

        if (hasPermission(keySet)) {
            val userProfile = HealthUserProfile.getProfile(mStore)
            return userProfile
        } else {
            return null
        }
    }

    /**
     * shows permission dialog of Samsung health sdk for getting the data permission.
     *
     * Not thread safe method, only call once on main thread at specific activity
     */
    fun showPermissionForSdkStore(activity: FragmentActivity,
                                     permissionKeySet : Set<HealthPermissionManager.PermissionKey>,
                                     resultListener: SyncResultListener) {

        mWeakListener = WeakReference<SyncResultListener>(resultListener)
        mWeakActivity = WeakReference(activity)

        LOG.d(TAG, "Service Connecting state : $mConnectState")

        when (mConnectState) {
            SdkStoreConnectionState.CONNECTING -> {
                mIsShowRequest = true
                mNeedToPermissionKeySet = permissionKeySet
            }
            SdkStoreConnectionState.CONNECTED -> {
                requestPermission(activity, permissionKeySet)
            }
            SdkStoreConnectionState.SYNCABLE -> {
                requestPermission(activity, permissionKeySet)
            }
            SdkStoreConnectionState.DISCONNECT -> {
                if (mConnError == null) {
                    mIsShowRequest = true
                    requestConnectService(permissionKeySet)
                } else {
                    showConnectionFailureDialog(mConnError, activity)
                }
            }
        }
    }

    /**
     * shows permission dialog of Samsung health sdk for getting the data permission.
     *
     * Not thread safe method, only call once on main thread at specific activity
     */
    fun showPermissionForSdkStore(activity: FragmentActivity,
                                  resultListener: SyncResultListener) {
        val keyList = getPermissionKeys()
        showPermissionForSdkStore(activity, keyList, resultListener)
    }


    /**
     * shows permission dialog of Samsung health sdk for getting the data permission.
     *
     * Not thread safe method, only call once on main thread at specific activity
     */
    fun requestPermissionForSdkStore(activity: FragmentActivity,
                                     resultListener: SyncResultListener) {
        val keyList = getPermissionKeys()
        requestPermissionForSdkStore(activity, keyList, resultListener)
    }

    /**
     * shows permission dialog of Samsung health sdk for getting the data permission.
     *
     * Not thread safe method, only call once on main thread at specific activity
     */
    fun requestPermissionForSdkStore(activity: FragmentActivity,
                                     permissionKeySet : Set<HealthPermissionManager.PermissionKey>,
                                     resultListener: SyncResultListener) {

        mWeakListener = WeakReference<SyncResultListener>(resultListener)
        mWeakActivity = WeakReference(activity)

        LOG.d(TAG, "Service Connecting state : $mConnectState")

        when (mConnectState) {
            SdkStoreConnectionState.CONNECTING -> {
                mNeedToPermissionKeySet = permissionKeySet
            }
            SdkStoreConnectionState.CONNECTED -> {
                requestPermission(activity, permissionKeySet)
            }
            SdkStoreConnectionState.SYNCABLE -> {
                if (hasPermission(permissionKeySet)) {
                    resultListener.onResult(true, hasDefaultPermissions())
                } else {
                    requestPermission(activity, permissionKeySet)
                }
            }
            SdkStoreConnectionState.DISCONNECT -> {
                if (mConnError == null) {
                    requestConnectService(permissionKeySet)
                } else {
                    showConnectionFailureDialog(mConnError, activity)
                }
            }
        }
    }

    private fun getPermissionKeys() :  HashSet<HealthPermissionManager.PermissionKey> {

        val keyList = HashSet<HealthPermissionManager.PermissionKey>()

        val healthSdkHelpers = ControlManager.getInstance().healthSdkHelpers
        for (healthSdkHelper in healthSdkHelpers) {
            keyList.addAll(healthSdkHelper.getSdkPermission())
        }

        val defaultPermissionKey = getDefaultPermissionKey()
        if (defaultPermissionKey != null) {
            keyList.add(defaultPermissionKey)
        }

        LOG.d(TAG, "Requested keyList : $keyList")

        return keyList
    }

    fun startSyncToHealthSdkStore( delay : Long = 0 ): Boolean {

        if (!isUsable()) {
            return false
        }

        if (mSycing) {
            LOG.e(TAG, "Syncing now")
            return false
        }

        mSycing = true
        mHandler.postDelayed( {
            // sync new data
            for (sdkHelper in mSdkHelperList!!) {
                if (hasPermission(sdkHelper.getSdkPermission())) {
                    syncDataToSamsungDataStore(sdkHelper)
                    // sync modified data to the health data store
                    // case : If the error was occurred and not synchronized in the past.
                    syncUpdatedSyncedData(sdkHelper)
                    syncDeletedSyncedData(sdkHelper)
                }
            }

            mSycing = false

        }, delay)

        return true
    }


    private fun syncDataToSamsungDataStore(sdkHelper : HealthSdkHelperInterface) {

        var lastSyncedId = sdkHelper.getLastSyncedId()
        var totalCount = sdkHelper.getSyncableDataCount(lastSyncedId)
        if (totalCount <= 0 ) {
            LOG.d(TAG, "No new data")
            return
        }
        LOG.d(TAG, "TotalCount : $totalCount")

        var bSuccess = false
        var loopCount = totalCount/MAX_SENDING_COUNT
        for (count in 0..loopCount) {
            LOG.d(TAG, "$count loop ")
            var healthSyncDataList = sdkHelper.makeHealthSyncData(lastSyncedId, MAX_SENDING_COUNT)

            lastSyncedId = sendDataToSamsungDataStore(sdkHelper, healthSyncDataList)
            if(-1L == lastSyncedId) {
                break
            }

            LOG.d(TAG, "Update lastSyncedId : " + lastSyncedId)
            sdkHelper.setLastSyncedId(lastSyncedId)
            bSuccess = true
        }

        if (bSuccess) {
            if (sdkHelper.getSdkDataType().equals(HealthConstants.BloodPressure.HEALTH_DATA_TYPE)) {
                SHealthMonitorLogManager.sendLog("SamsungHealthDataSyncManager", SHealthMonitorLogManager.BP_BACKED_UP_IN_SAMSUNG_HEALTH)
            }
        }
    }

    private fun sendDataToSamsungDataStore(sdkHelper : HealthSdkHelperInterface,
                                           healthSyncDataList: List<HealthSyncData>) : Long {

        val drMgr = DataRoomManager.getInstance()

        var results : List<HealthSyncData>

        LOG.d(TAG, "Size is ${healthSyncDataList.size}")
        // except duplicated data
        val alreadyInsertedData = drMgr.getExistUuidInSyncData(healthSyncDataList)
        if (alreadyInsertedData != null && !alreadyInsertedData.isEmpty()) {

            var maxRowId = -1L
            results = ArrayList<HealthSyncData>()

            for (healthSyncData in healthSyncDataList) {
                if (!alreadyInsertedData.contains(healthSyncData.uuid)) {
                    results.add(healthSyncData)
                }
                maxRowId = Math.max(maxRowId, healthSyncData.id)
            }

            LOG.d(TAG, "Remove sent data, final size is ${results.size}")
            if (results.isEmpty()) {
                LOG.d(TAG, "data is empty")
                return maxRowId
            }

        } else {
            results = healthSyncDataList
        }

        if (insertDataToSdk(sdkHelper.getSdkDataType(), results)) {
            LOG.d(TAG, "insertDataToSdk() is success")
            return insertToSyncDb(sdkHelper, results)
        } else {
            LOG.d(TAG, "insertDataToSdk() is failed")
            return -1
        }
    }

    /**
     * insert the health data to SDK data store.
     */
    private fun insertDataToSdk(sdkDataType : String, dataList:List<HealthSyncData>):Boolean {

        if (mConnectState != SdkStoreConnectionState.SYNCABLE) {
            LOG.e(TAG, "Not initialize service connection : $mConnectState")
            return false
        }

        if (dataList.isEmpty()) {
            LOG.e(TAG, "Empty healthData list")
            return false
        }

        val resolver = HealthDataResolver(mStore, null)
        val request = HealthDataResolver.InsertRequest.Builder()
                .setDataType(sdkDataType)
                .build()

        for (data in dataList) {
            request.addHealthData(data.healthData)
        }

        try {
            LOG.i(TAG, "sending bp health data : ${dataList.size}")
            val result = resolver.insert(request).await()
            if (result.status == HealthResultHolder.BaseResult.STATUS_SUCCESSFUL) {
                LOG.d(TAG, "sending health data for inserting is success." + result.status)
            } else {
                LOG.d(TAG, "sending health data fails. : ${result.status}" )
                return false
            }
        } catch (e:Exception) {
            LOG.d(TAG, "sending health data fails. " + e.toString())
            return false
        }

        return true
    }

    /**
     * insert the synced data to synced database : HealthSdkSyncData table
     */
    private fun insertToSyncDb(sdkHelper : HealthSdkHelperInterface,
                               syncDataList: List<HealthSyncData>) : Long {

        LOG.i(TAG, "insertToSyncDb() is called")

        if (syncDataList.isEmpty()) {
            LOG.e(TAG, "Empty healthData list")
            return -1
        }

        var maxRowId = -1L

        var syncedDataList = ArrayList<HealthSdkSyncedData>()
        for (healthData in syncDataList) {
            syncedDataList.add(HealthSdkSyncedData(
                                    healthData.uuid, healthData.samsungDataStoreUuid,
                                    sdkHelper.getSdkDataType()))
            maxRowId = Math.max(maxRowId, healthData.id)
        }
        LOG.i(TAG, "Data size : " + syncedDataList.size)

        try {
            val results = DataRoomManager.getInstance().insertHealthSyncData(syncedDataList)
            LOG.i(TAG, "inserted datas " + results)
            return maxRowId
        } catch (e :java.lang.Exception) {
            LOG.e(TAG, "insertBpSyncedData : Exception : " + e.toString())
            return -1
        }
    }


    // **********************//
    // For Delete Logic      //
    // **********************//
    fun deleteSyncedData(dataUuid:String) : Boolean {

        if (!isUsable()) {
            return false
        }

        mHandler.post {
            val drMgr = DataRoomManager.getInstance()
            val healthSyncData = drMgr.setDeleted(dataUuid)

            if (healthSyncData != null) {
                if (deleteSdkSyncedData(healthSyncData.sdkDataType!!,
                                        healthSyncData.samsungHealthDataUuid!!)) {
                    drMgr.deleteSyncedData(healthSyncData)
                    LOG.e(TAG, "deleteSyncedData is success ${healthSyncData.dataUuid}")
                } else {
                    LOG.e(TAG, "deleteSdkSyncedData is failed")
                }
            }

        }
        return true
    }

    /**
     * Update deleted synced data of the samsung health data store.
     * The deleted data was checked the deleted field in syncedDb.
     * Don't call it on main thread
     */
    private fun syncDeletedSyncedData(sdkHelper : HealthSdkHelperInterface) {
        val drMgr = DataRoomManager.getInstance()
        val deletedList = drMgr.getDeletedSyncedData(sdkHelper.getSdkDataType())

        if (deletedList == null || deletedList.isEmpty()) {
            LOG.d(TAG, "deletedList is empty")
            return
        }

        for(deletedData in deletedList) {
            deleteSdkSyncedData(deletedData.sdkDataType!!, deletedData.samsungHealthDataUuid!!)
        }
    }


    private fun deleteSdkSyncedData(sdkDataType : String, samsungHealthDataUuid:String):Boolean {

        val resolver = HealthDataResolver(mStore, null)

        val filter = HealthDataResolver.Filter.eq(SDK_UUID, samsungHealthDataUuid)
        val deleteRequest = HealthDataResolver.DeleteRequest.Builder()
                .setDataType(sdkDataType)
                .setFilter(filter)
                .build()

        try {
            // Checks the result immediately
            val result = resolver.delete(deleteRequest).await()
            LOG.d(TAG, "Deleting health data success. : " + result.status)

        } catch (e:Exception) {
            LOG.d(TAG, "Deleting health data fails.$e")
            return false
        }

        return true
    }
    // **********************//
    // END For Delete Logic      //
    // **********************//

    // **********************//
    // For Testing Logic     //
    // **********************//

    @FunctionalInterface
    public interface DataResultListener {
        public abstract fun OnResults(dataList : List<HealthSyncData>? )
    }

    fun getLatestSyncedData(listener : DataResultListener) : Boolean {

        if (mConnectState != SdkStoreConnectionState.SYNCABLE) {
            LOG.e(TAG, "Not initialize service connection : $mConnectState")
            return false
        }

        mHandler.post {
            var sdkHelper = this.mSdkHelperList.get(0)

            var lastSyncedId = sdkHelper.getLastSyncedId()
            LOG.d(TAG, "Bp lastSyncedId : $lastSyncedId")

            val lastSyncedDataList = sdkHelper.makeHealthSyncData(lastSyncedId - 1, 1)

            runOnUiThread {
                listener.OnResults(lastSyncedDataList)
            }

        }

        return true
    }
    // *************************//
    // END : For Testing Logic  //
    // *************************//

    // **********************//
    // For Update Logic      //
    // **********************//

    fun updateSyncedData(dataUuid:String, comment : String) : Boolean {

        if (!isUsable()) {
            return false
        }

        mHandler.post {
            val drMgr = DataRoomManager.getInstance()
            val healthSdkSyncedData = drMgr.setUpdated(dataUuid)

            if (healthSdkSyncedData != null) {
                val sdkHelper = getSdkHelper(healthSdkSyncedData.sdkDataType!!)
                if (sdkHelper != null) {
                    if (updateSdkSyncedData(sdkHelper, healthSdkSyncedData, comment)) {
                        drMgr.unSetUpdated(dataUuid)
                        LOG.e(TAG, "updateSyncedData is success ${healthSdkSyncedData.dataUuid}")
                    } else {
                        LOG.e(TAG, "updateSyncedData is failed")
                    }
                } else  {
                    LOG.e(TAG, "sdkHelper is not found ${healthSdkSyncedData.sdkDataType}")
                }
            } else {
                LOG.e(TAG, "updateSyncedData is not found ${dataUuid}")
            }
        }
        return true
    }

    /**
     * Update synced data of the samsung health data store.
     * The updated data was checked the updated field in syncedDb.
     * Don't call it on main thread
     */
    private fun syncUpdatedSyncedData(sdkHelper : HealthSdkHelperInterface) {
        val drMgr = DataRoomManager.getInstance()
        val updatedList = drMgr.getUpdatedSyncedData(sdkHelper.getSdkDataType())

        if (updatedList == null || updatedList.isEmpty()) {
            LOG.d(TAG, "updatedList is empty")
            return
        }

        for(updatedData in updatedList) {
            updateSyncedData(sdkHelper, updatedData)
        }
    }

    private fun updateSyncedData(sdkHelper : HealthSdkHelperInterface,
                                 syncedData: HealthSdkSyncedData) : Boolean {
        if (mConnectState != SdkStoreConnectionState.SYNCABLE) {
            LOG.e(TAG, "Not initialize service connection : $mConnectState")
            return false
        }

        mHandler.post {
            val drMgr = DataRoomManager.getInstance()
            if (updateSdkSyncedData(sdkHelper, syncedData)) {
                drMgr.unSetUpdated(syncedData.dataUuid)
                LOG.e(TAG, "updateSyncedData is success ${syncedData.dataUuid}")
            } else {
                LOG.e(TAG, "updateSyncedData is failed")
            }
        }
        return true
    }

    /**
     * It must use samsungDataStoreUuid of inputted healthSdkSyncedData for updating
     * @param healthSdkSyncedData HealthSdkSyncedData for updating
     * @return Success
     */
    private fun updateSdkSyncedData(sdkHelper : HealthSdkHelperInterface,
                                    syncedData: HealthSdkSyncedData,
                                    comment : String? = null):Boolean {

        var healthSyncData = sdkHelper.makeHealthSyncData(syncedData.dataUuid!!)

        if (healthSyncData == null) {
            LOG.e(TAG, "healthSyncData is null")
            return false
        }

        //************************************************************************************//
        // Important : makeHealthSyncableData() return with new samsungHealthDataUuid,          **//
        // so it must be overridden using samsungHealthDataUuid of the healthSdkSyncedData  **//
        healthSyncData.samsungDataStoreUuid = syncedData.samsungHealthDataUuid!!
        //                                                                                    //
        //************************************************************************************//

        if (comment != null) {
            healthSyncData.healthData.putString(SDK_COMMENT, comment)
        }

        val resolver = HealthDataResolver(mStore, null)

        val filter = HealthDataResolver.Filter.eq(
                                                    SDK_UUID,
                                                    healthSyncData.samsungDataStoreUuid)
        val updateRequest = HealthDataResolver.UpdateRequest.Builder()
                .setDataType(syncedData.sdkDataType)
                .setFilter(filter)
                .setHealthData(healthSyncData.healthData)
                .build()
        try {
            // Checks the result immediately
            val result = resolver.update(updateRequest).await()
            LOG.d(TAG, "Updating health data success. : ${result.status} , ${healthSyncData.samsungDataStoreUuid}")
        } catch (e:Exception) {
            LOG.e(TAG, "Updating health data fails.$e")
            return false
        }

        return true
    }
    // **********************//
    // End for Update Logic  //
    // **********************//

    // *****************************************//
    // Connection codes for Samsung Data Store  //
    // *****************************************//
    private fun requestConnectService(permissionKeySet : Set<HealthPermissionManager.PermissionKey>? = null) {
        LOG.i(TAG, "request connection service  : with permission (${mNeedToPermissionKeySet != null})")
        mNeedToPermissionKeySet = permissionKeySet
        mConnectState = SdkStoreConnectionState.CONNECTING
        mStore.connectService()
    }

    fun isSyncable() : Boolean {
        if (mAllPermissionKeySet.size <= 0) {
            return false
        }
        val pmsManager = HealthPermissionManager(mStore)
        val resultMap = pmsManager.isPermissionAcquired(mAllPermissionKeySet)
        val defaultKey = getDefaultPermissionKey()
        if (defaultKey != null) {
            resultMap.remove(defaultKey)
        }
        return resultMap.containsValue(java.lang.Boolean.TRUE)
    }

    fun hasPermission(keySet:Set<HealthPermissionManager.PermissionKey>):Boolean {
        val pmsManager = HealthPermissionManager(mStore)
        val resultMap = pmsManager.isPermissionAcquired(keySet)
        if (resultMap.containsValue(java.lang.Boolean.FALSE)) {
            return false
        } else {
            return true
        }
    }

    private fun requestPermission(activity: Activity, keySet:Set<HealthPermissionManager.PermissionKey>) {
        mNeedToPermissionKeySet = null
        val pmsManager = HealthPermissionManager(mStore)
        try {
            pmsManager.requestPermissions(keySet, activity).setResultListener { result ->
                LOG.d(TAG, "Permission callback is received. : $mConnectState")
                val resultMap = result.resultMap

                if (resultMap.containsValue(java.lang.Boolean.FALSE)) {
                    if (mWeakListener.get() != null) {
                        if (isSyncable()) {
                            mConnectState = SdkStoreConnectionState.SYNCABLE
                        } else {
                            mConnectState = SdkStoreConnectionState.CONNECTED
                        }
                        mWeakListener.get()!!.onResult(false, hasDefaultPermissions())
                    }
                    LOG.d(TAG, "Permission callback is failed. $mConnectState")
                } else {
                    if (mWeakListener.get() != null) {
                        mConnectState = SdkStoreConnectionState.SYNCABLE
                        mWeakListener.get()!!.onResult(true, hasDefaultPermissions())
                    }
                    LOG.d(TAG, "Permission is $mConnectState")
                }
            }
        } catch (e : IllegalStateException ) {
            LOG.e(TAG, "IllegalStateException $e")
            if (mWeakListener.get() != null) {
                mConnectState = SdkStoreConnectionState.DISCONNECT
                mWeakListener.get()!!.onResult(false, false)
            }
        }

    }

    private fun showConnectionFailureDialog(error: HealthConnectionErrorResult?, activity: FragmentActivity) {

        val fragment = activity.supportFragmentManager.findFragmentByTag(ERROR_POPUP_TAG)
        if (fragment != null && fragment.isVisible) {
            LOG.d(TAG, "showConnectionFailureDialog is already, visible")
            return
        }

        var buttonType = SAlertDlgFragment.TYPE_P_BUTTON

        mConnError = error
        var message = activity.getString(R.string.samsung_health_sdk_not_available)

        if (mConnError != null && mConnError!!.hasResolution()) {
            when (mConnError!!.errorCode) {
                HealthConnectionErrorResult.PLATFORM_NOT_INSTALLED -> message = activity.getString(R.string.samsung_health_sdk_not_install)
                HealthConnectionErrorResult.OLD_VERSION_PLATFORM -> message = activity.getString(R.string.samsung_health_sdk_not_upgrade)
                HealthConnectionErrorResult.PLATFORM_DISABLED -> message = activity.getString(R.string.samsung_health_sdk_not_enabled)
                HealthConnectionErrorResult.USER_AGREEMENT_NEEDED -> message = activity.getString(R.string.samsung_health_sdk_not_agreed)
                else -> message = activity.getString(R.string.samsung_health_sdk_error)
            }
        }

        if (mConnError != null && mConnError!!.hasResolution()) {
            buttonType = SAlertDlgFragment.TYPE_P_N_BUTTON
        }

        val builder = SAlertDlgFragment.Builder("", buttonType)
        builder.setHideTitle(true)

        builder.setContentText(message)

        builder.setPositiveButtonClickListener(R.string.baseui_button_ok) {
            if (mConnError != null && mConnError!!.hasResolution()) {
                if (mWeakActivity.get() != null) {
                    mConnError!!.resolve(mWeakActivity.get())
                }
            }
        }
        builder.setPositiveButtonTextColor(activity.resources.getColor(R.color.baseui_control_activated_color, null))

        if (buttonType == SAlertDlgFragment.TYPE_P_N_BUTTON) {
            builder.setNegativeButtonClickListener(R.string.baseui_button_cancel) {
                mConnError = null
            }
            builder.setNegativeButtonTextColor(activity.resources.getColor(R.color.baseui_control_activated_color, null))
        }

        builder.setDialogDismissListener {
            LOG.d(TAG, "Health data service showConnectionFailureDialog onDismiss")
            mConnError = null
        }

        try {
            builder.build().show(activity.supportFragmentManager, ERROR_POPUP_TAG)
        } catch (e: Exception) {
            LOG.d(TAG, "showConnectionFailureDialog(), error in confirm dialog build")
        }
    }

    private fun isUsable() : Boolean {

        if (mConnectState == SdkStoreConnectionState.SYNCABLE) {
            return true
        } else {
            LOG.e(TAG, "Not usable service, Syncable state : $mConnectState ")
            return false
        }
    }

    // *********************************************//
    // End Connection codes for Samsung Data Store  //
    // *********************************************//

}