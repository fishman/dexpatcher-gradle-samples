.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;
.super Landroid/content/BroadcastReceiver;
.source "SHealthMonitorBpDataView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onReceive$0$SHealthMonitorBpDataView$2()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;)V

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [onReceive] intent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EXTRA_RESULT"

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 379
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/TextView;

    move-result-object p2

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_synced:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 394
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$500(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$600(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$700(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/content/BroadcastReceiver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
