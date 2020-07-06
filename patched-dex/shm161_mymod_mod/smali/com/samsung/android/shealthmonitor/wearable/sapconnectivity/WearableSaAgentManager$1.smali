.class Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;
.super Ljava/lang/Object;
.source "WearableSaAgentManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2

    const-string v0, "S HealthMonitor - WearableSaAgentManager"

    const-string v1, "onAgentAvailable() "

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->access$000(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->access$102(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;)Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    .line 48
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->access$200(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)V

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    const-string p0, "S HealthMonitor - WearableSaAgentManager"

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError() errorCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
