.class public Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;
.super Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
.source "EcgDataDao_Impl.java"


# instance fields
.field public final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfEcgData:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .registers 3
    .param p1, "roomDatabase"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 28
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__insertionAdapterOfEcgData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 64
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__deletionAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 73
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__updateAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 110
    return-void
.end method

.method private __entityCursorConverter_comSamsungAndroidShealthmonitorEcgRoomdataDataEcgData(Landroid/database/Cursor;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .registers 20
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 873
    const-string v15, "systolic"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 874
    .local v3, "columnIndex":I
    const-string v15, "diastolic"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 875
    .local v8, "columnIndex2":I
    const-string v15, "hr"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 876
    .local v9, "columnIndex3":I
    const-string v15, "mId"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 877
    .local v10, "columnIndex5":I
    const-string v15, "datauuid"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 878
    .local v11, "columnIndex6":I
    const-string v15, "deviceuuid"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 879
    .local v12, "columnIndex7":I
    const-string v15, "pkg_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 880
    .local v13, "columnIndex8":I
    const-string v15, "create_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 881
    .local v14, "columnIndex9":I
    const-string v15, "start_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 882
    .local v4, "columnIndex10":I
    const-string v15, "update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 883
    .local v5, "columnIndex11":I
    const-string v15, "time_offset"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 884
    .local v6, "columnIndex12":I
    const-string v15, "comment"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 885
    .local v7, "columnIndex13":I
    new-instance v2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 886
    .local v2, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    const/4 v15, -0x1

    if-eq v3, v15, :cond_71

    .line 887
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 889
    :cond_71
    const/4 v15, -0x1

    if-eq v8, v15, :cond_7d

    .line 890
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 892
    :cond_7d
    const/4 v15, -0x1

    if-eq v9, v15, :cond_89

    .line 893
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 895
    :cond_89
    const/4 v15, -0x1

    if-eq v10, v15, :cond_97

    .line 896
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 898
    :cond_97
    const/4 v15, -0x1

    if-eq v11, v15, :cond_a3

    .line 899
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 901
    :cond_a3
    const/4 v15, -0x1

    if-eq v12, v15, :cond_af

    .line 902
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 904
    :cond_af
    const/4 v15, -0x1

    if-eq v13, v15, :cond_bb

    .line 905
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 907
    :cond_bb
    const/4 v15, -0x1

    if-eq v14, v15, :cond_c9

    .line 908
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 910
    :cond_c9
    const/4 v15, -0x1

    if-eq v4, v15, :cond_d7

    .line 911
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 913
    :cond_d7
    const/4 v15, -0x1

    if-eq v5, v15, :cond_e5

    .line 914
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 916
    :cond_e5
    const/4 v15, -0x1

    if-eq v6, v15, :cond_f3

    .line 917
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 919
    :cond_f3
    const/4 v15, -0x1

    if-eq v7, v15, :cond_ff

    .line 920
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 922
    :cond_ff
    return-object v2
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I
    .registers 5
    .param p1, "bloodPressureData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 126
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__deletionAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 127
    .local v0, "handle":I
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    .line 130
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 128
    return v0

    .line 130
    .end local v0    # "handle":I
    :catchall_18
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 131
    throw v1
.end method

.method public delete(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 137
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__deletionAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 138
    .local v0, "handleMultiple":I
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    .line 141
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 139
    return v0

    .line 141
    .end local v0    # "handleMultiple":I
    :catchall_18
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 142
    throw v1
.end method

.method public deleteByUuid(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 835
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v3

    .line 836
    .local v3, "newStringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "DELETE FROM EcgData WHERE datauuid IN("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v5}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 838
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 840
    .local v0, "compileStatement":Landroid/arch/persistence/db/SupportSQLiteStatement;
    const/4 v2, 0x1

    .line 841
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 842
    .local v4, "next":Ljava/lang/String;
    if-nez v4, :cond_38

    .line 843
    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 847
    :goto_35
    add-int/lit8 v2, v2, 0x1

    .line 848
    goto :goto_24

    .line 845
    :cond_38
    invoke-interface {v0, v2, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_35

    .line 849
    .end local v4    # "next":Ljava/lang/String;
    :cond_3c
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 851
    :try_start_41
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 852
    .local v1, "executeUpdateDelete":I
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_50

    .line 855
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 853
    return v1

    .line 855
    .end local v1    # "executeUpdateDelete":I
    :catchall_50
    move-exception v5

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v6}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 856
    throw v5
.end method

.method public getAllData()Landroid/arch/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 254
    const-string v1, "SELECT * FROM EcgData order by update_time ASC"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 255
    .local v0, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 315
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$4;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 255
    return-object v1
.end method

.method public getAllDataSync()Ljava/util/List;
    .registers 33
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
    .line 180
    const-string v29, "SELECT * FROM EcgData order by update_time ASC"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    .line 181
    .local v2, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v23

    .line 183
    .local v23, "query":Landroid/database/Cursor;
    :try_start_14
    const-string v29, "systolic"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 184
    .local v8, "columnIndexOrThrow":I
    const-string v29, "diastolic"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 185
    .local v13, "columnIndexOrThrow2":I
    const-string v29, "hr"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 186
    .local v14, "columnIndexOrThrow3":I
    const-string v29, "mId"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 187
    .local v15, "columnIndexOrThrow5":I
    const-string v29, "datauuid"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 188
    .local v16, "columnIndexOrThrow6":I
    const-string v29, "deviceuuid"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 189
    .local v17, "columnIndexOrThrow7":I
    const-string v29, "pkg_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 190
    .local v18, "columnIndexOrThrow8":I
    const-string v29, "create_time"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 191
    .local v19, "columnIndexOrThrow9":I
    const-string v29, "start_time"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 192
    .local v9, "columnIndexOrThrow10":I
    const-string v29, "update_time"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 193
    .local v10, "columnIndexOrThrow11":I
    const-string v29, "time_offset"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_81} :catch_15e

    move-result v11

    .line 194
    .local v11, "columnIndexOrThrow12":I
    move-object/from16 v24, v2

    .line 196
    .local v24, "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :try_start_84
    const-string v29, "comment"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 197
    .local v12, "columnIndexOrThrow13":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v29

    move/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v3, "arrayList":Ljava/util/ArrayList;
    :goto_99
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_9c} :catch_152

    move-result v29

    if-eqz v29, :cond_169

    .line 200
    :try_start_9f
    new-instance v7, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v7}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 201
    .local v7, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object v4, v3

    .line 202
    .local v4, "arrayList2":Ljava/util/ArrayList;
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 203
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 204
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 205
    move/from16 v20, v8

    .line 206
    .local v20, "i":I
    move/from16 v21, v13

    .line 207
    .local v21, "i2":I
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 208
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 212
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 213
    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 214
    move-object/from16 v0, v23

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 215
    move/from16 v22, v12

    .line 216
    .local v22, "i3":I
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 217
    move-object v5, v4

    .line 218
    .local v5, "arrayList3":Ljava/util/ArrayList;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_13d} :catch_146

    .line 219
    move/from16 v12, v22

    .line 220
    move-object v3, v5

    .line 221
    move/from16 v8, v20

    .line 222
    move/from16 v13, v21

    goto/16 :goto_99

    .line 223
    .end local v4    # "arrayList2":Ljava/util/ArrayList;
    .end local v5    # "arrayList3":Ljava/util/ArrayList;
    .end local v7    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v20    # "i":I
    .end local v21    # "i2":I
    .end local v22    # "i3":I
    :catch_146
    move-exception v26

    .line 224
    .local v26, "th2":Ljava/lang/Throwable;
    move-object/from16 v25, v26

    .line 225
    .local v25, "th":Ljava/lang/Throwable;
    move-object/from16 v2, v24

    .line 226
    :try_start_14b
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 228
    throw v25
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_152} :catch_152

    .line 235
    .end local v3    # "arrayList":Ljava/util/ArrayList;
    .end local v12    # "columnIndexOrThrow13":I
    .end local v25    # "th":Ljava/lang/Throwable;
    .end local v26    # "th2":Ljava/lang/Throwable;
    :catch_152
    move-exception v27

    .line 236
    .local v27, "th3":Ljava/lang/Throwable;
    move-object/from16 v25, v27

    .line 237
    .restart local v25    # "th":Ljava/lang/Throwable;
    move-object/from16 v2, v24

    .line 239
    :try_start_157
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 240
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 241
    throw v25
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_15e} :catch_15e

    .line 243
    .end local v8    # "columnIndexOrThrow":I
    .end local v9    # "columnIndexOrThrow10":I
    .end local v10    # "columnIndexOrThrow11":I
    .end local v11    # "columnIndexOrThrow12":I
    .end local v13    # "columnIndexOrThrow2":I
    .end local v14    # "columnIndexOrThrow3":I
    .end local v15    # "columnIndexOrThrow5":I
    .end local v16    # "columnIndexOrThrow6":I
    .end local v17    # "columnIndexOrThrow7":I
    .end local v18    # "columnIndexOrThrow8":I
    .end local v19    # "columnIndexOrThrow9":I
    .end local v24    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    .end local v25    # "th":Ljava/lang/Throwable;
    .end local v27    # "th3":Ljava/lang/Throwable;
    :catch_15e
    move-exception v28

    .line 244
    .local v28, "th4":Ljava/lang/Throwable;
    move-object/from16 v25, v28

    .line 246
    .restart local v25    # "th":Ljava/lang/Throwable;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 250
    const/4 v6, 0x0

    .end local v25    # "th":Ljava/lang/Throwable;
    .end local v28    # "th4":Ljava/lang/Throwable;
    :goto_168
    return-object v6

    .line 231
    .restart local v3    # "arrayList":Ljava/util/ArrayList;
    .restart local v8    # "columnIndexOrThrow":I
    .restart local v9    # "columnIndexOrThrow10":I
    .restart local v10    # "columnIndexOrThrow11":I
    .restart local v11    # "columnIndexOrThrow12":I
    .restart local v12    # "columnIndexOrThrow13":I
    .restart local v13    # "columnIndexOrThrow2":I
    .restart local v14    # "columnIndexOrThrow3":I
    .restart local v15    # "columnIndexOrThrow5":I
    .restart local v16    # "columnIndexOrThrow6":I
    .restart local v17    # "columnIndexOrThrow7":I
    .restart local v18    # "columnIndexOrThrow8":I
    .restart local v19    # "columnIndexOrThrow9":I
    .restart local v24    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :cond_169
    move-object v6, v3

    .line 232
    .local v6, "arrayList4":Ljava/util/ArrayList;
    :try_start_16a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 233
    invoke-virtual/range {v24 .. v24}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_170} :catch_152

    goto :goto_168
