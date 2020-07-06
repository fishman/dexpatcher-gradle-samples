.class public Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;
.super Lcom/samsung/android/sdk/accessory/SAAgentV2;
.source "WearableSaAgent.java"


# static fields
.field private static final MAX_SUPPRESSION_TIME:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableSaAgent"

.field public static mLastFindPeerRequestTime:J


# instance fields
.field private final mConnectedDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "S HealthMonitor - WearableSaAgent"

    .line 48
    const-class v1, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mDataQueue:Ljava/util/Queue;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mConnectedDeviceList:Ljava/util/List;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    const-string p1, "S HealthMonitor - WearableSaAgent"

    const-string v0, "WearableSaAgent() start"

    .line 49
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSaAgent"

    .line 60
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->processUnsupportedException(Lcom/samsung/android/sdk/SsdkUnsupportedException;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :goto_0
    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "WearableSaAgent() end"

    .line 67
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processUnsupportedException(Lcom/samsung/android/sdk/SsdkUnsupportedException;)Z
    .locals 3

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string v0, "You need to install Samsung Accessory SDK to use this application."

    .line 202
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string v0, "You need to update Samsung Accessory SDK to use this application."

    .line 204
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "We recommend that you update your Samsung Accessory SDK before using this application."

    .line 206
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const-string v0, "S HealthMonitor - WearableSaAgent"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return p1
.end method

.method private refreshDeviceList(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 224
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAddress()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mConnectedDeviceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "refreshDeviceList() Already exist"

    .line 235
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "S HealthMonitor - WearableSaAgent"

    const-string v0, "refreshDeviceList() Not exist."

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mConnectedDeviceList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->onReceiveConnectionStatusChange(Ljava/lang/String;Z)V

    return-void

    .line 242
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mConnectedDeviceList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->onReceiveConnectionStatusChange(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private sendData(Ljava/lang/String;)Z
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "S HealthMonitor - WearableSaAgent"

    const-string v2, "SASocket sended Data"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->getServiceChannelId(I)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;->secureSend(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSaAgent"

    .line 170
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->startCommand(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method private declared-synchronized sendDataToGear()V
    .locals 3

    monitor-enter p0

    .line 157
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - WearableSaAgent"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->sendData(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 156
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public closeConnection()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;->close()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public findPeers()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - WearableSaAgent"

    const-string v1, "findPeers() : mConnection is Connected. send data"

    .line 134
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->refreshDeviceList(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->sendDataToGear()V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - WearableSaAgent"

    const-string v1, "findPeers() : mConnection is not Connected"

    .line 139
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "S HealthMonitor - WearableSaAgent"

    const-string v1, "findPeers() : mConnection is Null"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    sget-wide v2, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mLastFindPeerRequestTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgent"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findPeers() Suppression find peer : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mLastFindPeerRequestTime:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "S HealthMonitor - WearableSaAgent"

    const-string v3, "findPeers() request"

    .line 150
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sput-wide v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mLastFindPeerRequestTime:J

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->findPeerAgents()V

    return-void
.end method

.method getCurrentConnectedDeviceIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mConnectedDeviceList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    const-string p0, "S HealthMonitor - WearableSaAgent"

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onError() errorMessage : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "peerAgent : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 6

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 73
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    const-string v2, "S HealthMonitor - WearableSaAgent"

    const-string v3, "onFindPeerAgentsResponse() Success."

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "peerAgent : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->refreshDeviceList(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/16 p0, 0x701

    if-ne p2, p0, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "onFindPeerAgentsResponse() : FINDPEER_DEVICE_NOT_CONNECTED"

    .line 82
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 p0, 0x702

    if-ne p2, p0, :cond_3

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "onFindPeerAgentsResponse() : FINDPEER_SERVICE_NOT_FOUND"

    .line 84
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "S HealthMonitor - WearableSaAgent"

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFindPeerAgentsResponse() invalid result : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 7

    const-string v0, "S HealthMonitor - WearableSaAgent"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerAgentsUpdated() result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "S HealthMonitor - WearableSaAgent"

    const-string v4, "onPeerAgentsUpdated()"

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saPeerAgent : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->refreshDeviceList(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string v0, "onServiceConnectionRequested()"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peerAgent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p1, "onServiceConnectionRequested() peerAgent is null"

    .line 96
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 3

    if-nez p3, :cond_0

    const-string p3, "S HealthMonitor - WearableSaAgent"

    const-string v0, "onServiceConnectionResponse() : CONNECTION_SUCCESS"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "peerAgent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    check-cast p2, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mWearableSaSocket:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaSocket;

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->sendDataToGear()V

    return-void

    :cond_0
    const/16 p0, 0x405

    if-ne p3, p0, :cond_1

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p2, "onServiceConnectionResponse() : CONNECTION_ALREADY_EXIST"

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "peerAgent : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 p0, 0x410

    if-ne p3, p0, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgent"

    const-string p2, "onServiceConnectionResponse() : CONNECTION_DUPLICATE_REQUEST"

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "peerAgent : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "S HealthMonitor - WearableSaAgent"

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onServiceConnectionResponse()  invalid result. result : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "S HealthMonitor - WearableSaAgent"

    const-string v0, "onStartCommand() : data is null"

    .line 214
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "S HealthMonitor - WearableSaAgent"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand() : data insert in queue. result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->findPeers()V

    return-void
.end method
