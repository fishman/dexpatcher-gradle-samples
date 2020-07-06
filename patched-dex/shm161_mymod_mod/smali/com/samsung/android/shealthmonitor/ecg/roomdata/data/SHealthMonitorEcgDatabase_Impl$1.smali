.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "SHealthMonitorEcgDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;
    .param p2, "x0"    # I

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1, "supportSQLiteDatabase"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 22
    const-string v0, "CREATE TABLE IF NOT EXISTS `EcgData` (`systolic` INTEGER NOT NULL, `diastolic` INTEGER NOT NULL, `hr` INTEGER NOT NULL, `calibration_datauuid` TEXT, `mId` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `datauuid` TEXT, `deviceuuid` TEXT, `pkg_name` TEXT, `create_time` INTEGER NOT NULL, `start_time` INTEGER NOT NULL, `update_time` INTEGER NOT NULL, `time_offset` INTEGER NOT NULL, `comment` TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    const-string v0, "CREATE UNIQUE INDEX `index_EcgData_datauuid` ON `EcgData` (`datauuid`)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(43, \"bfb72222c15431bec04ad7231bc3f811\")"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1, "supportSQLiteDatabase"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 29
    const-string v0, "DROP TABLE IF EXISTS `EcgData`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 5
    .param p1, "supportSQLiteDatabase"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$000(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 35
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$100(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 36
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_27

    .line 37
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$200(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 40
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_27
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 6
    .param p1, "supportSQLiteDatabase"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 43
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # setter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;
    invoke-static {v3, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$302(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 44
    .local v2, "unused":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # invokes: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    invoke-static {v3, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$400(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 45
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$500(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 46
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$600(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 47
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v1, :cond_32

    .line 48
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;

    # getter for: Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->mCallbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;->access$700(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/persistence/room/RoomDatabase$Callback;

    invoke-virtual {v3, p1}, Landroid/arch/persistence/room/RoomDatabase$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 51
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_32
    return-void
.end method

.method public validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 16
    .param p1, "supportSQLiteDatabase"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    const/16 v13, 0xd

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    .local v0, "hashMap":Ljava/util/HashMap;
    const-string v7, "systolic"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "systolic"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v7, "diastolic"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "diastolic"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v7, "hr"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "hr"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v7, "mId"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "mId"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v12}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v7, "datauuid"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "datauuid"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v7, "deviceuuid"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "deviceuuid"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v7, "pkg_name"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "pkg_name"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v7, "create_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "create_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v7, "start_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "start_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v7, "update_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "update_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v7, "time_offset"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "time_offset"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v7, "comment"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "comment"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .local v2, "hashSet":Ljava/util/HashSet;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    .line 70
    .local v3, "hashSet2":Ljava/util/HashSet;
    new-instance v7, Landroid/arch/persistence/room/util/TableInfo$Index;

    const-string v8, "index_EcgData_datauuid"

    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "datauuid"

    aput-object v10, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v12, v9}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v6, Landroid/arch/persistence/room/util/TableInfo;

    const-string v7, "EcgData"

    invoke-direct {v6, v7, v0, v2, v3}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 72
    .local v6, "tableInfo":Landroid/arch/persistence/room/util/TableInfo;
    const-string v7, "EcgData"

    invoke-static {p1, v7}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v5

    .line 73
    .local v5, "read":Landroid/arch/persistence/room/util/TableInfo;
    invoke-virtual {v6, v5}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_105

    .line 74
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Migration didn\'t properly handle EcgData(com.samsung.android.shealthmonitor.bp.roomdata.data.EcgData).\n Expected:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n Found:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    .local v1, "hashMap2":Ljava/util/HashMap;
    const-string v7, "ref_systolic"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "ref_systolic"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v7, "ref_diastolic"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "ref_diastolic"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v7, "feature"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "feature"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v7, "hr"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "hr"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v7, "mId"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "mId"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v12}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v7, "datauuid"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "datauuid"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v7, "deviceuuid"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "deviceuuid"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v7, "pkg_name"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "pkg_name"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v7, "create_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "create_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v7, "start_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "start_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v7, "update_time"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "update_time"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v7, "time_offset"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "time_offset"

    const-string v10, "INTEGER"

    invoke-direct {v8, v9, v10, v12, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v7, "comment"

    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v9, "comment"

    const-string v10, "TEXT"

    invoke-direct {v8, v9, v10, v11, v11}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .local v4, "hashSet3":Ljava/util/HashSet;
    return-void
.end method
