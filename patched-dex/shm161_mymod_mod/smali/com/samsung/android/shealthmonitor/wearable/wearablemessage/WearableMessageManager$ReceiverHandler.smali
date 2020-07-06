.class Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ReceiverHandler;
.super Landroid/os/Handler;
.source "WearableMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHandler"
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ReceiverHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 646
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 647
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [B

    if-nez p0, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "ReceiverHandler() data is null"

    .line 649
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiverHandler data received. size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->access$500(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;[B)V

    return-void
.end method
