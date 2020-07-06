.class Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;
.super Ljava/lang/Thread;
.source "RegisterUponInstallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;

.field final synthetic val$future:Ljava/util/concurrent/Future;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;Ljava/lang/String;Ljava/util/concurrent/Future;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->this$0:Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$future:Ljava/util/concurrent/Future;

    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service Registration has failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 44
    invoke-static {}, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Service Registration has failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/RegisterUponInstallReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0
.end method
