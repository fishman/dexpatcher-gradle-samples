.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Lnet/sqlcipher/database/SQLiteDatabaseHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$postKeySql:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;->val$postKeySql:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;->val$postKeySql:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Helper$OpenHelper$1;->val$postKeySql:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lnet/sqlcipher/database/SQLiteDatabase;->rawExecSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public preKey(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
