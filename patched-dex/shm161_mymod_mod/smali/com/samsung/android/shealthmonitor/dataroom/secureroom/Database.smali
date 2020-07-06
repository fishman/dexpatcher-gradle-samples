.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteDatabase;


# static fields
.field private static final CONFLICT_VALUES:[Ljava/lang/String;


# instance fields
.field private final secureDb:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    .line 27
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->CONFLICT_VALUES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    return-void
.end method

.method static final synthetic lambda$query$0$Database(Landroid/arch/persistence/db/SupportSQLiteQuery;Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)Lnet/sqlcipher/Cursor;
    .locals 1

    .line 257
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;

    invoke-direct {v0, p4}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;-><init>(Lnet/sqlcipher/database/SQLiteProgram;)V

    invoke-interface {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteQuery;->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V

    .line 258
    new-instance p0, Lnet/sqlcipher/database/SQLiteCursor;

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sqlcipher/database/SQLiteCursor;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)V

    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/database/sqlite/SQLiteTransactionListener;)V

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListener(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/database/sqlite/SQLiteTransactionListener;)V

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Lnet/sqlcipher/database/SQLiteTransactionListener;)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 1

    .line 41
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;-><init>(Lnet/sqlcipher/database/SQLiteStatement;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p0

    .line 282
    :try_start_0
    invoke-static {p0, p3}, Landroid/arch/persistence/db/SimpleSQLiteQuery;->bind(Landroid/arch/persistence/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 283
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 288
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception attempting to close statement"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 286
    :try_start_2
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    throw p1

    :catch_1
    move-exception p0

    .line 288
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception attempting to close statement"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public disableWriteAheadLogging()V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->disableWriteAheadLogging()V

    return-void
.end method

.method public enableWriteAheadLogging()Z
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->enableWriteAheadLogging()Z

    move-result p0

    return p0
.end method

.method public endTransaction()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 349
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 446
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 193
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getMaximumSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    .line 209
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getVersion()I

    move-result p0

    return p0
.end method

.method public inTransaction()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result p0

    return p0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You should not be doing this on a closed database"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    return p0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result p0

    return p0

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You should not be doing this on a closed database"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOpen()Z
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isReadOnly()Z

    move-result p0

    return p0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public needUpgrade(I)Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->needUpgrade(I)Z

    move-result p0

    return p0
.end method

.method public query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/arch/persistence/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 250
    new-instance p2, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;

    invoke-direct {p2}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;-><init>()V

    .line 252
    invoke-interface {p1, p2}, Landroid/arch/persistence/db/SupportSQLiteQuery;->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V

    .line 255
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$$Lambda$0;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$$Lambda$0;-><init>(Landroid/arch/persistence/db/SupportSQLiteQuery;)V

    .line 259
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/BindingsRecorder;->getBindings()[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0, v0, p1, p2, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQueryWithFactory(Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 225
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    .line 233
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v0, p1, p2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->setMaximumSize(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public setPageSize(J)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->setPageSize(J)V

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 6

    if-eqz p3, :cond_6

    .line 301
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE "

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SET "

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-nez p5, :cond_1

    move p2, p1

    goto :goto_0

    .line 312
    :cond_1
    array-length p2, p5

    add-int/2addr p2, p1

    .line 313
    :goto_0
    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 315
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-lez v2, :cond_2

    const-string v5, ","

    goto :goto_2

    :cond_2
    const-string v5, ""

    .line 316
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    .line 318
    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "=?"

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    move p3, p1

    :goto_3
    if-ge p3, p2, :cond_4

    sub-int v2, p3, p1

    .line 323
    aget-object v2, p5, v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 326
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, " WHERE "

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p0

    .line 333
    :try_start_0
    invoke-static {p0, v1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;->bind(Landroid/arch/persistence/db/SupportSQLiteProgram;[Ljava/lang/Object;)V

    .line 334
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception attempting to close statement"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 337
    :try_start_2
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    throw p1

    :catch_1
    move-exception p0

    .line 339
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Exception attempting to close statement"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 302
    :cond_6
    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result p0

    return p0

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You should not be doing this on a closed database"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->secureDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result p0

    return p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You should not be doing this on a closed database"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
