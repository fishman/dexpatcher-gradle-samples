.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "EcgDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->getAllData()Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

.field final synthetic val$acquire:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->val$acquire:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compute()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->compute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public compute()Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    move-object/from16 v22, v0

    if-nez v22, :cond_3e

    .line 261
    new-instance v22, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4$1;

    const-string v23, "EcgData"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 268
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->val$acquire:Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v21

    .line 270
    .local v21, "query":Landroid/database/Cursor;
    :try_start_54
    const-string v22, "systolic"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 271
    .local v6, "columnIndexOrThrow":I
    const-string v22, "diastolic"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 272
    .local v11, "columnIndexOrThrow2":I
    const-string v22, "hr"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 273
    .local v12, "columnIndexOrThrow3":I
    const-string v22, "mId"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 274
    .local v13, "columnIndexOrThrow5":I
    const-string v22, "datauuid"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 275
    .local v14, "columnIndexOrThrow6":I
    const-string v22, "deviceuuid"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 276
    .local v15, "columnIndexOrThrow7":I
    const-string v22, "pkg_name"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 277
    .local v16, "columnIndexOrThrow8":I
    const-string v22, "create_time"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 278
    .local v17, "columnIndexOrThrow9":I
    const-string v22, "start_time"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 279
    .local v7, "columnIndexOrThrow10":I
    const-string v22, "update_time"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 280
    .local v8, "columnIndexOrThrow11":I
    const-string v22, "time_offset"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 281
    .local v9, "columnIndexOrThrow12":I
    const-string v22, "comment"

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 282
    .local v10, "columnIndexOrThrow13":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v4, "arrayList":Ljava/util/ArrayList;
    :goto_a7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-eqz v22, :cond_14d

    .line 284
    new-instance v5, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v5}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 285
    .local v5, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 286
    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 287
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 288
    move/from16 v18, v6

    .line 289
    .local v18, "i":I
    move/from16 v19, v11

    .line 290
    .local v19, "i2":I
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 291
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 295
    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 296
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 297
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 298
    move/from16 v20, v10

    .line 299
    .local v20, "i3":I
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_145
    .catchall {:try_start_54 .. :try_end_145} :catchall_151

    .line 301
    move/from16 v10, v20

    .line 302
    move/from16 v6, v18

    .line 303
    move/from16 v11, v19

    .line 304
    goto/16 :goto_a7

    .line 307
    .end local v5    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v18    # "i":I
    .end local v19    # "i2":I
    .end local v20    # "i3":I
    :cond_14d
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 305
    return-object v4

    .line 307
    .end local v4    # "arrayList":Ljava/util/ArrayList;
    .end local v6    # "columnIndexOrThrow":I
    .end local v7    # "columnIndexOrThrow10":I
    .end local v8    # "columnIndexOrThrow11":I
    .end local v9    # "columnIndexOrThrow12":I
    .end local v10    # "columnIndexOrThrow13":I
    .end local v11    # "columnIndexOrThrow2":I
    .end local v12    # "columnIndexOrThrow3":I
    .end local v13    # "columnIndexOrThrow5":I
    .end local v14    # "columnIndexOrThrow6":I
    .end local v15    # "columnIndexOrThrow7":I
    .end local v16    # "columnIndexOrThrow8":I
    .end local v17    # "columnIndexOrThrow9":I
    :catchall_151
    move-exception v22

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 308
    throw v22
.end method

.method public finalize()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->val$acquire:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 314
    return-void
.end method
