.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenHelper"
.end annotation


# instance fields
.field private volatile callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

.field private final dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

.field private volatile migrated:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/String;)V
    .locals 7

    .line 96
    iget v4, p4, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->version:I

    new-instance v5, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;

    invoke-direct {v5, p5}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;

    invoke-direct {v6, p3, p4}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;-><init>([Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V

    .line 116
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    .line 117
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    return-void
.end method

.method static final synthetic lambda$new$0$Helper$OpenHelper([Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    const/4 p2, 0x0

    .line 109
    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p1, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-super {p0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->close()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 193
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;
    .locals 2

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    aput-object v0, p1, v1

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->dbRef:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    aget-object p1, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getWritableSupportDatabase([B)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->migrated:Z

    .line 123
    invoke-super {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->migrated:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->close()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWritableSupportDatabase([B)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 130
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 120
    monitor-exit p0

    throw p1
.end method

.method public onConfigure(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->migrated:Z

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->migrated:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->migrated:Z

    .line 158
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWrappedDb(Lnet/sqlcipher/database/SQLiteDatabase;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    return-void
.end method
