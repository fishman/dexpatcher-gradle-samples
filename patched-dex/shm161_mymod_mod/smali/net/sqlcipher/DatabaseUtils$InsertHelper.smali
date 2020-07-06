.class public Lnet/sqlcipher/DatabaseUtils$InsertHelper;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/DatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsertHelper"
.end annotation


# static fields
.field public static final TABLE_INFO_PRAGMA_COLUMNNAME_INDEX:I = 0x1

.field public static final TABLE_INFO_PRAGMA_DEFAULT_INDEX:I = 0x4


# instance fields
.field private mColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Lnet/sqlcipher/database/SQLiteDatabase;

.field private mInsertSQL:Ljava/lang/String;

.field private mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

.field private mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

.field private mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 820
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 821
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 822
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 823
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 839
    iput-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 840
    iput-object p2, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    return-void
.end method

.method private buildSQL()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "INSERT INTO "

    .line 845
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget-object v2, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    .line 847
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "VALUES ("

    .line 850
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 855
    :try_start_0
    iget-object v3, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA table_info("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 856
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    const/4 v1, 0x1

    move v4, v1

    .line 857
    :goto_0
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 858
    invoke-interface {v3, v1}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    .line 859
    invoke-interface {v3, v6}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 861
    iget-object v7, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\'"

    .line 862
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    .line 864
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_0

    const-string v5, "?"

    .line 867
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v5, "COALESCE(?, "

    .line 869
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 871
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :goto_1
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    const-string v5, ") "

    goto :goto_2

    :cond_1
    const-string v5, ", "

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    const-string v5, ");"

    goto :goto_3

    :cond_2
    const-string v5, ", "

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 879
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->close()V

    .line 882
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_5

    .line 879
    invoke-interface {v3}, Lnet/sqlcipher/Cursor;->close()V

    .line 880
    :cond_5
    throw p0
.end method

.method private getStatement(Z)Lnet/sqlcipher/database/SQLiteStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sqlcipher/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 890
    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    if-nez p1, :cond_1

    .line 891
    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 893
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "INSERT OR REPLACE"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 894
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 896
    :cond_1
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    return-object p0

    .line 898
    :cond_2
    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    if-nez p1, :cond_4

    .line 899
    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->buildSQL()V

    .line 900
    :cond_3
    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mDb:Lnet/sqlcipher/database/SQLiteDatabase;

    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 902
    :cond_4
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    return-object p0
.end method

.method private declared-synchronized insertInternal(Landroid/content/ContentValues;Z)J
    .locals 3

    monitor-enter p0

    .line 920
    :try_start_0
    invoke-direct {p0, p2}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->getStatement(Z)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object p2

    .line 921
    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    .line 923
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 924
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 925
    invoke-virtual {p0, v2}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 926
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lnet/sqlcipher/DatabaseUtils;->bindObjectToProgram(Lnet/sqlcipher/database/SQLiteProgram;ILjava/lang/Object;)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v0
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "DatabaseUtils"

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error inserting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " into table  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 p1, -0x1

    .line 935
    monitor-exit p0

    return-wide p1

    .line 919
    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bind(ID)V
    .locals 0

    .line 961
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bind(IF)V
    .locals 2

    .line 971
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lnet/sqlcipher/database/SQLiteStatement;->bindDouble(ID)V

    return-void
.end method

.method public bind(II)V
    .locals 2

    .line 991
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bind(IJ)V
    .locals 0

    .line 981
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bind(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1035
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;->bindNull(I)V

    return-void

    .line 1037
    :cond_0
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bind(IZ)V
    .locals 2

    .line 1001
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lnet/sqlcipher/database/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bind(I[B)V
    .locals 0

    if-nez p2, :cond_0

    .line 1021
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;->bindNull(I)V

    return-void

    .line 1023
    :cond_0
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindNull(I)V
    .locals 0

    .line 1010
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1138
    iput-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 1140
    :cond_0
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteStatement;->close()V

    .line 1142
    iput-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mReplaceStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 1144
    :cond_1
    iput-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mInsertSQL:Ljava/lang/String;

    .line 1145
    iput-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    return-void
.end method

.method public execute()J
    .locals 5

    .line 1067
    iget-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    if-nez v0, :cond_0

    .line 1068
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "you must prepare this inserter before calling execute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {v1}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_0
    .catch Lnet/sqlcipher/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    return-wide v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DatabaseUtils"

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error executing InsertHelper with table "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_0
    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 1080
    throw v1
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 946
    invoke-direct {p0, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->getStatement(Z)Lnet/sqlcipher/database/SQLiteStatement;

    .line 947
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mColumns:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 949
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "column \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is invalid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 951
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x0

    .line 1053
    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public prepareForInsert()V
    .locals 1

    const/4 v0, 0x0

    .line 1095
    invoke-direct {p0, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->getStatement(Z)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 1096
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public prepareForReplace()V
    .locals 1

    const/4 v0, 0x1

    .line 1111
    invoke-direct {p0, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->getStatement(Z)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    .line 1112
    iget-object p0, p0, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->mPreparedStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public replace(Landroid/content/ContentValues;)J
    .locals 1

    const/4 v0, 0x1

    .line 1127
    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/DatabaseUtils$InsertHelper;->insertInternal(Landroid/content/ContentValues;Z)J

    move-result-wide p0

    return-wide p0
.end method