.end method

.method public getData(JJ)Landroid/arch/lifecycle/LiveData;
    .registers 8
    .param p1, "j"    # J
    .param p3, "j2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 461
    const-string v1, "SELECT * FROM EcgData where start_time >= ? and start_time < ? order by update_time ASC"

    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 462
    .local v0, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 463
    invoke-virtual {v0, v2, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 464
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 524
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 464
    return-object v1
.end method

.method public getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 664
    .local v2, "newStringBuilder":Ljava/lang/StringBuilder;
    const-string v5, "SELECT * FROM EcgData WHERE datauuid IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 666
    .local v4, "size":I
    invoke-static {v2, v4}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 667
    const-string v5, ") order by update_time ASC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x0

    invoke-static {v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 669
    .local v0, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v1, 0x1

    .line 670
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 671
    .local v3, "next":Ljava/lang/String;
    if-nez v3, :cond_38

    .line 672
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 676
    :goto_35
    add-int/lit8 v1, v1, 0x1

    .line 677
    goto :goto_24

    .line 674
    :cond_38
    invoke-virtual {v0, v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_35

    .line 678
    .end local v3    # "next":Ljava/lang/String;
    :cond_3c
    new-instance v5, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$7;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$7;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 738
    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$7;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    .line 678
    return-object v5
.end method

.method public getDataCount(J)I
    .registers 8
    .param p1, "j"    # J

    .prologue
    const/4 v4, 0x1

    .line 742
    const-string v3, "SELECT COUNT(*) FROM EcgData where mId > ?"

    invoke-static {v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 743
    .local v0, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    invoke-virtual {v0, v4, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 744
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 746
    .local v2, "query":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 747
    .local v1, "i":I
    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 748
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_23

    move-result v1

    .line 752
    :cond_1c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 753
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 750
    return v1

    .line 752
    :catchall_23
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 753
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 754
    throw v3
.end method

.method public getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .registers 22
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v17, "SELECT * FROM EcgData WHERE datauuid = ?"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    .line 530
    .local v2, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    if-nez p1, :cond_fb

    .line 531
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 535
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v16

    .line 537
    .local v16, "query":Landroid/database/Cursor;
    :try_start_1d
    const-string v17, "systolic"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 538
    .local v4, "columnIndexOrThrow":I
    const-string v17, "diastolic"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 539
    .local v9, "columnIndexOrThrow2":I
    const-string v17, "hr"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 540
    .local v10, "columnIndexOrThrow3":I
    const-string v17, "mId"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 541
    .local v11, "columnIndexOrThrow5":I
    const-string v17, "datauuid"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 542
    .local v12, "columnIndexOrThrow6":I
    const-string v17, "deviceuuid"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 543
    .local v13, "columnIndexOrThrow7":I
    const-string v17, "pkg_name"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 544
    .local v14, "columnIndexOrThrow8":I
    const-string v17, "create_time"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 545
    .local v15, "columnIndexOrThrow9":I
    const-string v17, "start_time"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 546
    .local v5, "columnIndexOrThrow10":I
    const-string v17, "update_time"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 547
    .local v6, "columnIndexOrThrow11":I
    const-string v17, "time_offset"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 548
    .local v7, "columnIndexOrThrow12":I
    const-string v17, "comment"

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 549
    .local v8, "columnIndexOrThrow13":I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_106

    .line 550
    new-instance v3, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 551
    .local v3, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 552
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 553
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 554
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 555
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 557
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 559
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 560
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 561
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 562
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_1d .. :try_end_f4} :catchall_108

    .line 568
    :goto_f4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 569
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 566
    return-object v3

    .line 533
    .end local v3    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v4    # "columnIndexOrThrow":I
    .end local v5    # "columnIndexOrThrow10":I
    .end local v6    # "columnIndexOrThrow11":I
    .end local v7    # "columnIndexOrThrow12":I
    .end local v8    # "columnIndexOrThrow13":I
    .end local v9    # "columnIndexOrThrow2":I
    .end local v10    # "columnIndexOrThrow3":I
    .end local v11    # "columnIndexOrThrow5":I
    .end local v12    # "columnIndexOrThrow6":I
    .end local v13    # "columnIndexOrThrow7":I
    .end local v14    # "columnIndexOrThrow8":I
    .end local v15    # "columnIndexOrThrow9":I
    .end local v16    # "query":Landroid/database/Cursor;
    :cond_fb
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 564
    .restart local v4    # "columnIndexOrThrow":I
    .restart local v5    # "columnIndexOrThrow10":I
    .restart local v6    # "columnIndexOrThrow11":I
    .restart local v7    # "columnIndexOrThrow12":I
    .restart local v8    # "columnIndexOrThrow13":I
    .restart local v9    # "columnIndexOrThrow2":I
    .restart local v10    # "columnIndexOrThrow3":I
    .restart local v11    # "columnIndexOrThrow5":I
    .restart local v12    # "columnIndexOrThrow6":I
    .restart local v13    # "columnIndexOrThrow7":I
    .restart local v14    # "columnIndexOrThrow8":I
    .restart local v15    # "columnIndexOrThrow9":I
    .restart local v16    # "query":Landroid/database/Cursor;
    :cond_106
    const/4 v3, 0x0

    .restart local v3    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    goto :goto_f4

    .line 568
    .end local v3    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v4    # "columnIndexOrThrow":I
    .end local v5    # "columnIndexOrThrow10":I
    .end local v6    # "columnIndexOrThrow11":I
    .end local v7    # "columnIndexOrThrow12":I
    .end local v8    # "columnIndexOrThrow13":I
    .end local v9    # "columnIndexOrThrow2":I
    .end local v10    # "columnIndexOrThrow3":I
    .end local v11    # "columnIndexOrThrow5":I
    .end local v12    # "columnIndexOrThrow6":I
    .end local v13    # "columnIndexOrThrow7":I
    .end local v14    # "columnIndexOrThrow8":I
    .end local v15    # "columnIndexOrThrow9":I
    :catchall_108
    move-exception v17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 569
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 570
    throw v17
.end method

.method public getDataSync(JI)Ljava/util/List;
    .registers 39
    .param p1, "j"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    const-string v31, "SELECT * FROM EcgData where mId > ? LIMIT ?"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v4

    .line 760
    .local v4, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 761
    const/16 v31, 0x2

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v31

    move-wide/from16 v1, v32

    invoke-virtual {v4, v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v25

    .line 764
    .local v25, "query":Landroid/database/Cursor;
    :try_start_2b
    const-string v31, "systolic"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 765
    .local v10, "columnIndexOrThrow":I
    const-string v31, "diastolic"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 766
    .local v15, "columnIndexOrThrow2":I
    const-string v31, "hr"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 767
    .local v16, "columnIndexOrThrow3":I
    const-string v31, "mId"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 768
    .local v17, "columnIndexOrThrow5":I
    const-string v31, "datauuid"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 769
    .local v18, "columnIndexOrThrow6":I
    const-string v31, "deviceuuid"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 770
    .local v19, "columnIndexOrThrow7":I
    const-string v31, "pkg_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 771
    .local v20, "columnIndexOrThrow8":I
    const-string v31, "create_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 772
    .local v21, "columnIndexOrThrow9":I
    const-string v31, "start_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 773
    .local v11, "columnIndexOrThrow10":I
    const-string v31, "update_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 774
    .local v12, "columnIndexOrThrow11":I
    const-string v31, "time_offset"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_98} :catch_179

    move-result v13

    .line 775
    .local v13, "columnIndexOrThrow12":I
    move-object/from16 v26, v4

    .line 777
    .local v26, "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :try_start_9b
    const-string v31, "comment"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 778
    .local v14, "columnIndexOrThrow13":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v31

    move/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    .local v5, "arrayList":Ljava/util/ArrayList;
    :goto_b0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_b3} :catch_16d

    move-result v31

    if-eqz v31, :cond_184

    .line 781
    :try_start_b6
    new-instance v9, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v9}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 782
    .local v9, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object v6, v5

    .line 783
    .local v6, "arrayList2":Ljava/util/ArrayList;
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 784
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 785
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 786
    move/from16 v22, v10

    .line 787
    .local v22, "i2":I
    move/from16 v23, v15

    .line 788
    .local v23, "i3":I
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 789
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 790
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 793
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 794
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 795
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 796
    move/from16 v24, v14

    .line 797
    .local v24, "i4":I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 798
    move-object v7, v6

    .line 799
    .local v7, "arrayList3":Ljava/util/ArrayList;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_158} :catch_161

    .line 800
    move/from16 v14, v24

    .line 801
    move-object v5, v7

    .line 802
    move/from16 v10, v22

    .line 803
    move/from16 v15, v23

    goto/16 :goto_b0

    .line 804
    .end local v6    # "arrayList2":Ljava/util/ArrayList;
    .end local v7    # "arrayList3":Ljava/util/ArrayList;
    .end local v9    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v22    # "i2":I
    .end local v23    # "i3":I
    .end local v24    # "i4":I
    :catch_161
    move-exception v28

    .line 805
    .local v28, "th2":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    .line 806
    .local v27, "th":Ljava/lang/Throwable;
    move-object/from16 v4, v26

    .line 807
    :try_start_166
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 808
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 809
    throw v27
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_166 .. :try_end_16d} :catch_16d

    .line 816
    .end local v5    # "arrayList":Ljava/util/ArrayList;
    .end local v14    # "columnIndexOrThrow13":I
    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v28    # "th2":Ljava/lang/Throwable;
    :catch_16d
    move-exception v29

    .line 817
    .local v29, "th3":Ljava/lang/Throwable;
    move-object/from16 v27, v29

    .line 818
    .restart local v27    # "th":Ljava/lang/Throwable;
    move-object/from16 v4, v26

    .line 820
    :try_start_172
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 821
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 822
    throw v27
    :try_end_179
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_179} :catch_179

    .line 824
    .end local v10    # "columnIndexOrThrow":I
    .end local v11    # "columnIndexOrThrow10":I
    .end local v12    # "columnIndexOrThrow11":I
    .end local v13    # "columnIndexOrThrow12":I
    .end local v15    # "columnIndexOrThrow2":I
    .end local v16    # "columnIndexOrThrow3":I
    .end local v17    # "columnIndexOrThrow5":I
    .end local v18    # "columnIndexOrThrow6":I
    .end local v19    # "columnIndexOrThrow7":I
    .end local v20    # "columnIndexOrThrow8":I
    .end local v21    # "columnIndexOrThrow9":I
    .end local v26    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v29    # "th3":Ljava/lang/Throwable;
    :catch_179
    move-exception v30

    .line 825
    .local v30, "th4":Ljava/lang/Throwable;
    move-object/from16 v27, v30

    .line 827
    .restart local v27    # "th":Ljava/lang/Throwable;
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 828
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 831
    const/4 v8, 0x0

    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v30    # "th4":Ljava/lang/Throwable;
    :goto_183
    return-object v8

    .line 812
    .restart local v5    # "arrayList":Ljava/util/ArrayList;
    .restart local v10    # "columnIndexOrThrow":I
    .restart local v11    # "columnIndexOrThrow10":I
    .restart local v12    # "columnIndexOrThrow11":I
    .restart local v13    # "columnIndexOrThrow12":I
    .restart local v14    # "columnIndexOrThrow13":I
    .restart local v15    # "columnIndexOrThrow2":I
    .restart local v16    # "columnIndexOrThrow3":I
    .restart local v17    # "columnIndexOrThrow5":I
    .restart local v18    # "columnIndexOrThrow6":I
    .restart local v19    # "columnIndexOrThrow7":I
    .restart local v20    # "columnIndexOrThrow8":I
    .restart local v21    # "columnIndexOrThrow9":I
    .restart local v26    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :cond_184
    move-object v8, v5

    .line 813
    .local v8, "arrayList4":Ljava/util/ArrayList;
    :try_start_185
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 814
    invoke-virtual/range {v26 .. v26}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_18b} :catch_16d

    goto :goto_183
