.class public Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SHealthMonitorRefreshReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorRefreshReceiver"


# instance fields
.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakMainView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakTopView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakMainView:Ljava/lang/ref/WeakReference;

    .line 42
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    new-instance p2, Landroid/content/IntentFilter;

    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->COMMON_MAIN_VIEW_FORCE_REFRESH:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 47
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakMainView:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakTopView:Ljava/lang/ref/WeakReference;

    .line 49
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    new-instance p2, Landroid/content/IntentFilter;

    sget-object p3, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->COMMON_MAIN_VIEW_FORCE_REFRESH:Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method final synthetic lambda$onReceive$0$SHealthMonitorRefreshReceiver()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakMainView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakMainView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakMainView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->onResume()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakTopView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakTopView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakTopView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->onResume()V

    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "S HealthMonitor - SHealthMonitorRefreshReceiver"

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [SHealthMonitorRefreshReceiver] action : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object p1, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->COMMON_MAIN_VIEW_FORCE_REFRESH:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
