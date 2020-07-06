.class final synthetic Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/sqlcipher/DatabaseErrorHandler;


# instance fields
.field private final arg$1:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

.field private final arg$2:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;


# direct methods
.method constructor <init>([Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;->arg$1:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;->arg$2:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    return-void
.end method


# virtual methods
.method public final onCorruption(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;->arg$1:[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$$Lambda$0;->arg$2:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;->lambda$new$0$Helper$OpenHelper([Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-void
.end method
