package com.samsung.android.shealthmonitor.ecg.roomdata.data;

import android.arch.lifecycle.ComputableLiveData;
import android.arch.lifecycle.LiveData;
import android.arch.persistence.db.SupportSQLiteQuery;
import android.arch.persistence.db.SupportSQLiteStatement;
import android.arch.persistence.room.EntityDeletionOrUpdateAdapter;
import android.arch.persistence.room.EntityInsertionAdapter;
import android.arch.persistence.room.InvalidationTracker;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.RoomSQLiteQuery;
import android.arch.persistence.room.util.StringUtil;
import android.database.Cursor;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class EcgDataDao_Impl extends EcgDataDao {
    /* access modifiers changed from: private */
    public final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter __deletionAdapterOfEcgData;
    private final EntityInsertionAdapter __insertionAdapterOfEcgData;
    private final EntityDeletionOrUpdateAdapter __updateAdapterOfEcgData;

    public EcgDataDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfEcgData = new EntityInsertionAdapter<EcgData>(roomDatabase) {
            public String createQuery() {
                return "INSERT OR IGNORE INTO `EcgData`(`systolic`,`diastolic`,`hr`,`mId`,`datauuid`,`deviceuuid`,`pkg_name`,`create_time`,`start_time`,`update_time`,`time_offset`,`comment`) VALUES (?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)";
            }

            public void bind(SupportSQLiteStatement supportSQLiteStatement, EcgData bloodPressureData) {
                supportSQLiteStatement.bindLong(1, (long) bloodPressureData.getSystolic());
                supportSQLiteStatement.bindLong(2, (long) bloodPressureData.getDiastole());
                supportSQLiteStatement.bindLong(3, (long) bloodPressureData.getHeartRate());
                supportSQLiteStatement.bindLong(5, bloodPressureData.getId());
                if (bloodPressureData.getUuid() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, bloodPressureData.getUuid());
                }
                if (bloodPressureData.getDeviceUuid() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, bloodPressureData.getDeviceUuid());
                }
                if (bloodPressureData.getPkgName() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, bloodPressureData.getPkgName());
                }
                supportSQLiteStatement.bindLong(9, bloodPressureData.getCreateTime());
                supportSQLiteStatement.bindLong(10, bloodPressureData.getStartTime());
                supportSQLiteStatement.bindLong(11, bloodPressureData.getUpdateTime());
                supportSQLiteStatement.bindLong(12, bloodPressureData.getTimeOffset());
                if (bloodPressureData.getComment() == null) {
                    supportSQLiteStatement.bindNull(13);
                } else {
                    supportSQLiteStatement.bindString(13, bloodPressureData.getComment());
                }
            }
        };
        this.__deletionAdapterOfEcgData = new EntityDeletionOrUpdateAdapter<EcgData>(roomDatabase) {
            public String createQuery() {
                return "DELETE FROM `EcgData` WHERE `mId` = ?";
            }

            public void bind(SupportSQLiteStatement supportSQLiteStatement, EcgData bloodPressureData) {
                supportSQLiteStatement.bindLong(1, bloodPressureData.getId());
            }
        };
        this.__updateAdapterOfEcgData = new EntityDeletionOrUpdateAdapter<EcgData>(roomDatabase) {
            public String createQuery() {
                return "UPDATE OR REPLACE `EcgData` SET `systolic` = ?,`diastolic` = ?,`hr` = ?,`mId` = ?,`datauuid` = ?,`deviceuuid` = ?,`pkg_name` = ?,`create_time` = ?,`start_time` = ?,`update_time` = ?,`time_offset` = ?,`comment` = ? WHERE `mId` = ?";
            }

            public void bind(SupportSQLiteStatement supportSQLiteStatement, EcgData bloodPressureData) {
                supportSQLiteStatement.bindLong(1, (long) bloodPressureData.getSystolic());
                supportSQLiteStatement.bindLong(2, (long) bloodPressureData.getDiastole());
                supportSQLiteStatement.bindLong(3, (long) bloodPressureData.getHeartRate());
                supportSQLiteStatement.bindLong(5, bloodPressureData.getId());
                if (bloodPressureData.getUuid() == null) {
                    supportSQLiteStatement.bindNull(6);
                } else {
                    supportSQLiteStatement.bindString(6, bloodPressureData.getUuid());
                }
                if (bloodPressureData.getDeviceUuid() == null) {
                    supportSQLiteStatement.bindNull(7);
                } else {
                    supportSQLiteStatement.bindString(7, bloodPressureData.getDeviceUuid());
                }
                if (bloodPressureData.getPkgName() == null) {
                    supportSQLiteStatement.bindNull(8);
                } else {
                    supportSQLiteStatement.bindString(8, bloodPressureData.getPkgName());
                }
                supportSQLiteStatement.bindLong(9, bloodPressureData.getCreateTime());
                supportSQLiteStatement.bindLong(10, bloodPressureData.getStartTime());
                supportSQLiteStatement.bindLong(11, bloodPressureData.getUpdateTime());
                supportSQLiteStatement.bindLong(12, bloodPressureData.getTimeOffset());
                if (bloodPressureData.getComment() == null) {
                    supportSQLiteStatement.bindNull(13);
                } else {
                    supportSQLiteStatement.bindString(13, bloodPressureData.getComment());
                }
                supportSQLiteStatement.bindLong(14, bloodPressureData.getId());
            }
        };
    }

    public long insert(EcgData bloodPressureData) {
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfEcgData.insertAndReturnId(bloodPressureData);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    public int delete(EcgData bloodPressureData) {
        this.__db.beginTransaction();
        try {
            int handle = this.__deletionAdapterOfEcgData.handle(bloodPressureData) + 0;
            this.__db.setTransactionSuccessful();
            return handle;
        } finally {
            this.__db.endTransaction();
        }
    }

    public int delete(List<EcgData> list) {
        this.__db.beginTransaction();
        try {
            int handleMultiple = this.__deletionAdapterOfEcgData.handleMultiple(list) + 0;
            this.__db.setTransactionSuccessful();
            return handleMultiple;
        } finally {
            this.__db.endTransaction();
        }
    }

    public int update(EcgData bloodPressureData) {
        this.__db.beginTransaction();
        try {
            int handle = this.__updateAdapterOfEcgData.handle(bloodPressureData) + 0;
            this.__db.setTransactionSuccessful();
            return handle;
        } finally {
            this.__db.endTransaction();
        }
    }

    public int update(List<EcgData> list) {
        this.__db.beginTransaction();
        try {
            int handleMultiple = this.__updateAdapterOfEcgData.handleMultiple(list) + 0;
            this.__db.setTransactionSuccessful();
            return handleMultiple;
        } finally {
            this.__db.endTransaction();
        }
    }

    public List<Long> insert(List<EcgData> list) {
        this.__db.beginTransaction();
        try {
            List<Long> insert = super.insert(list);
            this.__db.setTransactionSuccessful();
            return insert;
        } finally {
            this.__db.endTransaction();
        }
    }

    public List<EcgData> getAllDataSync() {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData order by update_time ASC", 0);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
            RoomSQLiteQuery roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        EcgData bloodPressureData = new EcgData();
                        ArrayList arrayList2 = arrayList;
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        ArrayList arrayList3 = arrayList2;
                        arrayList3.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        arrayList = arrayList3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    } catch (Throwable th2) {
                        th = th2;
                        acquire = roomSQLiteQuery;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                ArrayList arrayList4 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList4;
            } catch (Throwable th3) {
                th = th3;
                acquire = roomSQLiteQuery;
                th = th;
                query.close();
                acquire.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            query.close();
            acquire.release();
            // throw th;
        }
		return null;
    }

    public LiveData<List<EcgData>> getAllData() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData order by update_time ASC", 0);
        return new ComputableLiveData<List<EcgData>>() {
            private InvalidationTracker.Observer _observer;

            /* access modifiers changed from: protected */
            public List<EcgData> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("EcgData", new String[0]) {
                        public void onInvalidated(Set<String> set) {
                            //TODO gcc.invalidate();
                        }
                    };
                    EcgDataDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                Cursor query = EcgDataDao_Impl.this.__db.query(acquire);
                try {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
                    int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
                    int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
                    int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
                    int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
                    int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
                    int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
                    int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
                    int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
                    int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        EcgData bloodPressureData = new EcgData();
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        arrayList.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            /* access modifiers changed from: protected */
            public void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    public List<EcgData> getDataSync(long j, long j2) {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData where start_time >= ? and start_time < ? order by update_time ASC", 2);
        acquire.bindLong(1, j);
        acquire.bindLong(2, j2);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
            RoomSQLiteQuery roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        EcgData bloodPressureData = new EcgData();
                        ArrayList arrayList2 = arrayList;
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        ArrayList arrayList3 = arrayList2;
                        arrayList3.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        arrayList = arrayList3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    } catch (Throwable th2) {
                        th = th2;
                        acquire = roomSQLiteQuery;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                ArrayList arrayList4 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList4;
            } catch (Throwable th3) {
                th = th3;
                acquire = roomSQLiteQuery;
                th = th;
                query.close();
                acquire.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            query.close();
            acquire.release();
            // throw th4;
        }
		return null;
    }

    public LiveData<List<EcgData>> getLatestDataSync() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData order by start_time DESC LIMIT 7", 0);
        return new ComputableLiveData<List<EcgData>>() {
            private InvalidationTracker.Observer _observer;

            /* access modifiers changed from: protected */
            public List<EcgData> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("EcgData", new String[0]) {
                        public void onInvalidated(Set<String> set) {
                            //TODO AnonymousClass5.this.invalidate();
                        }
                    };
                    EcgDataDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                Cursor query = EcgDataDao_Impl.this.__db.query(acquire);
                try {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
                    int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
                    int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
                    int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
                    int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
                    int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
                    int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
                    int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
                    int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
                    int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        EcgData bloodPressureData = new EcgData();
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        arrayList.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            /* access modifiers changed from: protected */
            public void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    public LiveData<List<EcgData>> getData(long j, long j2) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData where start_time >= ? and start_time < ? order by update_time ASC", 2);
        acquire.bindLong(1, j);
        acquire.bindLong(2, j2);
        return new ComputableLiveData<List<EcgData>>() {
            private InvalidationTracker.Observer _observer;

            /* access modifiers changed from: protected */
            public List<EcgData> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("EcgData", new String[0]) {
                        public void onInvalidated(Set<String> set) {
                            //TODO AnonymousClass6.this.invalidate();
                        }
                    };
                    EcgDataDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                Cursor query = EcgDataDao_Impl.this.__db.query(acquire);
                try {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
                    int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
                    int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
                    int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
                    int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
                    int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
                    int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
                    int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
                    int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
                    int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        EcgData bloodPressureData = new EcgData();
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        arrayList.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            /* access modifiers changed from: protected */
            public void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    public EcgData getDataSync(String str) {
        EcgData bloodPressureData;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData WHERE datauuid = ?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
            if (query.moveToFirst()) {
                bloodPressureData = new EcgData();
                bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                bloodPressureData.setComment(query.getString(columnIndexOrThrow13));
            } else {
                bloodPressureData = null;
            }
            return bloodPressureData;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public List<EcgData> getDataSync(List<String> list) {
        Throwable th;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM EcgData WHERE datauuid IN(");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(") order by update_time ASC");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String next : list) {
            if (next == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, next);
            }
            i++;
        }
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
            RoomSQLiteQuery roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        EcgData bloodPressureData = new EcgData();
                        ArrayList arrayList2 = arrayList;
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i2 = columnIndexOrThrow;
                        int i3 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i4 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i4));
                        ArrayList arrayList3 = arrayList2;
                        arrayList3.add(bloodPressureData);
                        columnIndexOrThrow13 = i4;
                        arrayList = arrayList3;
                        columnIndexOrThrow = i2;
                        columnIndexOrThrow2 = i3;
                    } catch (Throwable th2) {
                        th = th2;
                        acquire = roomSQLiteQuery;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                ArrayList arrayList4 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList4;
            } catch (Throwable th3) {
                th = th3;
                acquire = roomSQLiteQuery;
                th = th;
                query.close();
                acquire.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            query.close();
            acquire.release();
            // throw th;
        }
		return null;
    }

    public LiveData<List<EcgData>> getData(List<String> list) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM EcgData WHERE datauuid IN(");
        int size = list.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(") order by update_time ASC");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String next : list) {
            if (next == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, next);
            }
            i++;
        }
        return new ComputableLiveData<List<EcgData>>() {
            private InvalidationTracker.Observer _observer;

            /* access modifiers changed from: protected */
            public List<EcgData> compute() {
                if (this._observer == null) {
                    this._observer = new InvalidationTracker.Observer("EcgData", new String[0]) {
                        public void onInvalidated(Set<String> set) {
                            //TODO AnonymousClass7.this.invalidate();
                        }
                    };
                    EcgDataDao_Impl.this.__db.getInvalidationTracker().addWeakObserver(this._observer);
                }
                Cursor query = EcgDataDao_Impl.this.__db.query(acquire);
                try {
                    int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
                    int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
                    int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
                    int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
                    int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
                    int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
                    int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
                    int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
                    int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
                    int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
                    int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
                    int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        EcgData bloodPressureData = new EcgData();
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i = columnIndexOrThrow;
                        int i2 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i3 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i3));
                        arrayList.add(bloodPressureData);
                        columnIndexOrThrow13 = i3;
                        columnIndexOrThrow = i;
                        columnIndexOrThrow2 = i2;
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }

            /* access modifiers changed from: protected */
            public void finalize() {
                acquire.release();
            }
        }.getLiveData();
    }

    public int getDataCount(long j) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) FROM EcgData where mId > ?", 1);
        acquire.bindLong(1, j);
        Cursor query = this.__db.query(acquire);
        try {
            int i = 0;
            if (query.moveToFirst()) {
                i = query.getInt(0);
            }
            return i;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public List<EcgData> getDataSync(long j, int i) {
        Throwable th;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM EcgData where mId > ? LIMIT ?", 2);
        acquire.bindLong(1, j);
        acquire.bindLong(2, (long) i);
        Cursor query = this.__db.query(acquire);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("systolic");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("diastolic");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("hr");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow(DataRoomConstants.Common.ID);
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("datauuid");
            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("deviceuuid");
            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("pkg_name");
            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("create_time");
            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("start_time");
            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("update_time");
            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("time_offset");
            RoomSQLiteQuery roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow13 = query.getColumnIndexOrThrow("comment");
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    try {
                        EcgData bloodPressureData = new EcgData();
                        ArrayList arrayList2 = arrayList;
                        bloodPressureData.setSystolic(query.getInt(columnIndexOrThrow));
                        bloodPressureData.setDiastole(query.getInt(columnIndexOrThrow2));
                        bloodPressureData.setHeartRate(query.getInt(columnIndexOrThrow3));
                        int i2 = columnIndexOrThrow;
                        int i3 = columnIndexOrThrow2;
                        bloodPressureData.setId(query.getLong(columnIndexOrThrow5));
                        bloodPressureData.setUuid(query.getString(columnIndexOrThrow6));
                        bloodPressureData.setDeviceUuid(query.getString(columnIndexOrThrow7));
                        bloodPressureData.setPkgName(query.getString(columnIndexOrThrow8));
                        bloodPressureData.setCreateTime(query.getLong(columnIndexOrThrow9));
                        bloodPressureData.setStartTime(query.getLong(columnIndexOrThrow10));
                        bloodPressureData.setUpdateTime(query.getLong(columnIndexOrThrow11));
                        bloodPressureData.setTimeOffset(query.getLong(columnIndexOrThrow12));
                        int i4 = columnIndexOrThrow13;
                        bloodPressureData.setComment(query.getString(i4));
                        ArrayList arrayList3 = arrayList2;
                        arrayList3.add(bloodPressureData);
                        columnIndexOrThrow13 = i4;
                        arrayList = arrayList3;
                        columnIndexOrThrow = i2;
                        columnIndexOrThrow2 = i3;
                    } catch (Throwable th2) {
                        th = th2;
                        acquire = roomSQLiteQuery;
                        query.close();
                        acquire.release();
                        throw th;
                    }
                }
                ArrayList arrayList4 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList4;
            } catch (Throwable th3) {
                th = th3;
                acquire = roomSQLiteQuery;
                th = th;
                query.close();
                acquire.release();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            query.close();
            acquire.release();
            // throw th;
        }
		return null;
    }

    public int deleteByUuid(List<String> list) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("DELETE FROM EcgData WHERE datauuid IN(");
        StringUtil.appendPlaceholders(newStringBuilder, list.size());
        newStringBuilder.append(")");
        SupportSQLiteStatement compileStatement = this.__db.compileStatement(newStringBuilder.toString());
        int i = 1;
        for (String next : list) {
            if (next == null) {
                compileStatement.bindNull(i);
            } else {
                compileStatement.bindString(i, next);
            }
            i++;
        }
        this.__db.beginTransaction();
        try {
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            this.__db.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.__db.endTransaction();
        }
    }

    public List<EcgData> getDataSync(SupportSQLiteQuery supportSQLiteQuery) {
        Cursor query = this.__db.query(supportSQLiteQuery);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(__entityCursorConverter_comSamsungAndroidShealthmonitorEcgRoomdataDataEcgData(query));
            }
            return arrayList;
        } finally {
            query.close();
        }
    }

    private EcgData __entityCursorConverter_comSamsungAndroidShealthmonitorEcgRoomdataDataEcgData(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("systolic");
        int columnIndex2 = cursor.getColumnIndex("diastolic");
        int columnIndex3 = cursor.getColumnIndex("hr");
        int columnIndex5 = cursor.getColumnIndex(DataRoomConstants.Common.ID);
        int columnIndex6 = cursor.getColumnIndex("datauuid");
        int columnIndex7 = cursor.getColumnIndex("deviceuuid");
        int columnIndex8 = cursor.getColumnIndex("pkg_name");
        int columnIndex9 = cursor.getColumnIndex("create_time");
        int columnIndex10 = cursor.getColumnIndex("start_time");
        int columnIndex11 = cursor.getColumnIndex("update_time");
        int columnIndex12 = cursor.getColumnIndex("time_offset");
        int columnIndex13 = cursor.getColumnIndex("comment");
        EcgData bloodPressureData = new EcgData();
        if (columnIndex != -1) {
            bloodPressureData.setSystolic(cursor.getInt(columnIndex));
        }
        if (columnIndex2 != -1) {
            bloodPressureData.setDiastole(cursor.getInt(columnIndex2));
        }
        if (columnIndex3 != -1) {
            bloodPressureData.setHeartRate(cursor.getInt(columnIndex3));
        }
        if (columnIndex5 != -1) {
            bloodPressureData.setId(cursor.getLong(columnIndex5));
        }
        if (columnIndex6 != -1) {
            bloodPressureData.setUuid(cursor.getString(columnIndex6));
        }
        if (columnIndex7 != -1) {
            bloodPressureData.setDeviceUuid(cursor.getString(columnIndex7));
        }
        if (columnIndex8 != -1) {
            bloodPressureData.setPkgName(cursor.getString(columnIndex8));
        }
        if (columnIndex9 != -1) {
            bloodPressureData.setCreateTime(cursor.getLong(columnIndex9));
        }
        if (columnIndex10 != -1) {
            bloodPressureData.setStartTime(cursor.getLong(columnIndex10));
        }
        if (columnIndex11 != -1) {
            bloodPressureData.setUpdateTime(cursor.getLong(columnIndex11));
        }
        if (columnIndex12 != -1) {
            bloodPressureData.setTimeOffset(cursor.getLong(columnIndex12));
        }
        if (columnIndex13 != -1) {
            bloodPressureData.setComment(cursor.getString(columnIndex13));
        }
        return bloodPressureData;
    }
}
