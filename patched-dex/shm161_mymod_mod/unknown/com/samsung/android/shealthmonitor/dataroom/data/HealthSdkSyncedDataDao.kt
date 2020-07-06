package com.samsung.android.shealthmonitor.dataroom.data

import android.arch.persistence.room.*

import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants

@Dao
abstract class HealthSdkSyncedDataDao {

    @Query("SELECT * FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME} WHERE " +
            "${DataRoomConstants.HealthSdkSynced.DATA_UUID} = :dataUuid")
    abstract fun getData(dataUuid:String) : HealthSdkSyncedData

    @Query("SELECT * FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME} WHERE " +
            "${DataRoomConstants.HealthSdkSynced.DATA_UUID} IN(:dataUuids)")
    abstract fun getData(dataUuids:List<String>) : List<HealthSdkSyncedData>

    /**
     * Insert an List of objects in the database.
     *
     * @param obj the objects to be inserted.
     */
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    abstract fun insert(obj: List<HealthSdkSyncedData>) : List<Long>

    @Query("SELECT * FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME} WHERE " +
            "1 == ${DataRoomConstants.HealthSdkSynced.UPDATED} " +
            "AND ${DataRoomConstants.HealthSdkSynced.SDK_DATA_TYPE} = :sdkDataType" )
    abstract fun getUpdatedList (sdkDataType:String) : List<HealthSdkSyncedData>

    @Query("SELECT * FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME} WHERE " +
            "1 == ${DataRoomConstants.HealthSdkSynced.DELETED} " +
            "AND ${DataRoomConstants.HealthSdkSynced.SDK_DATA_TYPE} = :sdkDataType" )
    abstract fun getDeletedList (sdkDataType:String) : List<HealthSdkSyncedData>

    @Update(onConflict = OnConflictStrategy.REPLACE)
    abstract fun update(data: HealthSdkSyncedData): Int

    @Transaction
    open fun setUpdated(dataUuid: String): HealthSdkSyncedData? {

        var syncedData = getData(dataUuid)
        if (syncedData == null) {
            return null
        } else {
            syncedData.updated = 1
            update(syncedData)
            return syncedData
        }
    }

    @Transaction
    open fun unSetUpdated(dataUuid: String): HealthSdkSyncedData? {

        var syncedData = getData(dataUuid)
        if (syncedData == null) {
            return null
        } else {
            syncedData.updated = 0
            update(syncedData)
            return syncedData
        }
    }

    @Transaction
    open fun setDeleted(dataUuid: String): HealthSdkSyncedData? {

        var syncedData = getData(dataUuid)
        if (syncedData == null) {
            return null
        } else {
            syncedData.deleted = 1
            update(syncedData)
            return syncedData
        }
    }

    @Update(onConflict = OnConflictStrategy.REPLACE)
    abstract fun update(data: List<HealthSdkSyncedData>): Int

    @Delete
    abstract fun delete(obj: HealthSdkSyncedData)

    @Delete
    abstract fun delete(data: List<HealthSdkSyncedData>)

    @Query("SELECT * FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME}")
    abstract fun getAllData(): List<HealthSdkSyncedData>


    @Query("SELECT ${DataRoomConstants.HealthSdkSynced.DATA_UUID} FROM ${DataRoomConstants.HealthSdkSynced.TABLE_NAME} WHERE " +
            "${DataRoomConstants.HealthSdkSynced.DATA_UUID} IN(:uuids)")
    abstract fun hasDataUuid (uuids : List<String>) : List<String>

}
