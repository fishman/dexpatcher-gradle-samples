.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->getData(JJ)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

.field final synthetic val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->compute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected compute()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 643
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v2, :cond_0

    .line 644
    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7$1;

    const-string v3, "DeviceProfile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 650
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 652
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "name"

    .line 654
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "model"

    .line 655
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "manufacturer"

    .line 656
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "device_group"

    .line 657
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "connectivity_type"

    .line 658
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "device_type"

    .line 659
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "fixed_name"

    .line 660
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "capability"

    .line 661
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "mId"

    .line 662
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "datauuid"

    .line 663
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceuuid"

    .line 664
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "pkg_name"

    .line 665
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "create_time"

    .line 666
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "start_time"

    .line 667
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "update_time"

    .line 668
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "time_offset"

    .line 669
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "comment"

    .line 670
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    .line 671
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v20, v14

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 672
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 674
    new-instance v14, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v21, v15

    .line 676
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 677
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 679
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 680
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 682
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 683
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 685
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 686
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 688
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 689
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 691
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 692
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 694
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 695
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 697
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 698
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v22, v2

    move/from16 v23, v3

    .line 700
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 701
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 703
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 706
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 709
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v24, v4

    move/from16 v2, v20

    .line 712
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 713
    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v16

    .line 715
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 716
    invoke-virtual {v14, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v4, v17

    .line 718
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 719
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v28, v4

    move/from16 v2, v18

    .line 721
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 722
    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v19

    .line 724
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    invoke-virtual {v14, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v21

    .line 726
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v2

    move/from16 v19, v3

    move-object v15, v4

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v20, v26

    move/from16 v16, v27

    move/from16 v17, v28

    goto/16 :goto_0

    :cond_1
    move-object v4, v15

    .line 730
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 731
    throw v2
.end method

.method protected finalize()V
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
