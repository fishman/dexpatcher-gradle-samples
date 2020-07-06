.class public Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;
.source "DeviceProfileDao_Impl.java"


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __insertionAdapterOfDeviceProfile_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

.field private final __updateAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 40
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__insertionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 103
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__insertionAdapterOfDeviceProfile_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 166
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__deletionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 177
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$4;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__updateAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 241
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$5;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__deletionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 284
    throw p1
.end method

.method public delete(Ljava/lang/String;)I
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 332
    :try_start_0
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 334
    :cond_0
    invoke-interface {v0, v1, p1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :goto_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 337
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 341
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return p1

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 341
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__preparedStmtOfDelete:Landroid/arch/persistence/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/SharedSQLiteStatement;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 342
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

    .line 1397
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM DeviceProfile WHERE datauuid IN("

    .line 1398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1400
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 1401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 1405
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

    .line 1407
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 1409
    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 1415
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 1416
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 1420
    throw p1
.end method

.method public getAllData()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DeviceProfile"

    const/4 v1, 0x0

    .line 435
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 536
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDataSync()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM DeviceProfile"

    const/4 v2, 0x0

    .line 348
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 349
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "name"

    .line 351
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "model"

    .line 352
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "manufacturer"

    .line 353
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "device_group"

    .line 354
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "connectivity_type"

    .line 355
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_type"

    .line 356
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "fixed_name"

    .line 357
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability"

    .line 358
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mId"

    .line 359
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "datauuid"

    .line 360
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceuuid"

    .line 361
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "pkg_name"

    .line 362
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 363
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "start_time"

    .line 364
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "update_time"

    .line 365
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "time_offset"

    .line 366
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "comment"

    .line 367
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 371
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v22, v1

    .line 373
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 376
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 379
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 382
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 383
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 385
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 386
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 388
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 389
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 391
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 394
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 395
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v23, v3

    move/from16 v24, v4

    .line 397
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 398
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 400
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 403
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 406
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v1, v21

    .line 409
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 410
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v17

    .line 412
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 413
    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v6

    move/from16 v4, v18

    .line 415
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 416
    invoke-virtual {v15, v5, v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v5, v19

    .line 418
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 419
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v20

    .line 421
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-virtual {v15, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 423
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v1

    move/from16 v20, v3

    move-object v1, v4

    move/from16 v19, v5

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v17, v27

    move/from16 v18, v28

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v4, v1

    .line 427
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 428
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 427
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 428
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 429
    throw v3
.end method

.method public getData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DeviceProfile where start_time >= ? and start_time < ?"

    const/4 v1, 0x2

    .line 633
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 635
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 637
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 638
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 738
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->getLiveData()Landroid/arch/lifecycle/LiveData;

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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation

    .line 845
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM DeviceProfile WHERE datauuid IN("

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 848
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 849
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 852
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 854
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

    .line 856
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 858
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 962
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DeviceProfile WHERE deviceuuid = ?"

    const/4 v1, 0x1

    .line 1061
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 1064
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 1068
    :goto_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 1168
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataByDeviceId(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation

    .line 1275
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM DeviceProfile WHERE deviceuuid IN("

    .line 1276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1278
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 1279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 1282
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 1284
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

    .line 1286
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1288
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$10;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$10;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 1392
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$10;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataSync(JJ)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM DeviceProfile where start_time >= ? and start_time < ?"

    const/4 v2, 0x2

    .line 542
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 544
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 546
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 547
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "name"

    .line 549
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "model"

    .line 550
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "manufacturer"

    .line 551
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "device_group"

    .line 552
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "connectivity_type"

    .line 553
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_type"

    .line 554
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "fixed_name"

    .line 555
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability"

    .line 556
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mId"

    .line 557
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "datauuid"

    .line 558
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceuuid"

    .line 559
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "pkg_name"

    .line 560
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 561
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "start_time"

    .line 562
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "update_time"

    .line 563
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "time_offset"

    .line 564
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "comment"

    .line 565
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 569
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v22, v1

    .line 571
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 574
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 577
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 580
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 581
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 583
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 584
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 586
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 587
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 589
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 592
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 593
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v23, v3

    move/from16 v24, v4

    .line 595
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 596
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 598
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 601
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 604
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v1, v21

    .line 607
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 608
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v17

    .line 610
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 611
    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v6

    move/from16 v4, v18

    .line 613
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 614
    invoke-virtual {v15, v5, v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v5, v19

    .line 616
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 617
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v20

    .line 619
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-virtual {v15, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 621
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v1

    move/from16 v20, v3

    move-object v1, v4

    move/from16 v19, v5

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v17, v27

    move/from16 v18, v28

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v4, v1

    .line 625
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 626
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 625
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 626
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 627
    throw v3
.end method

.method public getDataSync(Ljava/util/List;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    .line 743
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT * FROM DeviceProfile WHERE datauuid IN("

    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 746
    invoke-static {v1, v2}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 747
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 750
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 752
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

    .line 754
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 756
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 760
    iget-object v2, v3, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "name"

    .line 762
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "model"

    .line 763
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "manufacturer"

    .line 764
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "device_group"

    .line 765
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "connectivity_type"

    .line 766
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_type"

    .line 767
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "fixed_name"

    .line 768
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability"

    .line 769
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mId"

    .line 770
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "datauuid"

    .line 771
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceuuid"

    .line 772
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "pkg_name"

    .line 773
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 774
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "start_time"

    .line 775
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "update_time"

    .line 776
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "time_offset"

    .line 777
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "comment"

    .line 778
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    .line 779
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 780
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_2

    .line 782
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v22, v1

    .line 784
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 787
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 788
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 790
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 793
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 794
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 796
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 797
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 799
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 800
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 802
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 805
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 806
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v23, v3

    move/from16 v24, v4

    .line 808
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 809
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 811
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 814
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 817
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 818
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v1, v21

    .line 820
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 821
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v17

    .line 823
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 824
    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v6

    move/from16 v4, v18

    .line 826
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 827
    invoke-virtual {v15, v5, v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v5, v19

    .line 829
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 830
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v20

    .line 832
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 833
    invoke-virtual {v15, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 834
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v1

    move/from16 v20, v3

    move-object v1, v4

    move/from16 v19, v5

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v17, v27

    move/from16 v18, v28

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_2
    move-object v4, v1

    .line 838
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 839
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    move-object v3, v0

    .line 838
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 839
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 840
    throw v3
.end method

.method public getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;
    .locals 22

    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM DeviceProfile WHERE deviceuuid = ?"

    const/4 v3, 0x1

    .line 968
    invoke-static {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v1, :cond_0

    .line 971
    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    :goto_0
    move-object/from16 v1, p0

    goto :goto_1

    .line 973
    :cond_0
    invoke-virtual {v2, v3, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 975
    :goto_1
    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v3, "name"

    .line 977
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "model"

    .line 978
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "manufacturer"

    .line 979
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "device_group"

    .line 980
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "connectivity_type"

    .line 981
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_type"

    .line 982
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "fixed_name"

    .line 983
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability"

    .line 984
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mId"

    .line 985
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "datauuid"

    .line 986
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceuuid"

    .line 987
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "pkg_name"

    .line 988
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 989
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "start_time"

    .line 990
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "update_time"

    .line 991
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "time_offset"

    .line 992
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "comment"

    .line 993
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 995
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v20, :cond_1

    move/from16 v21, v2

    .line 996
    :try_start_2
    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    .line 998
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 999
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 1001
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1002
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 1004
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 1007
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1008
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 1010
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1011
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 1013
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1014
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 1016
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 1019
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 1020
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    .line 1022
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1023
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 1025
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 1028
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 1031
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1032
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    .line 1034
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1035
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v3, v17

    .line 1037
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1038
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v3, v18

    .line 1040
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1041
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v3, v19

    .line 1043
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1044
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v21

    .line 1046
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v16

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    .line 1053
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, v16

    .line 1054
    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_3
    move-object v2, v0

    .line 1053
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1054
    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1055
    throw v2
.end method

.method public getDataSyncByDeviceId(Ljava/util/List;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    .line 1173
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT * FROM DeviceProfile WHERE deviceuuid IN("

    .line 1174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1176
    invoke-static {v1, v2}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 1177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 1180
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 1182
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

    .line 1184
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 1186
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 1190
    iget-object v2, v3, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "name"

    .line 1192
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "model"

    .line 1193
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "manufacturer"

    .line 1194
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "device_group"

    .line 1195
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "connectivity_type"

    .line 1196
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "device_type"

    .line 1197
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "fixed_name"

    .line 1198
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "capability"

    .line 1199
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "mId"

    .line 1200
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "datauuid"

    .line 1201
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "deviceuuid"

    .line 1202
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "pkg_name"

    .line 1203
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "create_time"

    .line 1204
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "start_time"

    .line 1205
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "update_time"

    .line 1206
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "time_offset"

    .line 1207
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "comment"

    .line 1208
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    .line 1209
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v21, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 1210
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_2

    .line 1212
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v22, v1

    .line 1214
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1215
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 1217
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1218
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 1220
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1221
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 1223
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1224
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 1226
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1227
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 1229
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1230
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 1232
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 1235
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1236
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v23, v3

    move/from16 v24, v4

    .line 1238
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1239
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 1241
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 1244
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1245
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 1247
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1248
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v1, v21

    .line 1250
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1251
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v17

    .line 1253
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1254
    invoke-virtual {v15, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v6

    move/from16 v4, v18

    .line 1256
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1257
    invoke-virtual {v15, v5, v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v5, v19

    .line 1259
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1260
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v20

    .line 1262
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1263
    invoke-virtual {v15, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v22

    .line 1264
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v1

    move/from16 v20, v3

    move-object v1, v4

    move/from16 v19, v5

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v17, v27

    move/from16 v18, v28

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_2
    move-object v4, v1

    .line 1268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 1269
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    move-object v3, v0

    .line 1268
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1269
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 1270
    throw v3
.end method

.method public insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__insertionAdapterOfDeviceProfile_1:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 267
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 271
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__insertionAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 255
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 259
    throw p1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__updateAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 297
    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;)I"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__updateAdapterOfDeviceProfile:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 310
    throw p1
.end method

.method public upsert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 317
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->upsert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J

    move-result-wide v0

    .line 318
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 322
    throw p1
.end method
