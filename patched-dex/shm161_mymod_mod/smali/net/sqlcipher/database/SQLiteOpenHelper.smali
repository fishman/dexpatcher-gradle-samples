.class public abstract Lnet/sqlcipher/database/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteOpenHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mDeferSetWriteAheadLoggingEnabled:Z

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

.field private final mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

.field private final mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V
    .locals 7

    .line 65
    new-instance v6, Lnet/sqlcipher/DefaultDatabaseErrorHandler;

    invoke-direct {v6}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;)V
    .locals 7

    .line 82
    new-instance v6, Lnet/sqlcipher/DefaultDatabaseErrorHandler;

    invoke-direct {v6}, Lnet/sqlcipher/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-gtz p4, :cond_0

    .line 104
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Version must be >= 1, was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p6, :cond_1

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DatabaseErrorHandler param value can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_1
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    .line 112
    iput p4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    .line 113
    iput-object p5, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    .line 114
    iput-object p6, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 282
    monitor-exit p0

    throw v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 224
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getReadableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 11

    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-object p1

    .line 236
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_1

    .line 237
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getReadableDatabase called recursively"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 241
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v1, :cond_2

    throw v0

    .line 244
    :cond_2
    sget-object v1, Lnet/sqlcipher/database/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for writing (will try read-only):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    :try_start_4
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 250
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 251
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 258
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 259
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    :try_start_5
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 261
    invoke-virtual {v4}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, v4

    goto/16 :goto_1

    .line 263
    :cond_4
    :goto_0
    :try_start_6
    iget-object v6, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    const/4 v7, 0x1

    iget-object v8, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    iget-object v9, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    move-object v4, v3

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;[BLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 264
    :try_start_7
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v0

    iget v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    if-eq v0, v1, :cond_5

    .line 265
    new-instance v0, Lnet/sqlcipher/database/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t upgrade read-only database from version "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_5
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 270
    sget-object v0, Lnet/sqlcipher/database/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Opened "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in read-only mode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 272
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 274
    :try_start_8
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz p1, :cond_6

    .line 275
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eq p1, v1, :cond_6

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 272
    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 274
    :goto_1
    :try_start_9
    iput-boolean v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz p1, :cond_7

    .line 275
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eq p1, v1, :cond_7

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 276
    :cond_7
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 231
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getReadableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 228
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getBytes([C)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getReadableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 6

    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object p1

    .line 143
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_1

    .line 144
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getWritableDatabase called recursively"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 157
    :try_start_2
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 158
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string p1, ""

    .line 159
    invoke-static {v2, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->create(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_4
    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mFactory:Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mHook:Lnet/sqlcipher/database/SQLiteDatabaseHook;

    iget-object v5, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mErrorHandler:Lnet/sqlcipher/DatabaseErrorHandler;

    invoke-static {v0, p1, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;[BLnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Lnet/sqlcipher/database/SQLiteDatabaseHook;Lnet/sqlcipher/DatabaseErrorHandler;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1

    goto :goto_0

    .line 168
    :goto_1
    iget-boolean p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDeferSetWriteAheadLoggingEnabled:Z

    if-eqz p1, :cond_5

    .line 169
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->enableWriteAheadLogging()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    .line 171
    :cond_5
    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onConfigure(Lnet/sqlcipher/database/SQLiteDatabase;)V

    .line 172
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result p1

    .line 173
    iget v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    if-eq p1, v0, :cond_8

    .line 174
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_6

    .line 177
    :try_start_3
    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 179
    :cond_6
    iget v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    if-le p1, v0, :cond_7

    .line 180
    iget v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v2, p1, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    goto :goto_2

    .line 182
    :cond_7
    iget v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v2, p1, v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V

    .line 185
    :goto_2
    iget p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v2, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setVersion(I)V

    .line 186
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :goto_3
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 189
    throw p1

    .line 192
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :try_start_5
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 198
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_9

    .line 199
    :try_start_6
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 200
    :catch_0
    :try_start_7
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 202
    :cond_9
    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    monitor-exit p0

    return-object v2

    :catchall_1
    move-exception p1

    .line 196
    :try_start_8
    iput-boolean v1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mIsInitializing:Z

    .line 204
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    :cond_a
    if-eqz v2, :cond_b

    .line 205
    invoke-virtual {v2}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 207
    :cond_b
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    .line 138
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getWritableDatabase([C)Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 135
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->getBytes([C)[B

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConfigure(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
.end method

.method public onDowngrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 1

    .line 344
    new-instance p0, Lnet/sqlcipher/database/SQLiteException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t downgrade database from version "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_2

    .line 313
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableWriteAheadLogging()Z

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 319
    :goto_0
    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mEnableWriteAheadLogging:Z

    goto :goto_1

    .line 321
    :cond_1
    iput-boolean p1, p0, Lnet/sqlcipher/database/SQLiteOpenHelper;->mDeferSetWriteAheadLoggingEnabled:Z

    .line 324
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
