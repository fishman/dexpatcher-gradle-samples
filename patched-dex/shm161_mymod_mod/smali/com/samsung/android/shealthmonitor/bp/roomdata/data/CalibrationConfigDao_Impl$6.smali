.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "CalibrationConfigDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

.field final synthetic val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 712
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->compute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected compute()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 717
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v2, :cond_0

    .line 718
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6$1;

    const-string v3, "CalibrationConfig"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 724
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 726
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "ref_systolic"

    .line 728
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ref_diastolic"

    .line 729
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "feature"

    .line 730
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hr"

    .line 731
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "mId"

    .line 732
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "datauuid"

    .line 733
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "deviceuuid"

    .line 734
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "pkg_name"

    .line 735
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "create_time"

    .line 736
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "start_time"

    .line 737
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "update_time"

    .line 738
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "time_offset"

    .line 739
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "comment"

    .line 740
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 741
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v16, v14

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 744
    new-instance v14, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-direct {v14}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;-><init>()V

    move-object/from16 v17, v15

    .line 746
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 747
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefSystolic(I)V

    .line 749
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 750
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setRefDiastolic(I)V

    .line 752
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 753
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setFeature(Ljava/lang/String;)V

    .line 755
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 756
    invoke-virtual {v14, v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setHeartRate(I)V

    move/from16 v18, v2

    move/from16 v19, v3

    .line 758
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 759
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setId(J)V

    .line 761
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUuid(Ljava/lang/String;)V

    .line 764
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setDeviceUuid(Ljava/lang/String;)V

    .line 767
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 768
    invoke-virtual {v14, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setPkgName(Ljava/lang/String;)V

    .line 770
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 771
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setCreateTime(J)V

    .line 773
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 774
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setStartTime(J)V

    .line 776
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 777
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setUpdateTime(J)V

    .line 779
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 780
    invoke-virtual {v14, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setTimeOffset(J)V

    move/from16 v2, v16

    .line 782
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {v14, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v17

    .line 784
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

    .line 788
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 789
    throw v2
.end method

.method protected finalize()V
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$6;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
