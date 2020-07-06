.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
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

    .line 862
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 862
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->compute()Ljava/util/List;

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

    .line 867
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v2, :cond_0

    .line 868
    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8$1;

    const-string v3, "DeviceProfile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 874
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 876
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "name"

    .line 878
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "model"

    .line 879
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "manufacturer"

    .line 880
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "device_group"

    .line 881
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "connectivity_type"

    .line 882
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "device_type"

    .line 883
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "fixed_name"

    .line 884
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "capability"

    .line 885
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "mId"

    .line 886
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "datauuid"

    .line 887
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceuuid"

    .line 888
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "pkg_name"

    .line 889
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "create_time"

    .line 890
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "start_time"

    .line 891
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "update_time"

    .line 892
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "time_offset"

    .line 893
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "comment"

    .line 894
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    .line 895
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v20, v14

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 898
    new-instance v14, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v14}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    move-object/from16 v21, v15

    .line 900
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 901
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 903
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 904
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 906
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 907
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 909
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 910
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 912
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 913
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 915
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 916
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 918
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 919
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 921
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 922
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    move/from16 v22, v2

    move/from16 v23, v3

    .line 924
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 925
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 927
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 928
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 930
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 933
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    move/from16 v24, v4

    move/from16 v2, v20

    .line 936
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 937
    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v25, v5

    move/from16 v3, v16

    .line 939
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 940
    invoke-virtual {v14, v4, v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v4, v17

    .line 942
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 943
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v28, v4

    move/from16 v2, v18

    .line 945
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 946
    invoke-virtual {v14, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v3, v19

    .line 948
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 949
    invoke-virtual {v14, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V

    move-object/from16 v4, v21

    .line 950
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

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 955
    throw v2
.end method

.method protected finalize()V
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$8;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