.end method

.method public getDataSync(JJ)Ljava/util/List;
    .registers 40
    .param p1, "j"    # J
    .param p3, "j2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const-string v31, "SELECT * FROM EcgData where start_time >= ? and start_time < ? order by update_time ASC"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v4

    .line 321
    .local v4, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 322
    const/16 v31, 0x2

    move/from16 v0, v31

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v25

    .line 325
    .local v25, "query":Landroid/database/Cursor;
    :try_start_26
    const-string v31, "systolic"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 326
    .local v10, "columnIndexOrThrow":I
    const-string v31, "diastolic"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 327
    .local v15, "columnIndexOrThrow2":I
    const-string v31, "hr"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 328
    .local v16, "columnIndexOrThrow3":I
    const-string v31, "mId"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 329
    .local v17, "columnIndexOrThrow5":I
    const-string v31, "datauuid"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 330
    .local v18, "columnIndexOrThrow6":I
    const-string v31, "deviceuuid"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 331
    .local v19, "columnIndexOrThrow7":I
    const-string v31, "pkg_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 332
    .local v20, "columnIndexOrThrow8":I
    const-string v31, "create_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 333
    .local v21, "columnIndexOrThrow9":I
    const-string v31, "start_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 334
    .local v11, "columnIndexOrThrow10":I
    const-string v31, "update_time"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 335
    .local v12, "columnIndexOrThrow11":I
    const-string v31, "time_offset"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_93} :catch_174

    move-result v13

    .line 336
    .local v13, "columnIndexOrThrow12":I
    move-object/from16 v26, v4

    .line 338
    .local v26, "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :try_start_96
    const-string v31, "comment"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 339
    .local v14, "columnIndexOrThrow13":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v31

    move/from16 v0, v31

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v5, "arrayList":Ljava/util/ArrayList;
    :goto_ab
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_ae} :catch_168

    move-result v31

    if-eqz v31, :cond_17f

    .line 342
    :try_start_b1
    new-instance v9, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v9}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 343
    .local v9, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object v6, v5

    .line 344
    .local v6, "arrayList2":Ljava/util/ArrayList;
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 345
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 346
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 347
    move/from16 v22, v10

    .line 348
    .local v22, "i":I
    move/from16 v23, v15

    .line 349
    .local v23, "i2":I
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 350
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 354
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 355
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 356
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 357
    move/from16 v24, v14

    .line 358
    .local v24, "i3":I
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 359
    move-object v7, v6

    .line 360
    .local v7, "arrayList3":Ljava/util/ArrayList;
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_153} :catch_15c

    .line 361
    move/from16 v14, v24

    .line 362
    move-object v5, v7

    .line 363
    move/from16 v10, v22

    .line 364
    move/from16 v15, v23

    goto/16 :goto_ab

    .line 365
    .end local v6    # "arrayList2":Ljava/util/ArrayList;
    .end local v7    # "arrayList3":Ljava/util/ArrayList;
    .end local v9    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v22    # "i":I
    .end local v23    # "i2":I
    .end local v24    # "i3":I
    :catch_15c
    move-exception v28

    .line 366
    .local v28, "th2":Ljava/lang/Throwable;
    move-object/from16 v27, v28

    .line 367
    .local v27, "th":Ljava/lang/Throwable;
    move-object/from16 v4, v26

    .line 368
    :try_start_161
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 370
    throw v27
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_168} :catch_168

    .line 377
    .end local v5    # "arrayList":Ljava/util/ArrayList;
    .end local v14    # "columnIndexOrThrow13":I
    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v28    # "th2":Ljava/lang/Throwable;
    :catch_168
    move-exception v29

    .line 378
    .local v29, "th3":Ljava/lang/Throwable;
    move-object/from16 v27, v29

    .line 379
    .restart local v27    # "th":Ljava/lang/Throwable;
    move-object/from16 v4, v26

    .line 381
    :try_start_16d
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 382
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 383
    throw v27
    :try_end_174
    .catch Ljava/lang/Throwable; {:try_start_16d .. :try_end_174} :catch_174

    .line 385
    .end local v10    # "columnIndexOrThrow":I
    .end local v11    # "columnIndexOrThrow10":I
    .end local v12    # "columnIndexOrThrow11":I
    .end local v13    # "columnIndexOrThrow12":I
    .end local v15    # "columnIndexOrThrow2":I
    .end local v16    # "columnIndexOrThrow3":I
    .end local v17    # "columnIndexOrThrow5":I
    .end local v18    # "columnIndexOrThrow6":I
    .end local v19    # "columnIndexOrThrow7":I
    .end local v20    # "columnIndexOrThrow8":I
    .end local v21    # "columnIndexOrThrow9":I
    .end local v26    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v29    # "th3":Ljava/lang/Throwable;
    :catch_174
    move-exception v30

    .line 386
    .local v30, "th4":Ljava/lang/Throwable;
    move-object/from16 v27, v30

    .line 388
    .restart local v27    # "th":Ljava/lang/Throwable;
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 389
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 392
    const/4 v8, 0x0

    .end local v27    # "th":Ljava/lang/Throwable;
    .end local v30    # "th4":Ljava/lang/Throwable;
    :goto_17e
    return-object v8

    .line 373
    .restart local v5    # "arrayList":Ljava/util/ArrayList;
    .restart local v10    # "columnIndexOrThrow":I
    .restart local v11    # "columnIndexOrThrow10":I
    .restart local v12    # "columnIndexOrThrow11":I
    .restart local v13    # "columnIndexOrThrow12":I
    .restart local v14    # "columnIndexOrThrow13":I
    .restart local v15    # "columnIndexOrThrow2":I
    .restart local v16    # "columnIndexOrThrow3":I
    .restart local v17    # "columnIndexOrThrow5":I
    .restart local v18    # "columnIndexOrThrow6":I
    .restart local v19    # "columnIndexOrThrow7":I
    .restart local v20    # "columnIndexOrThrow8":I
    .restart local v21    # "columnIndexOrThrow9":I
    .restart local v26    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :cond_17f
    move-object v8, v5

    .line 374
    .local v8, "arrayList4":Ljava/util/ArrayList;
    :try_start_180
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 375
    invoke-virtual/range {v26 .. v26}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_186} :catch_168

    goto :goto_17e
