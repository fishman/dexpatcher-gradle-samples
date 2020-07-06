package com.samsung.android.shealthmonitor.dataroom.data

import android.arch.persistence.room.*
import android.support.annotation.NonNull
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants

import java.io.Serializable

@Entity(tableName = DataRoomConstants.HealthSdkSynced.TABLE_NAME,
        indices = [Index(value = [DataRoomConstants.HealthSdkSynced.DATA_UUID], unique = true)],
        primaryKeys = [DataRoomConstants.HealthSdkSynced.DATA_UUID])
class HealthSdkSyncedData : Serializable {

    @NonNull
    @ColumnInfo(name = DataRoomConstants.HealthSdkSynced.DATA_UUID)
    var dataUuid: String? = null

    @NonNull
    @ColumnInfo(name = DataRoomConstants.HealthSdkSynced.SAMSUNG_HEALTH_DATA_UUID)
    var samsungHealthDataUuid: String? = null

    @NonNull
    @ColumnInfo(name = DataRoomConstants.HealthSdkSynced.SDK_DATA_TYPE)
    var sdkDataType: String? = null

    @ColumnInfo(name = DataRoomConstants.HealthSdkSynced.UPDATED)
    var updated: Int = 0

    @ColumnInfo(name = DataRoomConstants.HealthSdkSynced.DELETED)
    var deleted: Int = 0

    constructor() {
        this.dataUuid = ""
        this.samsungHealthDataUuid = ""
        this.sdkDataType = ""
        this.updated = 0
        this.deleted = 0
    }

    @Ignore
    constructor(@NonNull dataUuid: String, @NonNull samsungHealthDataUuid: String, @NonNull sdkDataType: String) {
        this.dataUuid = dataUuid
        this.samsungHealthDataUuid = samsungHealthDataUuid
        this.sdkDataType = sdkDataType
        this.updated = 0
        this.deleted = 0
    }

    override fun toString(): String {
        return "HealthSdkSyncData{" +
                ", dataUuid='" + dataUuid + '\''.toString() +
                ", samsungHealthDataUuid='" + samsungHealthDataUuid + '\''.toString() +
                ", sdkDataType='" + sdkDataType + '\''.toString() +
                ", updated=" + updated +
                ", deleted=" + deleted +
                '}'.toString()
    }
}
