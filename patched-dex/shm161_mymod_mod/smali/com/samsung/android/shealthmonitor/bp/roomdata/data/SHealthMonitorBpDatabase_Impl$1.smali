.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "SHealthMonitorBpDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;I)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `BloodPressureData` (`systolic` INTEGER NOT NULL, `diastolic` INTEGER NOT NULL, `hr` INTEGER NOT NULL, `calibration_datauuid` TEXT, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)"

    .line 34
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_BloodPressureData_datauuid` ON `BloodPressureData` (`datauuid`)"

    .line 35
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `CalibrationConfig` (`ref_systolic` INTEGER NOT NULL, `ref_diastolic` INTEGER NOT NULL, `feature` TEXT, `hr` INTEGER NOT NULL, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)"

    .line 36
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX `index_CalibrationConfig_datauuid` ON `CalibrationConfig` (`datauuid`)"

    .line 37
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 38
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"a4f57f4d26b1e8cdcf905cdc34f07cbb\")"

    .line 39
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "DROP TABLE IF EXISTS `BloodPressureData`"

    .line 44
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `CalibrationConfig`"

    .line 45
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$000(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$100(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$200(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

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

    .line 59
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$302(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$400(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$500(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$600(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;->access$700(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase_Impl;)Ljava/util/List;

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
    .locals 8

    .line 70
    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "systolic"

    .line 71
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "systolic"

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "diastolic"

    .line 72
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "diastolic"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hr"

    .line 73
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "hr"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "calibration_datauuid"

    .line 74
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "calibration_datauuid"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mId"

    .line 75
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "mId"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "datauuid"

    .line 76
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "datauuid"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceuuid"

    .line 77
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "deviceuuid"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pkg_name"

    .line 78
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "pkg_name"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "create_time"

    .line 79
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "create_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "start_time"

    .line 80
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "start_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "update_time"

    .line 81
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "update_time"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time_offset"

    .line 82
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "time_offset"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "comment"

    .line 83
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v3, "comment"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 85
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 86
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v4, "index_BloodPressureData_datauuid"

    const-string v7, "datauuid"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v4, v5, v7}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo;

    const-string v4, "BloodPressureData"

    invoke-direct {v3, v4, p0, v1, v2}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string p0, "BloodPressureData"

    .line 88
    invoke-static {p1, p0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p0

    .line 89
    invoke-virtual {v3, p0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle BloodPressureData(com.samsung.android.shealthmonitor.bp.roomdata.data.BloodPressureData).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "ref_systolic"

    .line 95
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "ref_systolic"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ref_diastolic"

    .line 96
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "ref_diastolic"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "feature"

    .line 97
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "feature"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hr"

    .line 98
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "hr"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mId"

    .line 99
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "mId"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "datauuid"

    .line 100
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "datauuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceuuid"

    .line 101
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "deviceuuid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pkg_name"

    .line 102
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "pkg_name"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "create_time"

    .line 103
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "create_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "start_time"

    .line 104
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "start_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "update_time"

    .line 105
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "update_time"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time_offset"

    .line 106
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "time_offset"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3, v5, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comment"

    .line 107
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v2, "comment"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 110
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v3, "index_CalibrationConfig_datauuid"

    const-string v4, "datauuid"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v5, v4}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    const-string v3, "CalibrationConfig"

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string p0, "CalibrationConfig"

    .line 112
    invoke-static {p1, p0}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object p0

    .line 113
    invoke-virtual {v2, p0}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Migration didn\'t properly handle CalibrationConfig(com.samsung.android.shealthmonitor.bp.roomdata.data.CalibrationConfig).\n Expected:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
