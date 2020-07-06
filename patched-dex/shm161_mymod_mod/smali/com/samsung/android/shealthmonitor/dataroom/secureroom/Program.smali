.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;
.super Ljava/lang/Object;
.source "Program.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# instance fields
.field private final delegate:Lnet/sqlcipher/database/SQLiteProgram;


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteProgram;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0, p1}, Lnet/sqlcipher/database/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Program;->delegate:Lnet/sqlcipher/database/SQLiteProgram;

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteProgram;->close()V

    return-void
.end method
