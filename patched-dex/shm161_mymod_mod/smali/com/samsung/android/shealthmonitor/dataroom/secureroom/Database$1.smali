.class Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Lnet/sqlcipher/database/SQLiteTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

.field final synthetic val$listener:Landroid/database/sqlite/SQLiteTransactionListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;->val$listener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;->val$listener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {p0}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V

    return-void
.end method

.method public onCommit()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;->val$listener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {p0}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V

    return-void
.end method

.method public onRollback()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/Database$1;->val$listener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {p0}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V

    return-void
.end method
