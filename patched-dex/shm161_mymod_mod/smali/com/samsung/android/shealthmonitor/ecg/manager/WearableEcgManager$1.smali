.class Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WearableEcgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v1, "message"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "stringExtra":Ljava/lang/String;
    const-string v1, "S HealthMonitor - WearableEcgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [onReceive] Got message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
