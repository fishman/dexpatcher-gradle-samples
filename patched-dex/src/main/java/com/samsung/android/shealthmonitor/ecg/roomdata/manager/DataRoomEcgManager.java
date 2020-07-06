package com.samsung.android.shealthmonitor.ecg.roomdata.manager;

import android.arch.lifecycle.LiveData;
import android.arch.persistence.db.SimpleSQLiteQuery;
import android.arch.persistence.db.SupportSQLiteQuery;
import android.arch.persistence.room.Room;
import android.content.Context;
import com.samsung.android.shealthmonitor.ecg.roomdata.data.EcgData;
import com.samsung.android.shealthmonitor.ecg.roomdata.data.EcgDataDao;
import com.samsung.android.shealthmonitor.ecg.roomdata.data.SHealthMonitorEcgDatabase;
import com.samsung.android.shealthmonitor.dataroom.data.DataUtil;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomResultListener;
import com.samsung.android.shealthmonitor.dataroom.manager.DataRoomManager;
import com.samsung.android.shealthmonitor.dataroom.manager.SamsungHealthDataSyncManager;
import com.samsung.android.shealthmonitor.dataroom.secureroom.SecureHelperFactory;
import com.samsung.android.shealthmonitor.dataroom.util.KeyUtil;
import com.samsung.android.shealthmonitor.helper.ContextHolder;
import com.samsung.android.shealthmonitor.util.LOG;
import com.samsung.android.shealthmonitor.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DataRoomEcgManager {
    private static final String TAG = "S HealthMonitor - DataRoomEcgManager";
    private static DataRoomEcgManager mInstance;
    private SHealthMonitorEcgDatabase mEcgDatabase;

    public static synchronized DataRoomEcgManager getInstance() {
        DataRoomEcgManager dataRoomEcgManager;
        synchronized (DataRoomEcgManager.class) {
            LOG.i(TAG, " [DataRoomEcgManager] getInstance start ");
            if (mInstance == null) {
                mInstance = new DataRoomEcgManager(ContextHolder.getContext());
            }
            LOG.i(TAG, " [DataRoomEcgManager] getInstance done! : " + mInstance);
            dataRoomEcgManager = mInstance;
        }
        return dataRoomEcgManager;
    }

    private DataRoomEcgManager(Context context) {
        LOG.i(TAG, " [DataRoomEcgManager] constructor ");
        this.mEcgDatabase = Room.databaseBuilder(context, SHealthMonitorEcgDatabase.class, "RoomSHealthMonitorEcg.db").openHelperFactory(new SecureHelperFactory(KeyUtil.getSecureKey())).fallbackToDestructiveMigration().build();
        DataRoomManager.getInstance().registerDatabase("com.samsung.health.ecg", this.mEcgDatabase);
    }

    public List<EcgData> getAllEcgDataSync() {
        return this.mEcgDatabase.ecgDataDao().getAllDataSync();
    }

    public LiveData<List<EcgData>> getAllEcgData() {
        return this.mEcgDatabase.ecgDataDao().getAllData();
    }

    public void getAllEcgData(DataRoomResultListener dataRoomResultListener) {
        DataUtil.doProcessListener(getAllEcgData(), dataRoomResultListener);
    }

    public List<EcgData> getEcgDataSync(long j, long j2) {
        return this.mEcgDatabase.ecgDataDao().getDataSync(j, j2);
    }

    public List<EcgData> getEcgDataSync(long j, long j2, String str, String str2) {
        return this.mEcgDatabase.ecgDataDao().getDataSync((SupportSQLiteQuery) new SimpleSQLiteQuery("SELECT * FROM EcgData where start_time >= " + j + " and start_time" + " < " + j2 + " order by " + str + " " + str2));
    }

    public LiveData<List<EcgData>> getEcgLatestData() {
        return this.mEcgDatabase.ecgDataDao().getLatestDataSync();
    }

    public LiveData<List<EcgData>> getEcgData(long j, long j2) {
        return this.mEcgDatabase.ecgDataDao().getData(j, j2);
    }

    public void getEcgData(long j, long j2, DataRoomResultListener dataRoomResultListener) {
        DataUtil.doProcessListener(getEcgData(j, j2), dataRoomResultListener);
    }

    public long insertEcgData(EcgData ecgData) {
        return this.mEcgDatabase.ecgDataDao().insert(ecgData);
    }

    public List<Long> insertEcgData(ArrayList<EcgData> arrayList) {
        return this.mEcgDatabase.ecgDataDao().insert((List<EcgData>) arrayList);
    }

    public int deleteEcgData(EcgData ecgData) {
        ((SamsungHealthDataSyncManager) SamsungHealthDataSyncManager.Companion.getInstance()).deleteSyncedData(ecgData.getUuid());
        return this.mEcgDatabase.ecgDataDao().delete(ecgData);
    }

    public int deleteEcgData(final ArrayList<EcgData> arrayList) {
        int delete = this.mEcgDatabase.ecgDataDao().delete((List<EcgData>) arrayList);
        Utils.runOnUiThread(new Runnable() {
            public void run() {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((SamsungHealthDataSyncManager) SamsungHealthDataSyncManager.Companion.getInstance()).deleteSyncedData(((EcgData) it.next()).getUuid());
                }
            }
        });
        return delete;
    }

    public int deleteEcgData(List<String> list) {
        return this.mEcgDatabase.ecgDataDao().deleteByUuid(list);
    }

    public long updateEcgData(EcgData ecgData) {
        ((SamsungHealthDataSyncManager) SamsungHealthDataSyncManager.Companion.getInstance()).updateSyncedData(ecgData.getUuid(), ecgData.getComment());
        return (long) this.mEcgDatabase.ecgDataDao().update(ecgData);
    }

    public EcgDataDao getEcgDataDao() {
        return this.mEcgDatabase.ecgDataDao();
    }

    public List<EcgData> getEcgDataSync(long j, int i) {
        return this.mEcgDatabase.ecgDataDao().getDataSync(j, i);
    }

    public EcgData getEcgDataSync(String str) {
        return this.mEcgDatabase.ecgDataDao().getDataSync(str);
    }

    public int getEcgSyncableDataCount(long j) {
        return this.mEcgDatabase.ecgDataDao().getDataCount(j);
    }
}