.end method

.method public getDataSync(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;
    .registers 5
    .param p1, "supportSQLiteQuery"    # Landroid/arch/persistence/db/SupportSQLiteQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 862
    .local v1, "query":Landroid/database/Cursor;
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 863
    .local v0, "arrayList":Ljava/util/ArrayList;
    :goto_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 864
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__entityCursorConverter_comSamsungAndroidShealthmonitorEcgRoomdataDataEcgData(Landroid/database/Cursor;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_f

    .line 868
    .end local v0    # "arrayList":Ljava/util/ArrayList;
    :catchall_1d
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 869
    throw v2

    .line 868
    .restart local v0    # "arrayList":Ljava/util/ArrayList;
    :cond_22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 866
    return-object v0
.end method

.method public getDataSync(Ljava/util/List;)Ljava/util/List;
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v24

    .line 576
    .local v24, "newStringBuilder":Ljava/lang/StringBuilder;
    const-string v33, "SELECT * FROM EcgData WHERE datauuid IN("

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v28

    .line 578
    .local v28, "size":I
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 579
    const-string v33, ") order by update_time ASC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    add-int/lit8 v34, v28, 0x0

    invoke-static/range {v33 .. v34}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v2

    .line 581
    .local v2, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/16 v20, 0x1

    .line 582
    .local v20, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_31
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_4f

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 583
    .local v25, "next":Ljava/lang/String;
    if-nez v25, :cond_47

    .line 584
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 588
    :goto_44
    add-int/lit8 v20, v20, 0x1

    .line 589
    goto :goto_31

    .line 586
    :cond_47
    move/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v2, v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_44

    .line 590
    .end local v25    # "next":Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v26

    .line 592
    .local v26, "query":Landroid/database/Cursor;
    :try_start_5b
    const-string v33, "systolic"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 593
    .local v8, "columnIndexOrThrow":I
    const-string v33, "diastolic"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 594
    .local v13, "columnIndexOrThrow2":I
    const-string v33, "hr"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 595
    .local v14, "columnIndexOrThrow3":I
    const-string v33, "mId"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 596
    .local v15, "columnIndexOrThrow5":I
    const-string v33, "datauuid"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 597
    .local v16, "columnIndexOrThrow6":I
    const-string v33, "deviceuuid"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 598
    .local v17, "columnIndexOrThrow7":I
    const-string v33, "pkg_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 599
    .local v18, "columnIndexOrThrow8":I
    const-string v33, "create_time"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 600
    .local v19, "columnIndexOrThrow9":I
    const-string v33, "start_time"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 601
    .local v9, "columnIndexOrThrow10":I
    const-string v33, "update_time"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 602
    .local v10, "columnIndexOrThrow11":I
    const-string v33, "time_offset"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_c8} :catch_1a5

    move-result v11

    .line 603
    .local v11, "columnIndexOrThrow12":I
    move-object/from16 v27, v2

    .line 605
    .local v27, "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :try_start_cb
    const-string v33, "comment"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 606
    .local v12, "columnIndexOrThrow13":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v33

    move/from16 v0, v33

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
    .local v3, "arrayList":Ljava/util/ArrayList;
    :goto_e0
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_e3} :catch_199

    move-result v33

    if-eqz v33, :cond_1b0

    .line 609
    :try_start_e6
    new-instance v7, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-direct {v7}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>()V

    .line 610
    .local v7, "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    move-object v4, v3

    .line 611
    .local v4, "arrayList2":Ljava/util/ArrayList;
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setSystolic(I)V

    .line 612
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDiastole(I)V

    .line 613
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setHeartRate(I)V

    .line 614
    move/from16 v21, v8

    .line 615
    .local v21, "i2":I
    move/from16 v22, v13

    .line 616
    .local v22, "i3":I
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setId(J)V

    .line 617
    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setDeviceUuid(Ljava/lang/String;)V

    .line 619
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setPkgName(Ljava/lang/String;)V

    .line 620
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setCreateTime(J)V

    .line 621
    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setStartTime(J)V

    .line 622
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUpdateTime(J)V

    .line 623
    move-object/from16 v0, v26

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setTimeOffset(J)V

    .line 624
    move/from16 v23, v12

    .line 625
    .local v23, "i4":I
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setComment(Ljava/lang/String;)V

    .line 626
    move-object v5, v4

    .line 627
    .local v5, "arrayList3":Ljava/util/ArrayList;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_184} :catch_18d

    .line 628
    move/from16 v12, v23

    .line 629
    move-object v3, v5

    .line 630
    move/from16 v8, v21

    .line 631
    move/from16 v13, v22

    goto/16 :goto_e0

    .line 632
    .end local v4    # "arrayList2":Ljava/util/ArrayList;
    .end local v5    # "arrayList3":Ljava/util/ArrayList;
    .end local v7    # "bloodPressureData":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .end local v21    # "i2":I
    .end local v22    # "i3":I
    .end local v23    # "i4":I
    :catch_18d
    move-exception v30

    .line 633
    .local v30, "th2":Ljava/lang/Throwable;
    move-object/from16 v29, v30

    .line 634
    .local v29, "th":Ljava/lang/Throwable;
    move-object/from16 v2, v27

    .line 635
    :try_start_192
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 636
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 637
    throw v29
    :try_end_199
    .catch Ljava/lang/Throwable; {:try_start_192 .. :try_end_199} :catch_199

    .line 644
    .end local v3    # "arrayList":Ljava/util/ArrayList;
    .end local v12    # "columnIndexOrThrow13":I
    .end local v29    # "th":Ljava/lang/Throwable;
    .end local v30    # "th2":Ljava/lang/Throwable;
    :catch_199
    move-exception v31

    .line 645
    .local v31, "th3":Ljava/lang/Throwable;
    move-object/from16 v29, v31

    .line 646
    .restart local v29    # "th":Ljava/lang/Throwable;
    move-object/from16 v2, v27

    .line 648
    :try_start_19e
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 649
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 650
    throw v29
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19e .. :try_end_1a5} :catch_1a5

    .line 652
    .end local v8    # "columnIndexOrThrow":I
    .end local v9    # "columnIndexOrThrow10":I
    .end local v10    # "columnIndexOrThrow11":I
    .end local v11    # "columnIndexOrThrow12":I
    .end local v13    # "columnIndexOrThrow2":I
    .end local v14    # "columnIndexOrThrow3":I
    .end local v15    # "columnIndexOrThrow5":I
    .end local v16    # "columnIndexOrThrow6":I
    .end local v17    # "columnIndexOrThrow7":I
    .end local v18    # "columnIndexOrThrow8":I
    .end local v19    # "columnIndexOrThrow9":I
    .end local v27    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    .end local v29    # "th":Ljava/lang/Throwable;
    .end local v31    # "th3":Ljava/lang/Throwable;
    :catch_1a5
    move-exception v32

    .line 653
    .local v32, "th4":Ljava/lang/Throwable;
    move-object/from16 v29, v32

    .line 655
    .restart local v29    # "th":Ljava/lang/Throwable;
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 656
    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 659
    const/4 v6, 0x0

    .end local v29    # "th":Ljava/lang/Throwable;
    .end local v32    # "th4":Ljava/lang/Throwable;
    :goto_1af
    return-object v6

    .line 640
    .restart local v3    # "arrayList":Ljava/util/ArrayList;
    .restart local v8    # "columnIndexOrThrow":I
    .restart local v9    # "columnIndexOrThrow10":I
    .restart local v10    # "columnIndexOrThrow11":I
    .restart local v11    # "columnIndexOrThrow12":I
    .restart local v12    # "columnIndexOrThrow13":I
    .restart local v13    # "columnIndexOrThrow2":I
    .restart local v14    # "columnIndexOrThrow3":I
    .restart local v15    # "columnIndexOrThrow5":I
    .restart local v16    # "columnIndexOrThrow6":I
    .restart local v17    # "columnIndexOrThrow7":I
    .restart local v18    # "columnIndexOrThrow8":I
    .restart local v19    # "columnIndexOrThrow9":I
    .restart local v27    # "roomSQLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :cond_1b0
    move-object v6, v3

    .line 641
    .local v6, "arrayList4":Ljava/util/ArrayList;
    :try_start_1b1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 642
    invoke-virtual/range {v27 .. v27}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1b7} :catch_199

    goto :goto_1af
