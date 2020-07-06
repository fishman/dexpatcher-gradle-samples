.class public Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;
.super Ljava/lang/Object;
.source "NodeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$ConnectionStatusChange;,
        Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - NodeMonitor"

.field private static final mInstance:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;


# instance fields
.field private mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

.field private mNodeListener:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;

.field private mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 43
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 44
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mNodeListener:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v1, "NodeMonitorInternal() +"

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->init()V

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "NodeMonitorInternal() -"

    .line 49
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized createOrUpdateBpNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->makeNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const-string v3, "S HealthMonitor - NodeMonitor"

    const-string v4, "createOrUpdateBpNode() replace"

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 110
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->makeNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->makeNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->sendBroadcastToApp(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Z)V

    const-string p2, "S HealthMonitor - NodeMonitor"

    const-string p3, "createOrUpdateBpNode() create"

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "S HealthMonitor - NodeMonitor"

    const-string p2, "createOrUpdateBpNode() finish."

    .line 116
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;
    .locals 1

    .line 53
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v1, "init() start"

    .line 61
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->initNodeMonitor()V

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "init() end"

    .line 63
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initNodeMonitor()V
    .locals 5

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v1, "initNodeMonitor() start"

    .line 169
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/sapconnectivity/WearableSaAgentManager;->getSapConnectedDeviceList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "initNodeMonitor() sapConnectedDeviceList is null"

    .line 174
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EMPTY"

    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "S HealthMonitor - NodeMonitor"

    const-string v2, "initNodeMonitor() Information is not received."

    .line 182
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "EMPTY"

    .line 185
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "initNodeMonitor() deviceId is not exist."

    .line 186
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_2
    invoke-direct {p0, v3, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->createOrUpdateBpNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private makeNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    .locals 2

    .line 157
    :try_start_0
    new-instance p0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const/4 v0, 0x2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - NodeMonitor"

    .line 163
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static nodeObservable()Lio/reactivex/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method private removeBpNode(Ljava/lang/String;)V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "removeBpNode() mConnectBpNode is null"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v1, "removeBpNode() mConnectBpNode is mismatch."

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mConnectBpNode ID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Request ID : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getBtAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 130
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->makeNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string p1, "removeBpNode() tmpNode is null."

    .line 132
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->setConnectionStatus(I)V

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->sendBroadcastToApp(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Z)V

    .line 138
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->clearResultListener()V

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "removeBpNode() remove success."

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcastToApp(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Z)V
    .locals 5

    .line 145
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.samd.bp.wearable.CONNECTION_STATUS_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "EXTRA_NODE"

    .line 147
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "EXTRA_IS_CONNECTED"

    .line 148
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "S HealthMonitor - NodeMonitor"

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendBroadcastToApp() Node name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mNodeListener:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;->onChanged(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method


# virtual methods
.method public getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string v0, "getConnectedBpNode() bpNode is null."

    .line 82
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    return-object p0
.end method

.method public getConnectedBpNode(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v2, "getConnectedBpNode() id mismatch."

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mConnectedBpNode ID : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Request ID : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    return-object p0
.end method

.method public isConnectedBpNode()Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mConnectBpNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method final synthetic lambda$new$0$NodeMonitor(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveConnectionStatusChange(Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "S HealthMonitor - NodeMonitor"

    const-string v1, "onReceiveConnectionStatusChange_connectionStatus()"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isConnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 201
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPTY"

    .line 203
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string p1, "onReceiveConnectionStatusChange() deviceInformation is not exist."

    .line 204
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "EMPTY"

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string p1, "onReceiveConnectionStatusChange() deviceId is not exist."

    .line 208
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->createOrUpdateBpNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMPTY"

    .line 215
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "S HealthMonitor - NodeMonitor"

    const-string p1, "onReceiveConnectionStatusChange() deviceId is not exist."

    .line 216
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->removeBpNode(Ljava/lang/String;)V

    return-void
.end method
