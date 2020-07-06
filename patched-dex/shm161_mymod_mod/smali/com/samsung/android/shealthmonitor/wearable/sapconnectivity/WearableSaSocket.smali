.class public Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;
.super Lcom/samsung/android/sdk/accessory/SASocket;
.source "WearableSaSocket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableSaSocket"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReceive(I[B)V
    .locals 2

    :try_start_0
    const-string p0, "S HealthMonitor - WearableSaSocket"

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SASocket Data received, channelId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendMessageToReceiverHandler([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSaSocket"

    .line 39
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onServiceConnectionLost(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 45
    sput-wide v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mLastFindPeerRequestTime:J

    const-string p0, "S HealthMonitor - WearableSaSocket"

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnectionLost() reason : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
