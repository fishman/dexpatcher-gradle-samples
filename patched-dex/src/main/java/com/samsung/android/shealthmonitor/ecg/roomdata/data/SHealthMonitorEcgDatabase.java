package com.samsung.android.shealthmonitor.ecg.roomdata.data;

import android.arch.lifecycle.LiveData;
import android.arch.persistence.room.RoomDatabase;
import com.samsung.android.shealthmonitor.dataroom.data.DataUtil;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomDaoInterface;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomInterface;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomResultListener;
import com.samsung.android.shealthmonitor.util.LOG;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;

public abstract class SHealthMonitorEcgDatabase extends RoomDatabase implements DataRoomInterface {
    private static final String TAG = "S HealthMonitor - DataRoomEcgManager";
    private HashMap<String, DataRoomDaoInterface> mDaoMap = new HashMap<>();

    public abstract EcgDataDao ecgDataDao();

    public SHealthMonitorEcgDatabase() {
        LOG.i(TAG, " [SHealthMonitorEcgDatabase] constructor ");
        this.mDaoMap.put("com.samsung.health.ecg", ecgDataDao());
    }

    public List<Long> insert(String str, JSONArray jSONArray) {
        LOG.e(TAG, " [insertData] type : " + str + " obj = " + jSONArray.toString());
        if (str.equalsIgnoreCase("com.samsung.health.ecg")) {
            // return ecgDataDao().insert((List<EcgData>) DataUtil.makeObject(jSONArray, EcgData.class));
			return null;
        }
		return null;
    }

    public List<?> getAllDataSync(String str) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getAllDataSync();
        }
        return null;
    }

    public LiveData<List<?>> getAllData(String str) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getAllData();
        }
        return null;
    }

    public void getAllData(String str, DataRoomResultListener dataRoomResultListener) {
        if (str.equalsIgnoreCase("com.samsung.health.ecg")) {
            DataUtil.doProcessListener(ecgDataDao().getAllData(), dataRoomResultListener);
        }
    }

    public List<?> getDataSync(String str, long j, long j2) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getDataSync(j, j2);
        }
        return null;
    }

    public LiveData<List<?>> getData(String str, long j, long j2) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getData(j, j2);
        }
        return null;
    }

    public void getData(String str, long j, long j2, DataRoomResultListener dataRoomResultListener) {
        if (str.equalsIgnoreCase("com.samsung.health.ecg")) {
            DataUtil.doProcessListener(ecgDataDao().getData(j, j2), dataRoomResultListener);
        }
    }

    public List<?> getDataSync(String str, List<String> list) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getDataSync(list);
        }
        return null;
    }

    public LiveData<List<?>> getData(String str, List<String> list) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.getData(list);
        }
        return null;
    }

    public void getData(String str, List<String> list, DataRoomResultListener dataRoomResultListener) {
        if (str.equalsIgnoreCase("com.samsung.health.ecg")) {
            DataUtil.doProcessListener(ecgDataDao().getData(list), dataRoomResultListener);
        }
    }

    public int delete(String str, List<String> list) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.deleteByUuid(list);
        }
        return 0;
    }

    public <T> int update(String str, T t) {
        if (str.equalsIgnoreCase("com.samsung.health.ecg")) {
            return ecgDataDao().update((EcgData) t);
        }
        return -1;
    }

    public <T> int update(String str, List<T> list) {
        DataRoomDaoInterface dataRoomDaoInterface = this.mDaoMap.get(str);
        if (dataRoomDaoInterface != null) {
            return dataRoomDaoInterface.update(list);
        }
        return -1;
    }
}
