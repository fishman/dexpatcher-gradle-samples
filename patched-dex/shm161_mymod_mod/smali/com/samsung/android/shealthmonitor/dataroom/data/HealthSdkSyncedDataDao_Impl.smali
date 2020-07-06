.class public Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;
.source "HealthSdkSyncedDataDao_Impl.java"


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 30
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__insertionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 57
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__deletionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 72
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__updateAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__deletionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 123
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 126
    throw p1
.end method

.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__deletionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 134
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 137
    throw p1
.end method

.method public getAllData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM HealthSdkSyncedData"

    const/4 v1, 0x0

    .line 394
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 395
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v1, "datauuid"

    .line 397
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "samsung_health_data_uuid"

    .line 398
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sdk_data_type"

    .line 399
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "updated"

    .line 400
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "deleted"

    .line 401
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 402
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 405
    new-instance v7, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>()V

    .line 407
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-virtual {v7, v8}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDataUuid(Ljava/lang/String;)V

    .line 410
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-virtual {v7, v8}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSamsungHealthDataUuid(Ljava/lang/String;)V

    .line 413
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 414
    invoke-virtual {v7, v8}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSdkDataType(Ljava/lang/String;)V

    .line 416
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 417
    invoke-virtual {v7, v8}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 419
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 420
    invoke-virtual {v7, v8}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V

    .line 421
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 426
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v1

    .line 425
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 426
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 427
    throw v1
.end method

.method public getData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 6

    const-string v0, "SELECT * FROM HealthSdkSyncedData WHERE datauuid = ?"

    const/4 v1, 0x1

    .line 205
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 212
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "datauuid"

    .line 214
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "samsung_health_data_uuid"

    .line 215
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdk_data_type"

    .line 216
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "updated"

    .line 217
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deleted"

    .line 218
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 220
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    new-instance v5, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>()V

    .line 223
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {v5, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDataUuid(Ljava/lang/String;)V

    .line 226
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {v5, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSamsungHealthDataUuid(Ljava/lang/String;)V

    .line 229
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {v5, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSdkDataType(Ljava/lang/String;)V

    .line 232
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 233
    invoke-virtual {v5, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 235
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 236
    invoke-virtual {v5, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 242
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 243
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 244
    throw p1
.end method

.method public getData(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM HealthSdkSyncedData WHERE datauuid IN("

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 252
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 256
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 258
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

    .line 260
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 262
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "datauuid"

    .line 268
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "samsung_health_data_uuid"

    .line 269
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdk_data_type"

    .line 270
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "updated"

    .line 271
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deleted"

    .line 272
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>()V

    .line 278
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDataUuid(Ljava/lang/String;)V

    .line 281
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSamsungHealthDataUuid(Ljava/lang/String;)V

    .line 284
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSdkDataType(Ljava/lang/String;)V

    .line 287
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 288
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 290
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 291
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V

    .line 292
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 296
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 296
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 298
    throw p1
.end method

.method public getDeletedList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM HealthSdkSyncedData WHERE 1 == deleted AND sdk_data_type = ?"

    const/4 v1, 0x1

    .line 349
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 352
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 356
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "datauuid"

    .line 358
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "samsung_health_data_uuid"

    .line 359
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdk_data_type"

    .line 360
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "updated"

    .line 361
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deleted"

    .line 362
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>()V

    .line 368
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 369
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDataUuid(Ljava/lang/String;)V

    .line 371
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSamsungHealthDataUuid(Ljava/lang/String;)V

    .line 374
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSdkDataType(Ljava/lang/String;)V

    .line 377
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 378
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 380
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 381
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V

    .line 382
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 386
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 386
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 388
    throw p1
.end method

.method public getUpdatedList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM HealthSdkSyncedData WHERE 1 == updated AND sdk_data_type = ?"

    const/4 v1, 0x1

    .line 304
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 311
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "datauuid"

    .line 313
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "samsung_health_data_uuid"

    .line 314
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sdk_data_type"

    .line 315
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "updated"

    .line 316
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deleted"

    .line 317
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 318
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {v6}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>()V

    .line 323
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDataUuid(Ljava/lang/String;)V

    .line 326
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSamsungHealthDataUuid(Ljava/lang/String;)V

    .line 329
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setSdkDataType(Ljava/lang/String;)V

    .line 332
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 333
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 335
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 336
    invoke-virtual {v6, v7}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V

    .line 337
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 341
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p1

    .line 341
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 343
    throw p1
.end method

.method public hasDataUuid(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT datauuid FROM HealthSdkSyncedData WHERE datauuid IN("

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 435
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 439
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 441
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 443
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 445
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    .line 451
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 459
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 460
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 459
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 460
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 461
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__insertionAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 115
    throw p1
.end method

.method public setDeleted(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 194
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->setDeleted(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 199
    throw p1
.end method

.method public setUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 170
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->setUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 175
    throw p1
.end method

.method public unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 182
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 187
    throw p1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__updateAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 150
    throw p1
.end method

.method public update(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)I"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__updateAdapterOfHealthSdkSyncedData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 163
    throw p1
.end method
