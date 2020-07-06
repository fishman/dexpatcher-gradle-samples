.class Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "SHealthMonitorDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `DeleteTable` (`table_name` TEXT, `data_uuid` TEXT, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)"

    .line 36
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `DeviceProfile` (`name` TEXT, `model` TEXT, `manufacturer` TEXT, `device_group` INTEGER NOT NULL, `connectivity_type` INTEGER NOT NULL, `device_type` INTEGER NOT NULL, `fixed_name` TEXT, `capability` BLOB, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)"

    .line 37
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_DeviceProfile_deviceuuid` ON `DeviceProfile` (`deviceuuid`)"

    .line 38
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `HealthSdkSyncedData` (`datauuid` TEXT NOT NULL, `samsung_health_data_uuid` TEXT NOT NULL, `sdk_data_type` TEXT NOT NULL, `updated` INTEGER NOT NULL, `deleted` INTEGER NOT NULL, PRIMARY KEY(`datauuid`))"

    .line 39
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_HealthSdkSyncedData_datauuid` ON `HealthSdkSyncedData` (`datauuid`)"

    .line 40
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 41
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"9ddd029448117edf4ff7cf4e1b8b929b\")"

    .line 42
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS `DeleteTable`"

    .line 47
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `DeviceProfile`"

    .line 48
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `HealthSdkSyncedData`"

    .line 49
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$000(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$100(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$200(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$302(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$400(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$500(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$600(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;->access$700(Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 7

    .line 74
    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "table_name"

    .line 75
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "table_name"

    const-string v3, "TEXT"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "data_uuid"

    .line 76
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "data_uuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mId"

    .line 77
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "mId"

    const-string v3, "INTEGER"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datauuid"

    .line 78
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "datauuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceuuid"

    .line 79
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "deviceuuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pkg_name"

    .line 80
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "pkg_name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "create_time"

    .line 81
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "create_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start_time"

    .line 82
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "start_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "update_time"

    .line 83
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "update_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time_offset"

    .line 84
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "time_offset"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comment"

    .line 85
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "comment"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 87
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 88
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v3, "DeleteTable"

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string p0, "DeleteTable"

    .line 89
    invoke-static {p1, p0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p0

    .line 90
    invoke-virtual {v2, p0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle DeleteTable(com.samsung.android.shealthmonitor.dataroom.data.DeleteTable).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "name"

    .line 96
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "model"

    .line 97
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "model"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "manufacturer"

    .line 98
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "manufacturer"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_group"

    .line 99
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "device_group"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectivity_type"

    .line 100
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "connectivity_type"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_type"

    .line 101
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "device_type"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fixed_name"

    .line 102
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "fixed_name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "capability"

    .line 103
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "capability"

    const-string v3, "BLOB"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mId"

    .line 104
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "mId"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datauuid"

    .line 105
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "datauuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceuuid"

    .line 106
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "deviceuuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pkg_name"

    .line 107
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "pkg_name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "create_time"

    .line 108
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "create_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start_time"

    .line 109
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "start_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "update_time"

    .line 110
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "update_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time_offset"

    .line 111
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "time_offset"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comment"

    .line 112
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "comment"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 115
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v3, "index_DeviceProfile_deviceuuid"

    const-string v6, "deviceuuid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v3, "DeviceProfile"

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string p0, "DeviceProfile"

    .line 117
    invoke-static {p1, p0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p0

    .line 118
    invoke-virtual {v2, p0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle DeviceProfile(com.samsung.android.shealthmonitor.dataroom.data.DeviceProfile).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "datauuid"

    .line 124
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "datauuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "samsung_health_data_uuid"

    .line 125
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "samsung_health_data_uuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_data_type"

    .line 126
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "sdk_data_type"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "updated"

    .line 127
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "updated"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deleted"

    .line 128
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "deleted"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 131
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v3, "index_HealthSdkSyncedData_datauuid"

    const-string v4, "datauuid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v3, "HealthSdkSyncedData"

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string p0, "HealthSdkSyncedData"

    .line 133
    invoke-static {p1, p0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p0

    .line 134
    invoke-virtual {v2, p0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 135
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle HealthSdkSyncedData(com.samsung.android.shealthmonitor.dataroom.data.HealthSdkSyncedData).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
