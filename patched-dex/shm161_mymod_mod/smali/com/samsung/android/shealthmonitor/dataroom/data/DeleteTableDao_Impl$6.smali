.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "DeleteTableDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

.field final synthetic val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->compute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected compute()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6$1;

    const-string v1, "DeleteTable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 611
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, p0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string v0, "table_name"

    .line 615
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "data_uuid"

    .line 616
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mId"

    .line 617
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "datauuid"

    .line 618
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "deviceuuid"

    .line 619
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "pkg_name"

    .line 620
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "create_time"

    .line 621
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "start_time"

    .line 622
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "update_time"

    .line 623
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "time_offset"

    .line 624
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "comment"

    .line 625
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 626
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 629
    new-instance v12, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-direct {v12}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>()V

    .line 631
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 632
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTableName(Ljava/lang/String;)V

    .line 634
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 635
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDataUuid(Ljava/lang/String;)V

    .line 637
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 638
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setId(J)V

    .line 640
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 641
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUuid(Ljava/lang/String;)V

    .line 643
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 644
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDeviceUuid(Ljava/lang/String;)V

    .line 646
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 647
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setPkgName(Ljava/lang/String;)V

    .line 649
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 650
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setCreateTime(J)V

    .line 652
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 653
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setStartTime(J)V

    .line 655
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 656
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUpdateTime(J)V

    .line 658
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 659
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTimeOffset(J)V

    .line 661
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 662
    invoke-virtual {v12, v13}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setComment(Ljava/lang/String;)V

    .line 663
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 667
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v11

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 668
    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
