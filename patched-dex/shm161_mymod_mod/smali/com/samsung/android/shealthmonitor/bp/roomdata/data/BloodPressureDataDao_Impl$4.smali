.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "BloodPressureDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->getAllData()Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

.field final synthetic val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->compute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected compute()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 292
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v2, :cond_0

    .line 293
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4$1;

    const-string v3, "BloodPressureData"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 299
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 301
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "systolic"

    .line 303
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "diastolic"

    .line 304
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "hr"

    .line 305
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "calibration_datauuid"

    .line 306
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "mId"

    .line 307
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "datauuid"

    .line 308
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "deviceuuid"

    .line 309
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "pkg_name"

    .line 310
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "create_time"

    .line 311
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "start_time"

    .line 312
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "update_time"

    .line 313
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "time_offset"

    .line 314
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "comment"

    .line 315
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 316
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v16, v14

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 319
    new-instance v14, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v14}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    move-object/from16 v17, v15

    .line 321
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 322
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 324
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 325
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 327
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 328
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 330
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 331
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    move/from16 v18, v2

    move/from16 v19, v3

    .line 333
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 334
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 336
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 339
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 342
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 345
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 346
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 348
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 349
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 351
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 352
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 354
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 355
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    move/from16 v2, v16

    .line 357
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-virtual {v14, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v17

    .line 359
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v2

    move-object v15, v3

    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_0

    :cond_1
    move-object v3, v15

    .line 363
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 364
    throw v2
.end method

.method protected finalize()V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
