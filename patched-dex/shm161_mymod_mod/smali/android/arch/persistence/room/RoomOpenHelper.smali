.class public Landroid/arch/persistence/room/RoomOpenHelper;
.super Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

.field private final mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

.field private final mIdentityHash:Ljava/lang/String;

.field private final mLegacyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget v0, p2, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 54
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    .line 55
    iput-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    .line 56
    iput-object p3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    return-void
.end method

.method private checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 123
    invoke-static {p1}, Landroid/arch/persistence/room/RoomOpenHelper;->hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 127
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 131
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 134
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 135
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 147
    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z
    .locals 2

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 151
    invoke-interface {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 155
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 157
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 143
    iget-object p0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {p0}, Landroid/arch/persistence/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 73
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 74
    iget-object p0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/persistence/room/RoomOpenHelper;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 116
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    return-void
.end method

.method public onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 2

    .line 80
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v0, v0, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p2, p3}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/migration/Migration;

    .line 85
    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/migration/Migration;->migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 88
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 93
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    invoke-virtual {v0, p2}, Landroid/arch/persistence/room/DatabaseConfiguration;->isMigrationRequiredFrom(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p2, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 95
    iget-object p0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void

    .line 97
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "A migration from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method
