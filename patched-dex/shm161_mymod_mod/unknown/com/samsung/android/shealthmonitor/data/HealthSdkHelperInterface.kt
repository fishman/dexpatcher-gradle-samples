package com.samsung.android.shealthmonitor.data

import com.samsung.android.sdk.healthdata.HealthPermissionManager


interface HealthSdkHelperInterface {

    fun getDbDataType() : String

    fun getSdkDataType() : String

    fun getSdkPermission(): Set<HealthPermissionManager.PermissionKey>

    fun makeHealthSyncData(lastSyncedId: Long, limit: Int): List<HealthSyncData>

    fun makeHealthSyncData(uuid: String): HealthSyncData

    fun getSyncableDataCount(lastSyncedId: Long): Int

    fun setLastSyncedId(lastSyncedId: Long)

    fun getLastSyncedId(): Long
}