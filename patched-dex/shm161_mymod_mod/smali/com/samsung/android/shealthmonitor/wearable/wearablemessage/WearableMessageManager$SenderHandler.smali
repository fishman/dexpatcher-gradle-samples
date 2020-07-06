.class Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$SenderHandler;
.super Landroid/os/Handler;
.source "WearableMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SenderHandler"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V
    .locals 0

    .line 657
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$SenderHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 664
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 665
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v0, "SenderHandler data send."

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->sendDataToSapModule(Ljava/lang/String;)V

    return-void
.end method
