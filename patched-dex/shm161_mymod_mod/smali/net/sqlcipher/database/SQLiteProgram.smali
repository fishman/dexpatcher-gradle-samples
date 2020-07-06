.class public abstract Lnet/sqlcipher/database/SQLiteProgram;
.super Lnet/sqlcipher/database/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteProgram"


# instance fields
.field mClosed:Z

.field private mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

.field protected mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mSql:Ljava/lang/String;

.field protected nHandle:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected nStatement:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5

    .line 66
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteClosable;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->nHandle:J

    .line 58
    iput-wide v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->nStatement:J

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    .line 67
    iput-object p1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->acquireReference()V

    .line 70
    invoke-virtual {p1, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->addSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V

    .line 71
    iget-wide v1, p1, Lnet/sqlcipher/database/SQLiteDatabase;->mNativeHandle:J

    iput-wide v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->nHandle:J

    .line 75
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    :goto_0
    const-string v1, "INSERT"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "REPLAC"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DELETE"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SELECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-direct {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteCompiledSql;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 80
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    iget-wide p1, p1, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:J

    iput-wide p1, p0, Lnet/sqlcipher/database/SQLiteProgram;->nStatement:J

    return-void

    .line 86
    :cond_1
    invoke-virtual {p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->getCompiledStatementForSql(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteCompiledSql;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 87
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-direct {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteCompiledSql;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 94
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->acquire()Z

    .line 95
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-virtual {p1, p2, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->addToCompiledQueries(Ljava/lang/String;Lnet/sqlcipher/database/SQLiteCompiledSql;)V

    .line 96
    sget-boolean p1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz p1, :cond_3

    const-string p1, "SQLiteProgram"

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created DbObj (id#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    iget-wide v1, v1, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") for sql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    :cond_2
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->acquire()Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    iget-wide v0, v0, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:J

    .line 109
    new-instance v2, Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-direct {v2, p1, p2}, Lnet/sqlcipher/database/SQLiteCompiledSql;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    .line 110
    sget-boolean p1, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz p1, :cond_3

    const-string p1, "SQLiteProgram"

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "** possible bug ** Created NEW DbObj (id#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    iget-wide v3, v3, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") because the previously created DbObj (id#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") was not released for sql:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_3
    :goto_1
    iget-object p1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    iget-wide p1, p1, Lnet/sqlcipher/database/SQLiteCompiledSql;->nStatement:J

    iput-wide p1, p0, Lnet/sqlcipher/database/SQLiteProgram;->nStatement:J

    return-void
.end method

.method private final native native_clear_bindings()V
.end method

.method private releaseCompiledSqlIfNotInCache()V
    .locals 3

    .line 136
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v0, v0, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v1, v1, Lnet/sqlcipher/database/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    iget-object v2, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteCompiledSql;->releaseSqlStatement()V

    const/4 v1, 0x0

    .line 144
    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    const-wide/16 v1, 0x0

    .line 145
    iput-wide v1, p0, Lnet/sqlcipher/database/SQLiteProgram;->nStatement:J

    goto :goto_0

    .line 148
    :cond_1
    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mCompiledSql:Lnet/sqlcipher/database/SQLiteCompiledSql;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteCompiledSql;->release()V

    .line 150
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    if-nez p2, :cond_0

    .line 277
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "the bind value at index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_1

    .line 280
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "program already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "database "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 287
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->native_bind_blob(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 290
    throw p1
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 229
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "program already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "database "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 237
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->native_bind_double(ID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 240
    throw p1
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "program already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "database "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 215
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->native_bind_long(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 218
    throw p1
.end method

.method public bindNull(I)V
    .locals 2

    .line 185
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "program already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "database "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteProgram;->native_bind_null(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 196
    throw p1
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 252
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "the bind value at index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_0
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_1

    .line 255
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "program already closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "database "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_2
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 262
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->native_bind_string(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 265
    throw p1
.end method

.method public clearBindings()V
    .locals 3

    .line 297
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_0

    .line 298
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "program already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->acquireReference()V

    .line 305
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteProgram;->native_clear_bindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V

    .line 308
    throw v0
.end method

.method public close()V
    .locals 1

    .line 315
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mClosed:Z

    return-void

    :catchall_0
    move-exception v0

    .line 325
    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 326
    throw v0
.end method

.method protected compile(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method getSqlString()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object p0
.end method

.method public final getUniqueId()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->nStatement:J

    return-wide v0
.end method

.method protected final native native_bind_blob(I[B)V
.end method

.method protected final native native_bind_double(ID)V
.end method

.method protected final native native_bind_long(IJ)V
.end method

.method protected final native native_bind_null(I)V
.end method

.method protected final native native_bind_string(ILjava/lang/String;)V
.end method

.method protected final native native_compile(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected final native native_finalize()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseCompiledSqlIfNotInCache()V

    .line 125
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->releaseReference()V

    .line 126
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->removeSQLiteClosable(Lnet/sqlcipher/database/SQLiteClosable;)V

    return-void
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteProgram;->releaseCompiledSqlIfNotInCache()V

    .line 132
    iget-object p0, p0, Lnet/sqlcipher/database/SQLiteProgram;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteDatabase;->releaseReference()V

    return-void
.end method