.end method

.method public getLatestDataSync()Landroid/arch/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 396
    const-string v1, "SELECT * FROM EcgData order by start_time DESC LIMIT 7"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 397
    .local v0, "acquire":Landroid/arch/persistence/room/RoomSQLiteQuery;
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$5;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 457
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$5;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 397
    return-object v1
.end method

.method public insert(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J
    .registers 6
    .param p1, "bloodPressureData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 115
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__insertionAdapterOfEcgData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 116
    .local v0, "insertAndReturnId":J
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    .line 119
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 117
    return-wide v0

    .line 119
    .end local v0    # "insertAndReturnId":J
    :catchall_16
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v3}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 120
    throw v2
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 170
    :try_start_5
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "insert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 174
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 172
    return-object v0

    .line 174
    .end local v0    # "insert":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_14
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 175
    throw v1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I
    .registers 5
    .param p1, "bloodPressureData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 148
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__updateAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 149
    .local v0, "handle":I
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    .line 152
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 150
    return v0

    .line 152
    .end local v0    # "handle":I
    :catchall_18
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 153
    throw v1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 19
    check-cast p1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I

    move-result v0

    return v0
.end method

.method public update(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 159
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__updateAdapterOfEcgData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 160
    .local v0, "handleMultiple":I
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    .line 163
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 161
    return v0

    .line 163
    .end local v0    # "handleMultiple":I
    :catchall_18
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 164
    throw v1
.end method
