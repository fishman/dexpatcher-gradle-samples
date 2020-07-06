.class final synthetic Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;


# instance fields
.field private final arg$1:Landroid/arch/persistence/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroid/arch/persistence/db/SupportSQLiteQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$$Lambda$0;->arg$1:Landroid/arch/persistence/db/SupportSQLiteQuery;

    return-void
.end method


# virtual methods
.method public final newCursor(Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)Lnet/sqlcipher/Cursor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$$Lambda$0;->arg$1:Landroid/arch/persistence/db/SupportSQLiteQuery;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->lambda$query$0$Database(Landroid/arch/persistence/db/SupportSQLiteQuery;Lnet/sqlcipher/database/SQLiteDatabase;Lnet/sqlcipher/database/SQLiteCursorDriver;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteQuery;)Lnet/sqlcipher/Cursor;

    move-result-object p0

    return-object p0
.end method
