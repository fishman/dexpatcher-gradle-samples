package com.samsung.android.shealthmonitor.ecg.roomdata.data;

import android.arch.lifecycle.LiveData;
import android.arch.persistence.db.SupportSQLiteQuery;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomDaoInterface;
import com.samsung.android.shealthmonitor.manager.SHealthMonitorLogManager;
import java.util.ArrayList;
import java.util.List;

public abstract class EcgDataDao implements DataRoomDaoInterface<EcgData> {
    public abstract int delete(EcgData bloodPressureData);

    public abstract int delete(List<EcgData> list);

    public abstract int deleteByUuid(List<String> list);

    public abstract LiveData<List<EcgData>> getAllData();

    public abstract List<EcgData> getAllDataSync();

    public abstract LiveData<List<EcgData>> getData(long j, long j2);

    public abstract LiveData<List<EcgData>> getData(List<String> list);

    public abstract int getDataCount(long j);

    public abstract EcgData getDataSync(String str);

    public abstract List<EcgData> getDataSync(long j, int i);

    public abstract List<EcgData> getDataSync(long j, long j2);

    public abstract List<EcgData> getDataSync(SupportSQLiteQuery supportSQLiteQuery);

    public abstract List<EcgData> getDataSync(List<String> list);

    public abstract LiveData<List<EcgData>> getLatestDataSync();

    public abstract long insert(EcgData bloodPressureData);

    public abstract int update(EcgData bloodPressureData);

    public abstract int update(List<EcgData> list);

    public List<Long> insert(List<EcgData> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Long valueOf = Long.valueOf(insert(list.get(i)));
            if (valueOf.longValue() < 0) {
                arrayList.add(i, 0L);
            } else {
                SHealthMonitorLogManager.sendLog("EcgData", SHealthMonitorLogManager.BP_DONE_ON_DEMAND_MEASUREMENT);
                arrayList.add(i, valueOf);
            }
        }
        return arrayList;
    }
}
