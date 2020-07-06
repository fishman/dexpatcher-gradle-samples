.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;
.super Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;
.source "Statement.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteStatement;


# instance fields
.field private final safeStatement:Lnet/sqlcipher/database/SQLiteStatement;


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteStatement;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;-><init>(Lnet/sqlcipher/database/SQLiteProgram;)V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->execute()V

    return-void
.end method

.method public executeInsert()J
    .locals 2

    .line 41
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method

.method public simpleQueryForLong()J
    .locals 2

    .line 49
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Statement;->safeStatement:Lnet/sqlcipher/database/SQLiteStatement;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
