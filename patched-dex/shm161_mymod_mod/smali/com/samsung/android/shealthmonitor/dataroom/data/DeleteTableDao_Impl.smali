.class public Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;
.super Ljava/lang/Object;
.source "DeleteTableDao_Impl.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 35
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__insertionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 80
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__deletionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 91
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__updateAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__deletionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 173
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

    .line 680
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM DeleteTable WHERE datauuid IN("

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 683
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 688
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

    .line 690
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 692
    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 698
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 699
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 703
    throw p1
.end method

.method public getAllData()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DeleteTable"

    const/4 v1, 0x0

    .line 268
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$4;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 345
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$4;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDataSync()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM DeleteTable"

    const/4 v2, 0x0

    .line 205
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 206
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "table_name"

    .line 208
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "data_uuid"

    .line 209
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mId"

    .line 210
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "datauuid"

    .line 211
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "deviceuuid"

    .line 212
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "pkg_name"

    .line 213
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "create_time"

    .line 214
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "start_time"

    .line 215
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "update_time"

    .line 216
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "time_offset"

    .line 217
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 218
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 219
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 222
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 224
    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTableName(Ljava/lang/String;)V

    .line 227
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDataUuid(Ljava/lang/String;)V

    move/from16 v17, v3

    move/from16 v18, v4

    .line 230
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 231
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setId(J)V

    .line 233
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUuid(Ljava/lang/String;)V

    .line 236
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDeviceUuid(Ljava/lang/String;)V

    .line 239
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setPkgName(Ljava/lang/String;)V

    .line 242
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 243
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setCreateTime(J)V

    .line 245
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 246
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setStartTime(J)V

    .line 248
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 249
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUpdateTime(J)V

    .line 251
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 252
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTimeOffset(J)V

    .line 254
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setComment(Ljava/lang/String;)V

    .line 256
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v1

    .line 260
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 260
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 261
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 262
    throw v3
.end method

.method public getData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM DeleteTable where start_time >= ? and start_time < ?"

    const/4 v1, 0x2

    .line 418
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 420
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 422
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 423
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$5;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$5;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 499
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$5;->getLiveData()Landroid/arch/lifecycle/LiveData;

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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation

    .line 582
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM DeleteTable where datauuid IN("

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 585
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 589
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 591
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

    .line 593
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 675
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataSync(JJ)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM DeleteTable where start_time >= ? and start_time < ?"

    const/4 v2, 0x2

    .line 351
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 353
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 355
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 356
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "table_name"

    .line 358
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "data_uuid"

    .line 359
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mId"

    .line 360
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "datauuid"

    .line 361
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "deviceuuid"

    .line 362
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "pkg_name"

    .line 363
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "create_time"

    .line 364
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "start_time"

    .line 365
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "update_time"

    .line 366
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "time_offset"

    .line 367
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 368
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 369
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 372
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 374
    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTableName(Ljava/lang/String;)V

    .line 377
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDataUuid(Ljava/lang/String;)V

    move/from16 v17, v3

    move/from16 v18, v4

    .line 380
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 381
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setId(J)V

    .line 383
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUuid(Ljava/lang/String;)V

    .line 386
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDeviceUuid(Ljava/lang/String;)V

    .line 389
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setPkgName(Ljava/lang/String;)V

    .line 392
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 393
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setCreateTime(J)V

    .line 395
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 396
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setStartTime(J)V

    .line 398
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 399
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUpdateTime(J)V

    .line 401
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 402
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTimeOffset(J)V

    .line 404
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setComment(Ljava/lang/String;)V

    .line 406
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v1

    .line 410
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 411
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 410
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 411
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 412
    throw v3
.end method

.method public getDataSync(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT * FROM DeleteTable where datauuid IN("

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 507
    invoke-static {v1, v2}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 508
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 511
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 513
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

    .line 515
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 517
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 521
    iget-object v2, v3, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "table_name"

    .line 523
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "data_uuid"

    .line 524
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "mId"

    .line 525
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "datauuid"

    .line 526
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "deviceuuid"

    .line 527
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "pkg_name"

    .line 528
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "create_time"

    .line 529
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "start_time"

    .line 530
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "update_time"

    .line 531
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "time_offset"

    .line 532
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "comment"

    .line 533
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 534
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 535
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 537
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    .line 539
    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTableName(Ljava/lang/String;)V

    .line 542
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDataUuid(Ljava/lang/String;)V

    move/from16 v17, v3

    move/from16 v18, v4

    .line 545
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 546
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setId(J)V

    .line 548
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUuid(Ljava/lang/String;)V

    .line 551
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDeviceUuid(Ljava/lang/String;)V

    .line 554
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setPkgName(Ljava/lang/String;)V

    .line 557
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 558
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setCreateTime(J)V

    .line 560
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 561
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setStartTime(J)V

    .line 563
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 564
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUpdateTime(J)V

    .line 566
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 567
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTimeOffset(J)V

    .line 569
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setComment(Ljava/lang/String;)V

    .line 571
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    .line 575
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 576
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 575
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 576
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 577
    throw v3
.end method

.method public insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)J
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__insertionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 156
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 160
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__insertionAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 148
    throw p1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__updateAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 186
    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;)I"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__updateAdapterOfDeleteTable:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 199
    throw p1
.end method
