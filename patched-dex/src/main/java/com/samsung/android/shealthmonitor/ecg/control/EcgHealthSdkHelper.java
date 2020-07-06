package com.samsung.android.shealthmonitor.ecg.control;

import com.samsung.android.sdk.healthdata.HealthConstants;
import com.samsung.android.sdk.healthdata.HealthData;
import com.samsung.android.sdk.healthdata.HealthPermissionManager;
import com.samsung.android.shealthmonitor.ecg.helper.EcgSharedPreferenceHelper;
import com.samsung.android.shealthmonitor.ecg.roomdata.data.EcgData;
import com.samsung.android.shealthmonitor.ecg.roomdata.manager.DataRoomEcgManager;
import com.samsung.android.shealthmonitor.data.HealthSdkHelperInterface;
import com.samsung.android.shealthmonitor.data.HealthSyncData;
import com.samsung.android.shealthmonitor.util.Utils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class EcgHealthSdkHelper implements HealthSdkHelperInterface {
    public String getDbDataType() {
        return "com.samsung.health.ecg";
    }

    public String getSdkDataType() {
        return HealthConstants.BloodPressure.HEALTH_DATA_TYPE;
    }

    public Set<HealthPermissionManager.PermissionKey> getSdkPermission() {
        return getSdkPermissionSet();
    }

    public static Set<HealthPermissionManager.PermissionKey> getSdkPermissionSet() {
        HashSet hashSet = new HashSet();
        hashSet.add(new HealthPermissionManager.PermissionKey(HealthConstants.BloodPressure.HEALTH_DATA_TYPE, HealthPermissionManager.PermissionType.WRITE));
        return hashSet;
    }

    public List<HealthSyncData> makeHealthSyncData(long j, int i) {
        ArrayList arrayList = new ArrayList();
        for (EcgData next : DataRoomEcgManager.getInstance().getEcgDataSync(j, i)) {
            HealthData makeBpHealthData = makeBpHealthData(next);
            arrayList.add(new HealthSyncData(next.getId(), next.getUuid(), makeBpHealthData.getUuid(), makeBpHealthData));
        }
        return arrayList;
    }

    public HealthSyncData makeHealthSyncData(String str) {
        EcgData bpDataSync = DataRoomEcgManager.getInstance().getEcgDataSync(str);
        HealthData makeBpHealthData = makeBpHealthData(bpDataSync);
        return new HealthSyncData(bpDataSync.getId(), bpDataSync.getUuid(), makeBpHealthData.getUuid(), makeBpHealthData);
    }

    private HealthData makeBpHealthData(EcgData ecgData) {
        HealthData healthData = new HealthData();
        healthData.setSourceDevice(Utils.getAppUUID());
        healthData.putFloat("systolic", (float) ecgData.getSystolic());
        healthData.putFloat("diastolic", (float) ecgData.getDiastole());
        // healthData.putInt(HealthConstants.Ecg.PULSE, ecgData.getHeartRate());
        // healthData.putFloat(HealthConstants.Ecg.MEAN, 0.0f);
        healthData.putLong("start_time", ecgData.getStartTime());
        healthData.putLong("time_offset", ecgData.getTimeOffset());
        return healthData;
    }

    public int getSyncableDataCount(long j) {
        return DataRoomEcgManager.getInstance().getEcgSyncableDataCount(j);
    }

    public void setLastSyncedId(long j) {
        EcgSharedPreferenceHelper.setLastSyncedIdForDataStore(j);
    }

    public long getLastSyncedId() {
        return EcgSharedPreferenceHelper.getLastSyncedIdForDataStore();
    }
}
