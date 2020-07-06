.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;
.super Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;
.source "SHealthMonitorBpDatabase_Impl.java"


# instance fields
.field private volatile _bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

.field private volatile _calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    return-object p0

    .line 156
    :cond_0
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_bloodPressureDataDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    return-object p0

    .line 170
    :cond_0
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->_calibrationConfigDao:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->assertNotMainThread()V

    .line 136
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 138
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `BloodPressureData`"

    .line 139
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `CalibrationConfig`"

    .line 140
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->endTransaction()V

    const-string p0, "PRAGMA wal_checkpoint(FULL)"

    .line 144
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "VACUUM"

    .line 146
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 143
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->endTransaction()V

    const-string p0, "PRAGMA wal_checkpoint(FULL)"

    .line 144
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VACUUM"

    .line 146
    invoke-interface {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 3

    .line 130
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "BloodPressureData"

    const-string v2, "CalibrationConfig"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 3

    .line 31
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;I)V

    const-string p0, "a4f57f4d26b1e8cdcf905cdc34f07cbb"

    const-string v2, "46947720a52f651ced989060ea2e5d6e"

    invoke-direct {v0, p1, v1, p0, v2}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object p0

    .line 124
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method
