.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;
.super Ljava/lang/Object;
.source "CalibrationConfigDao_Impl.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 35
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__insertionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 78
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__deletionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 89
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__updateAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__deletionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 169
    throw p1
.end method

.method public deleteByUuid(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 801
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM CalibrationConfig WHERE datauuid IN("

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 804
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 809
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 811
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 813
    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 819
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 820
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 824
    throw p1
.end method

.method public getAllData()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CalibrationConfig"

    const/4 v1, 0x0

    .line 272
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 357
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$4;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDataSync()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM CalibrationConfig"

    const/4 v2, 0x0

    .line 201
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 202
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "ref_systolic"

    .line 204
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ref_diastolic"

    .line 205
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "feature"

    .line 206
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "hr"

    .line 207
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 208
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 209
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 210
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 211
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 212
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 213
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 214
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 215
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 216
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 217
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 220
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;-><init>()V

    move-object/from16 v18, v1

    .line 222
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 223
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefSystolic(I)V

    .line 225
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 226
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefDiastolic(I)V

    .line 228
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setFeature(Ljava/lang/String;)V

    .line 231
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 232
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setHeartRate(I)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 234
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 235
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setId(J)V

    .line 237
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUuid(Ljava/lang/String;)V

    .line 240
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setDeviceUuid(Ljava/lang/String;)V

    .line 243
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setPkgName(Ljava/lang/String;)V

    .line 246
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 247
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setCreateTime(J)V

    .line 249
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 250
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setStartTime(J)V

    .line 252
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 253
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUpdateTime(J)V

    .line 255
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 256
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 258
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 260
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v3, v1

    .line 264
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 265
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 264
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 266
    throw v3
.end method

.method public getData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CalibrationConfig where start_time >= ? and start_time < ?"

    const/4 v1, 0x2

    .line 438
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 440
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 442
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 443
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$5;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 527
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$5;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;>;"
        }
    .end annotation

    .line 695
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM CalibrationConfig WHERE datauuid IN("

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 698
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 699
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 702
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 704
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 706
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 708
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 796
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;
    .locals 14

    const-string v0, "SELECT * FROM CalibrationConfig WHERE datauuid= ?"

    const/4 v1, 0x1

    .line 533
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 536
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 540
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "ref_systolic"

    .line 542
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "ref_diastolic"

    .line 543
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "feature"

    .line 544
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "hr"

    .line 545
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mId"

    .line 546
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "datauuid"

    .line 547
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "deviceuuid"

    .line 548
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "pkg_name"

    .line 549
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "create_time"

    .line 550
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "start_time"

    .line 551
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "update_time"

    .line 552
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "time_offset"

    .line 553
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "comment"

    .line 554
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 556
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 557
    new-instance v13, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-direct {v13}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;-><init>()V

    .line 559
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 560
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefSystolic(I)V

    .line 562
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 563
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefDiastolic(I)V

    .line 565
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setFeature(Ljava/lang/String;)V

    .line 568
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 569
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setHeartRate(I)V

    .line 571
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 572
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setId(J)V

    .line 574
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUuid(Ljava/lang/String;)V

    .line 577
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setDeviceUuid(Ljava/lang/String;)V

    .line 580
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setPkgName(Ljava/lang/String;)V

    .line 583
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 584
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setCreateTime(J)V

    .line 586
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 587
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setStartTime(J)V

    .line 589
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 590
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUpdateTime(J)V

    .line 592
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 593
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setTimeOffset(J)V

    .line 595
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setComment(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 602
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 603
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception p1

    .line 602
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 603
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 604
    throw p1
.end method

.method public getDataSync(JJ)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM CalibrationConfig where start_time >= ? and start_time < ?"

    const/4 v2, 0x2

    .line 363
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 365
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 367
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 368
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "ref_systolic"

    .line 370
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ref_diastolic"

    .line 371
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "feature"

    .line 372
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "hr"

    .line 373
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 374
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 375
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 376
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 377
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 378
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 379
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 380
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 381
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 382
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 383
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 386
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;-><init>()V

    move-object/from16 v18, v1

    .line 388
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 389
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefSystolic(I)V

    .line 391
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 392
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefDiastolic(I)V

    .line 394
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setFeature(Ljava/lang/String;)V

    .line 397
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 398
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setHeartRate(I)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 400
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 401
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setId(J)V

    .line 403
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUuid(Ljava/lang/String;)V

    .line 406
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setDeviceUuid(Ljava/lang/String;)V

    .line 409
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setPkgName(Ljava/lang/String;)V

    .line 412
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 413
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setCreateTime(J)V

    .line 415
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 416
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setStartTime(J)V

    .line 418
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 419
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUpdateTime(J)V

    .line 421
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 422
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 424
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 426
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v3, v1

    .line 430
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 431
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 430
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 431
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 432
    throw v3
.end method

.method public getDataSync(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    .line 609
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT * FROM CalibrationConfig WHERE datauuid IN("

    .line 610
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 612
    invoke-static {v1, v2}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 613
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 616
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 618
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 620
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 622
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 626
    iget-object v2, v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "ref_systolic"

    .line 628
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ref_diastolic"

    .line 629
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "feature"

    .line 630
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "hr"

    .line 631
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 632
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 633
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 634
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 635
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 636
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 637
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 638
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 639
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 640
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 641
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_2

    .line 644
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;-><init>()V

    move-object/from16 v18, v1

    .line 646
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 647
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefSystolic(I)V

    .line 649
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 650
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefDiastolic(I)V

    .line 652
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setFeature(Ljava/lang/String;)V

    .line 655
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 656
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setHeartRate(I)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 658
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 659
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setId(J)V

    .line 661
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUuid(Ljava/lang/String;)V

    .line 664
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setDeviceUuid(Ljava/lang/String;)V

    .line 667
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setPkgName(Ljava/lang/String;)V

    .line 670
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 671
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setCreateTime(J)V

    .line 673
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 674
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setStartTime(J)V

    .line 676
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 677
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUpdateTime(J)V

    .line 679
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 680
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 682
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 684
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_2
    move-object v3, v1

    .line 688
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 689
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    move-object v3, v0

    .line 688
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 689
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 690
    throw v3
.end method

.method public insert(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)J
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__insertionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 152
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 156
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__insertionAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 144
    throw p1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__updateAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 182
    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;)I"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__updateAdapterOfCalibrationConfig:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 195
    throw p1
.end method
