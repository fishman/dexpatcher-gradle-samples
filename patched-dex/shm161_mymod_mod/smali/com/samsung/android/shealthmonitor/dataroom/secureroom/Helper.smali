.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;
    }
.end annotation


# instance fields
.field private final delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

.field private final passphrase:[B


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;[BLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->createDelegate(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    .line 25
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->passphrase:[B

    return-void
.end method

.method private createDelegate(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;
    .locals 6

    const/4 p0, 0x1

    .line 30
    new-array v3, p0, [Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    .line 32
    new-instance p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 85
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 4

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->passphrase:[B

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->getWritableSupportDatabase([B)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->passphrase:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->passphrase:[B

    aput-byte v1, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWriteAheadLoggingEnabled(Z)V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper;->delegate:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->setWriteAheadLoggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method
