.class public Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;
.super Ljava/lang/Object;
.source "WearableSaAgentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableSaAgentManager"

.field private static final mInstance:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;


# instance fields
.field private final mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceListRequested:Z

.field private final mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

.field private mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

.field private final mSendLockObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mDataQueue:Ljava/util/Queue;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSendLockObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mIsDeviceListRequested:Z

    .line 38
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager$1;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSendLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;)Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->checkQueue()V

    return-void
.end method

.method private checkQueue()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mIsDeviceListRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - WearableSaAgentManager"

    const-string v1, "checkQueue() mIsDeviceListRequested is true. findPeers"

    .line 92
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->findPeers()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mIsDeviceListRequested:Z

    return-void

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "S HealthMonitor - WearableSaAgentManager"

    const-string v2, "checkQueue()"

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    return-object v0
.end method


# virtual methods
.method public getSapConnectedDeviceList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mIsDeviceListRequested:Z

    const-string v0, "S HealthMonitor - WearableSaAgentManager"

    const-string v2, "getSapConnectedDeviceList() mSAgentV2 is null"

    .line 108
    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSaAgentManager"

    const-string v0, "getSapConnectedDeviceList() Context is null"

    .line 112
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getSapConnectedDeviceList() Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_0
    const-class v2, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    invoke-static {v0, v2, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    return-object v1

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->getCurrentConnectedDeviceIdList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "S HealthMonitor - WearableSaAgentManager"

    const-string v0, "getSapConnectedDeviceList() list is null"

    .line 121
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v0, "S HealthMonitor - WearableSaAgentManager"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSapConnectedDeviceList() list.size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public declared-synchronized sendDataToSapModule(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "S HealthMonitor - WearableSaAgentManager"

    const-string v1, "sendDataToSapModule() "

    .line 66
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSendLockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    if-nez v1, :cond_1

    const-string v1, "S HealthMonitor - WearableSaAgentManager"

    const-string v2, "sendDataToSapModule() mSAgentV2 is null, so queue offer"

    .line 70
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    .line 74
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "S HealthMonitor - WearableSaAgentManager"

    const-string v1, "Context is null"

    .line 76
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_2
    const-class v2, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mRequestAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    const-string v1, "S HealthMonitor - WearableSaAgentManager"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendDataToSapModule() queue offer result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "S HealthMonitor - WearableSaAgentManager"

    const-string v2, "sendDataToSapModule() : startCommand"

    .line 84
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->mSAgentV2:Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;

    invoke-virtual {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgent;->startCommand(Ljava/lang/String;)V

    .line 87
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 65
    monitor-exit p0

    throw p1
.end method
