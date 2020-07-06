.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;
.super Landroid/arch/lifecycle/ComputableLiveData;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/ComputableLiveData<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private _observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

.field final synthetic val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {p0}, Landroid/arch/lifecycle/ComputableLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected compute()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;
    .locals 21

    move-object/from16 v1, p0

    .line 1073
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    if-nez v2, :cond_0

    .line 1074
    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9$1;

    const-string v3, "DeviceProfile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 1080
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->_observer:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 1082
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v2, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "name"

    .line 1084
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "model"

    .line 1085
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "manufacturer"

    .line 1086
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "device_group"

    .line 1087
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "connectivity_type"

    .line 1088
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "device_type"

    .line 1089
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "fixed_name"

    .line 1090
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "capability"

    .line 1091
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "mId"

    .line 1092
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "datauuid"

    .line 1093
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "deviceuuid"

    .line 1094
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "pkg_name"

    .line 1095
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "create_time"

    .line 1096
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "start_time"

    .line 1097
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "update_time"

    .line 1098
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "time_offset"

    .line 1099
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "comment"

    .line 1100
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1102
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_1

    move/from16 v20, v15

    .line 1103
    new-instance v15, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {v15}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    .line 1105
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    .line 1108
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setModel(Ljava/lang/String;)V

    .line 1111
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1112
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setManufacturer(Ljava/lang/String;)V

    .line 1114
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1115
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceGroup(I)V

    .line 1117
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1118
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setConnectivityType(I)V

    .line 1120
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1121
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceType(I)V

    .line 1123
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setFixedName(Ljava/lang/String;)V

    .line 1126
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1127
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    .line 1129
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1130
    invoke-virtual {v15, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setId(J)V

    .line 1132
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1133
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUuid(Ljava/lang/String;)V

    .line 1135
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1136
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    .line 1138
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setPkgName(Ljava/lang/String;)V

    .line 1141
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1142
    invoke-virtual {v15, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    move/from16 v2, v16

    .line 1144
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1145
    invoke-virtual {v15, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    move/from16 v2, v17

    .line 1147
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1148
    invoke-virtual {v15, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setUpdateTime(J)V

    move/from16 v2, v18

    .line 1150
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1151
    invoke-virtual {v15, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setTimeOffset(J)V

    move/from16 v2, v20

    .line 1153
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-virtual {v15, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setComment(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 1160
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v15

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1161
    throw v2
.end method

.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 0

    .line 1068
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->compute()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .locals 0

    .line 1166
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$9;->val$_statement:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-void
.end method
