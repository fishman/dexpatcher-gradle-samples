.class public Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;
.super Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;
.source "SHealthMonitorEcgDatabase_Impl.java"


# instance fields
.field private volatile _ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .registers 6

    .prologue
    .line 103
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->assertNotMainThread()V

    .line 104
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v3

    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 106
    .local v2, "writableDatabase":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_start_b
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->beginTransaction()V

    .line 107
    const-string v3, "DELETE FROM `EcgData`"

    invoke-interface {v2, v3}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2e

    .line 110
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->endTransaction()V

    .line 111
    const-string v0, "PRAGMA wal_checkpoint(FULL)"

    .line 112
    .local v0, "str":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 113
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 114
    const-string v1, "VACUUM"

    .line 115
    .local v1, "str2":Ljava/lang/String;
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    .end local v1    # "str2":Ljava/lang/String;
    :cond_2d
    return-void

    .line 110
    .end local v0    # "str":Ljava/lang/String;
    :catchall_2e
    move-exception v3

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->endTransaction()V

    .line 111
    const-string v0, "PRAGMA wal_checkpoint(FULL)"

    .line 112
    .restart local v0    # "str":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 113
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_46

    .line 114
    const-string v1, "VACUUM"

    .line 115
    .restart local v1    # "str2":Ljava/lang/String;
    invoke-interface {v2, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    .end local v1    # "str2":Ljava/lang/String;
    :cond_46
    throw v3
.end method

.method public createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .registers 5

    .prologue
    .line 97
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EcgData"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .registers 8
    .param p1, "databaseConfiguration"    # Landroid/arch/persistence/room/DatabaseConfiguration;

    .prologue
    .line 20
    iget-object v0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    new-instance v2, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v3, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;I)V

    const-string v4, "bfb72222c15431bec04ad7231bc3f811"

    const-string v5, "46947720a52f651ced989060ea2e5d6e"

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
    .registers 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->_ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    if-eqz v1, :cond_7

    .line 123
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->_ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    .line 131
    :goto_6
    return-object v0

    .line 125
    :cond_7
    monitor-enter p0

    .line 126
    :try_start_8
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->_ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    if-nez v1, :cond_13

    .line 127
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->_ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    .line 129
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->_ecgDataDao:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    .line 130
    .local v0, "ecgDataDao":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
    monitor-exit p0

    goto :goto_6

    .end local v0    # "ecgDataDao":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
    :catchall_17
    move-exception v1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1
.end method
