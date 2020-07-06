.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;
.super Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;
.source "BloodPressureDataDao_Impl.java"


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __deletionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityInsertionAdapter;

.field private final __updateAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 36
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__insertionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 79
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__deletionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    .line 90
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__updateAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    return-void
.end method

.method private __entityCursorConverter_comSamsungAndroidShealthmonitorBpRoomdataDataBloodPressureData(Landroid/database/Cursor;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
    .locals 14

    const-string p0, "systolic"

    .line 1047
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "diastolic"

    .line 1048
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "hr"

    .line 1049
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "calibration_datauuid"

    .line 1050
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "mId"

    .line 1051
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "datauuid"

    .line 1052
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "deviceuuid"

    .line 1053
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pkg_name"

    .line 1054
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "create_time"

    .line 1055
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "start_time"

    .line 1056
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "update_time"

    .line 1057
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "time_offset"

    .line 1058
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "comment"

    .line 1059
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1060
    new-instance v12, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v12}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    const/4 v13, -0x1

    if-eq p0, v13, :cond_0

    .line 1063
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 1064
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    :cond_0
    if-eq v0, v13, :cond_1

    .line 1068
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 1069
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    :cond_1
    if-eq v1, v13, :cond_2

    .line 1073
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 1074
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    :cond_2
    if-eq v2, v13, :cond_3

    .line 1078
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    :cond_3
    if-eq v3, v13, :cond_4

    .line 1083
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1084
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    :cond_4
    if-eq v4, v13, :cond_5

    .line 1088
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1089
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    :cond_5
    if-eq v5, v13, :cond_6

    .line 1093
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1094
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    :cond_6
    if-eq v6, v13, :cond_7

    .line 1098
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1099
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    :cond_7
    if-eq v7, v13, :cond_8

    .line 1103
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1104
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    :cond_8
    if-eq v8, v13, :cond_9

    .line 1108
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1109
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    :cond_9
    if-eq v9, v13, :cond_a

    .line 1113
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1114
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    :cond_a
    if-eq v10, v13, :cond_b

    .line 1118
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1119
    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    :cond_b
    if-eq v11, v13, :cond_c

    .line 1123
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1124
    invoke-virtual {v12, p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    :cond_c
    return-object v12
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public delete(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__deletionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 158
    throw p1
.end method

.method public delete(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)I"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__deletionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 171
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

    .line 1002
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE FROM BloodPressureData WHERE datauuid IN("

    .line 1003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1005
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 1006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 1010
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

    .line 1012
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 1014
    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 1020
    :try_start_0
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 1025
    throw p1
.end method

.method public getAllData()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM BloodPressureData order by update_time ASC"

    const/4 v1, 0x0

    .line 286
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 371
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$4;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDataSync()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM BloodPressureData order by update_time ASC"

    const/4 v2, 0x0

    .line 215
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    move-object/from16 v2, p0

    .line 216
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "systolic"

    .line 218
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "diastolic"

    .line 219
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hr"

    .line 220
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "calibration_datauuid"

    .line 221
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 222
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 223
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 224
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 225
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 226
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 227
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 228
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 229
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 230
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 231
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 234
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    move-object/from16 v18, v1

    .line 236
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 237
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 239
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 240
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 242
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 243
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 245
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 248
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 249
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 251
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 254
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 257
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 260
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 261
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 263
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 264
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 266
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 267
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 269
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 270
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 272
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 274
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v3, v1

    .line 278
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 279
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 278
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 279
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 280
    throw v3
.end method

.method public getData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM BloodPressureData where start_time >= ? and start_time < ? order by update_time ASC"

    const/4 v1, 0x2

    .line 543
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 545
    invoke-virtual {v0, v2, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 547
    invoke-virtual {v0, v1, p3, p4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 548
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$6;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$6;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 632
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$6;->getLiveData()Landroid/arch/lifecycle/LiveData;

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
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    .line 800
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM BloodPressureData WHERE datauuid IN("

    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 803
    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ") order by update_time ASC"

    .line 804
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x0

    .line 807
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 809
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

    .line 811
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 813
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$7;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$7;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 901
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$7;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataCount(J)I
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM BloodPressureData where mId > ?"

    const/4 v1, 0x1

    .line 907
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 909
    invoke-virtual {v0, v1, p1, p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 910
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    .line 913
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 914
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 921
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return p2

    :catchall_0
    move-exception p1

    .line 920
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 921
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 922
    throw p1
.end method

.method public getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
    .locals 14

    const-string v0, "SELECT * FROM BloodPressureData WHERE datauuid = ?"

    const/4 v1, 0x1

    .line 638
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 641
    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 645
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "systolic"

    .line 647
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    const-string v1, "diastolic"

    .line 648
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "hr"

    .line 649
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "calibration_datauuid"

    .line 650
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mId"

    .line 651
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "datauuid"

    .line 652
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "deviceuuid"

    .line 653
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "pkg_name"

    .line 654
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "create_time"

    .line 655
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "start_time"

    .line 656
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "update_time"

    .line 657
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "time_offset"

    .line 658
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "comment"

    .line 659
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 661
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 662
    new-instance v13, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v13}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    .line 664
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 665
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 667
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 668
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 670
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 671
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 673
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    .line 676
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 677
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 679
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 680
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 682
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 685
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 688
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 689
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 691
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 692
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 694
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 695
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 697
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 698
    invoke-virtual {v13, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    .line 700
    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 701
    invoke-virtual {v13, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 707
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 708
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v13

    :catchall_0
    move-exception p1

    .line 707
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 708
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 709
    throw p1
.end method

.method public getDataSync(JI)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM BloodPressureData where mId > ? LIMIT ?"

    const/4 v2, 0x2

    .line 928
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 930
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move/from16 v3, p3

    int-to-long v3, v3

    .line 932
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 933
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "systolic"

    .line 935
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "diastolic"

    .line 936
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hr"

    .line 937
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "calibration_datauuid"

    .line 938
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 939
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 940
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 941
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 942
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 943
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 944
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 945
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 946
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 947
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 948
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 951
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    move-object/from16 v18, v1

    .line 953
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 954
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 956
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 957
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 959
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 960
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 962
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 965
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 966
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 968
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 971
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 974
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 977
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 978
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 980
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 981
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 983
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 984
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 986
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 987
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 989
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 990
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 991
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v3, v1

    .line 995
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 996
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 995
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 996
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 997
    throw v3
.end method

.method public getDataSync(JJ)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    const-string v1, "SELECT * FROM BloodPressureData where start_time >= ? and start_time < ? order by update_time ASC"

    const/4 v2, 0x2

    .line 377
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    const/4 v3, 0x1

    move-wide/from16 v4, p1

    .line 379
    invoke-virtual {v1, v3, v4, v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v3, p3

    .line 381
    invoke-virtual {v1, v2, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-object/from16 v2, p0

    .line 382
    iget-object v2, v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "systolic"

    .line 384
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "diastolic"

    .line 385
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hr"

    .line 386
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "calibration_datauuid"

    .line 387
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 388
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 389
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 390
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 391
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 392
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 393
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 394
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 395
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 396
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 397
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_0

    .line 400
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    move-object/from16 v18, v1

    .line 402
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 403
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 405
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 406
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 408
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 409
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 411
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 414
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 415
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 417
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 420
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 423
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 426
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 427
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 429
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 430
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 432
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 433
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 435
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 436
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 438
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 440
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_2

    :cond_0
    move-object v3, v1

    .line 444
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 445
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_1
    move-object v3, v0

    .line 444
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 445
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 446
    throw v3
.end method

.method public getDataSync(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 1033
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1034
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1036
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__entityCursorConverter_comSamsungAndroidShealthmonitorBpRoomdataDataBloodPressureData(Landroid/database/Cursor;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    move-result-object v1

    .line 1037
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1041
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1042
    throw p0
.end method

.method public getDataSync(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/arch/persistence/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT * FROM BloodPressureData WHERE datauuid IN("

    .line 715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 717
    invoke-static {v1, v2}, Landroid/arch/persistence/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ") order by update_time ASC"

    .line 718
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 721
    invoke-static {v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v1

    .line 723
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

    .line 725
    invoke-virtual {v1, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 727
    :cond_0
    invoke-virtual {v1, v3, v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    .line 731
    iget-object v2, v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "systolic"

    .line 733
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "diastolic"

    .line 734
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "hr"

    .line 735
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "calibration_datauuid"

    .line 736
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "mId"

    .line 737
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "datauuid"

    .line 738
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "deviceuuid"

    .line 739
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "pkg_name"

    .line 740
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "create_time"

    .line 741
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "start_time"

    .line 742
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_time"

    .line 743
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "time_offset"

    .line 744
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "comment"

    .line 745
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v1

    .line 746
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v17, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 747
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_2

    .line 749
    :try_start_2
    new-instance v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>()V

    move-object/from16 v18, v1

    .line 751
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 752
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setSystolic(I)V

    .line 754
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 755
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDiastole(I)V

    .line 757
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 758
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setHeartRate(I)V

    .line 760
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCalUuid(Ljava/lang/String;)V

    move/from16 v19, v3

    move/from16 v20, v4

    .line 763
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 764
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setId(J)V

    .line 766
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    .line 769
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setDeviceUuid(Ljava/lang/String;)V

    .line 772
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-virtual {v15, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setPkgName(Ljava/lang/String;)V

    .line 775
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 776
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setCreateTime(J)V

    .line 778
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 779
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setStartTime(J)V

    .line 781
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 782
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUpdateTime(J)V

    .line 784
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 785
    invoke-virtual {v15, v3, v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setTimeOffset(J)V

    move/from16 v1, v17

    .line 787
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-virtual {v15, v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    move-object/from16 v3, v18

    .line 789
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v17, v1

    move-object v1, v3

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v1, v16

    goto :goto_4

    :cond_2
    move-object v3, v1

    .line 793
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 794
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    move-object v3, v0

    .line 793
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 794
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 795
    throw v3
.end method

.method public getLatestDataSync()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM BloodPressureData order by start_time DESC LIMIT 7"

    const/4 v1, 0x0

    .line 452
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 453
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 537
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$5;->getLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__insertionAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 141
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 145
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 204
    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 209
    throw p1
.end method

.method public update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__updateAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 184
    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I

    move-result p0

    return p0
.end method

.method public update(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)I"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__updateAdapterOfBloodPressureData:Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 197
    throw p1
.end method
