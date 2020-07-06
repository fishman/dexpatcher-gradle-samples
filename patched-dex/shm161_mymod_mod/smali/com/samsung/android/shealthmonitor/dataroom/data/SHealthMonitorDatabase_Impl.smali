.class public Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;
.source "SHealthMonitorDatabase_Impl.java"


# instance fields
.field private volatile _deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

.field private volatile _deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

.field private volatile _healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->assertNotMainThread()V

    .line 157
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 159
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `DeleteTable`"

    .line 160
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `DeviceProfile`"

    .line 161
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `HealthSdkSyncedData`"

    .line 162
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->endTransaction()V

    const-string p0, "PRAGMA wal_checkpoint(FULL)"

    .line 166
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "VACUUM"

    .line 168
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 165
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->endTransaction()V

    const-string p0, "PRAGMA wal_checkpoint(FULL)"

    .line 166
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VACUUM"

    .line 168
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .line 151
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "DeleteTable"

    const-string v2, "DeviceProfile"

    const-string v3, "HealthSdkSyncedData"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 3

    .line 33
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;I)V

    const-string p0, "9ddd029448117edf4ff7cf4e1b8b929b"

    const-string v2, "e306ed46d7760fb2aeb98db674325139"

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 142
    invoke-virtual {p0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 143
    invoke-virtual {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    .line 145
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    return-object p0

    .line 178
    :cond_0
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deleteTableDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    if-eqz v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    return-object p0

    .line 192
    :cond_0
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_deviceProfileDao:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    return-object p0

    .line 206
    :cond_0
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->_healthSdkSyncedDataDao:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
