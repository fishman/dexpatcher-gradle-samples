package com.samsung.android.shealthmonitor.ecg.roomdata.data;

import android.arch.persistence.db.SupportSQLiteDatabase;
import android.arch.persistence.db.SupportSQLiteOpenHelper;
import android.arch.persistence.room.DatabaseConfiguration;
import android.arch.persistence.room.InvalidationTracker;
import android.arch.persistence.room.RoomDatabase;
import android.arch.persistence.room.RoomOpenHelper;
import android.arch.persistence.room.util.TableInfo;
import com.samsung.android.shealthmonitor.dataroom.data.internal.DataRoomConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public class SHealthMonitorEcgDatabase_Impl extends SHealthMonitorEcgDatabase {
    private volatile EcgDataDao _ecgDataDao;

    /* access modifiers changed from: protected */
    public SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration databaseConfiguration) {
        return databaseConfiguration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(databaseConfiguration.context).name(databaseConfiguration.name).callback(new RoomOpenHelper(databaseConfiguration, new RoomOpenHelper.Delegate(2) {
            public void createAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS `EcgData` (`systolic` INTEGER NOT NULL, `diastolic` INTEGER NOT NULL, `hr` INTEGER NOT NULL, `calibration_datauuid` TEXT, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)");
                supportSQLiteDatabase.execSQL("CREATE UNIQUE INDEX `index_EcgData_datauuid` ON `EcgData` (`datauuid`)");
                supportSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                supportSQLiteDatabase.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(43, \"bfb72222c15431bec04ad7231bc3f811\")");
            }

            public void dropAllTables(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.execSQL("DROP TABLE IF EXISTS `EcgData`");
            }

            /* access modifiers changed from: protected */
            public void onCreate(SupportSQLiteDatabase supportSQLiteDatabase) {
                if (SHealthMonitorEcgDatabase_Impl.this.mCallbacks != null) {
                    int size = SHealthMonitorEcgDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) SHealthMonitorEcgDatabase_Impl.this.mCallbacks.get(i)).onCreate(supportSQLiteDatabase);
                    }
                }
            }

            public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
                SupportSQLiteDatabase unused = SHealthMonitorEcgDatabase_Impl.this.mDatabase = supportSQLiteDatabase;
                SHealthMonitorEcgDatabase_Impl.this.internalInitInvalidationTracker(supportSQLiteDatabase);
                if (SHealthMonitorEcgDatabase_Impl.this.mCallbacks != null) {
                    int size = SHealthMonitorEcgDatabase_Impl.this.mCallbacks.size();
                    for (int i = 0; i < size; i++) {
                        ((RoomDatabase.Callback) SHealthMonitorEcgDatabase_Impl.this.mCallbacks.get(i)).onOpen(supportSQLiteDatabase);
                    }
                }
            }

            /* access modifiers changed from: protected */
            public void validateMigration(SupportSQLiteDatabase supportSQLiteDatabase) {
                HashMap hashMap = new HashMap(13);
                hashMap.put("systolic", new TableInfo.Column("systolic", "INTEGER", true, 0));
                hashMap.put("diastolic", new TableInfo.Column("diastolic", "INTEGER", true, 0));
                hashMap.put("hr", new TableInfo.Column("hr", "INTEGER", true, 0));
                hashMap.put(DataRoomConstants.Common.ID, new TableInfo.Column(DataRoomConstants.Common.ID, "INTEGER", true, 1));
                hashMap.put("datauuid", new TableInfo.Column("datauuid", "TEXT", false, 0));
                hashMap.put("deviceuuid", new TableInfo.Column("deviceuuid", "TEXT", false, 0));
                hashMap.put("pkg_name", new TableInfo.Column("pkg_name", "TEXT", false, 0));
                hashMap.put("create_time", new TableInfo.Column("create_time", "INTEGER", true, 0));
                hashMap.put("start_time", new TableInfo.Column("start_time", "INTEGER", true, 0));
                hashMap.put("update_time", new TableInfo.Column("update_time", "INTEGER", true, 0));
                hashMap.put("time_offset", new TableInfo.Column("time_offset", "INTEGER", true, 0));
                hashMap.put("comment", new TableInfo.Column("comment", "TEXT", false, 0));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(1);
                hashSet2.add(new TableInfo.Index("index_EcgData_datauuid", true, Arrays.asList(new String[]{"datauuid"})));
                TableInfo tableInfo = new TableInfo("EcgData", hashMap, hashSet, hashSet2);
                TableInfo read = TableInfo.read(supportSQLiteDatabase, "EcgData");
                if (!tableInfo.equals(read)) {
                    throw new IllegalStateException("Migration didn't properly handle EcgData(com.samsung.android.shealthmonitor.bp.roomdata.data.EcgData).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(13);
                hashMap2.put("ref_systolic", new TableInfo.Column("ref_systolic", "INTEGER", true, 0));
                hashMap2.put("ref_diastolic", new TableInfo.Column("ref_diastolic", "INTEGER", true, 0));
                hashMap2.put("feature", new TableInfo.Column("feature", "TEXT", false, 0));
                hashMap2.put("hr", new TableInfo.Column("hr", "INTEGER", true, 0));
                hashMap2.put(DataRoomConstants.Common.ID, new TableInfo.Column(DataRoomConstants.Common.ID, "INTEGER", true, 1));
                hashMap2.put("datauuid", new TableInfo.Column("datauuid", "TEXT", false, 0));
                hashMap2.put("deviceuuid", new TableInfo.Column("deviceuuid", "TEXT", false, 0));
                hashMap2.put("pkg_name", new TableInfo.Column("pkg_name", "TEXT", false, 0));
                hashMap2.put("create_time", new TableInfo.Column("create_time", "INTEGER", true, 0));
                hashMap2.put("start_time", new TableInfo.Column("start_time", "INTEGER", true, 0));
                hashMap2.put("update_time", new TableInfo.Column("update_time", "INTEGER", true, 0));
                hashMap2.put("time_offset", new TableInfo.Column("time_offset", "INTEGER", true, 0));
                hashMap2.put("comment", new TableInfo.Column("comment", "TEXT", false, 0));
                HashSet hashSet3 = new HashSet(0);
            }
        }, "bfb72222c15431bec04ad7231bc3f811", "46947720a52f651ced989060ea2e5d6e")).build());
    }

    /* access modifiers changed from: protected */
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, "EcgData");
    }

    public void clearAllTables() {
        String str;
        String str2;
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `EcgData`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            str = "PRAGMA wal_checkpoint(FULL)";
            writableDatabase.query(str).close();
            if (!writableDatabase.inTransaction()) {
                str2 = "VACUUM";
                writableDatabase.execSQL(str2);
            }
        }
    }

    public EcgDataDao ecgDataDao() {
        EcgDataDao ecgDataDao;
        if (this._ecgDataDao != null) {
            return this._ecgDataDao;
        }
        synchronized (this) {
            if (this._ecgDataDao == null) {
                this._ecgDataDao = new EcgDataDao_Impl(this);
            }
            ecgDataDao = this._ecgDataDao;
        }
        return ecgDataDao;
    }

}
