.class Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WearableBpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "message"

    .line 48
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "S HealthMonitor - WearableBpManager"

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " [onReceive] Got message: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
