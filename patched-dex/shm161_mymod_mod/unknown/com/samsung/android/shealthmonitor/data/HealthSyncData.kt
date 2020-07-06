package com.samsung.android.shealthmonitor.data

import com.samsung.android.sdk.healthdata.HealthData

open class HealthSyncData(id : Long, uuid: String, samsungDataStoreUuid: String, healthData : HealthData) {
    var id = id
    var uuid = uuid
    var samsungDataStoreUuid = samsungDataStoreUuid
    var healthData = healthData
}