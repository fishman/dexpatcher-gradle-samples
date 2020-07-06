.class public abstract Lcom/samsung/android/sdk/accessory/SAAgent;
.super Landroid/app/Service;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field public static final CONNECTION_ALREADY_EXIST:I = 0x405

.field public static final CONNECTION_DUPLICATE_REQUEST:I = 0x410

.field public static final CONNECTION_FAILURE_DEVICE_UNREACHABLE:I = 0x404

.field public static final CONNECTION_FAILURE_INVALID_PEERAGENT:I = 0x409

.field private static final CONNECTION_FAILURE_LOCAL_AGENT_NOT_FOUND:I = 0x40a

.field public static final CONNECTION_FAILURE_NETWORK:I = 0x500

.field public static final CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE:I = 0x406

.field public static final CONNECTION_FAILURE_PEERAGENT_REJECTED:I = 0x407

.field public static final CONNECTION_FAILURE_SERVICE_LIMIT_REACHED:I = 0x40d

.field public static final CONNECTION_SUCCESS:I = 0x0

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x801

.field public static final FINDPEER_DEVICE_NOT_CONNECTED:I = 0x701

.field public static final FINDPEER_DUPLICATE_REQUEST:I = 0xc0d

.field public static final FINDPEER_SERVICE_NOT_FOUND:I = 0x702

.field public static final NETWORK_TYPE_CHANGE_ALREADY_SET:I = 0x2

.field public static final NETWORK_TYPE_CHANGE_NOTSUPPORT:I = 0x1

.field public static final NETWORK_TYPE_CHANGE_SUCCESS:I = 0x0

.field public static final NETWORK_TYPE_MOBILE:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field public static final PEER_AGENT_AVAILABLE:I = 0x1

.field private static final PEER_AGENT_AVAILABLE_THIN:I = 0x69

.field public static final PEER_AGENT_FOUND:I = 0x0

.field public static final PEER_AGENT_UNAVAILABLE:I = 0x2

.field private static final PEER_AGENT_UNAVAILABLE_THIN:I = 0x6a

.field private static final SERVICE_RECORD_NOT_FOUND:I = 0x309

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAAgent"


# instance fields
.field mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

.field private mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

.field private mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

.field private mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

.field private mName:Ljava/lang/String;

.field private mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;

.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private mSa:Lcom/samsung/android/sdk/accessory/SA;

.field private mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

.field private mSocketImpl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessfullConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 612
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 473
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    return-void

    .line 615
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid parameter name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 473
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 591
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 596
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    const-string p1, "[SA_SDK]SAAgent"

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread Name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "SASocket Imple class:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 592
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid parameter name:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1611
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1613
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1616
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1617
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/accessory/SAAgent;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleServiceConnectionErrorCode(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanup()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->loadAgentId()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/accessory/SAAgent;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->setNetworkConnectionTypeInternal(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerMexAgent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->bindToFramework()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerService()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->requestPeerAgents()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SAAgent;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleFindPeerErrorCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SAAgent;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handlePeerAgentUpdateErrorCode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method private bindToFramework()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 1291
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 1293
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->loadAgentId()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Performing agent cleanup"

    .line 1781
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1782
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanupConnections(Z)V

    .line 1783
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 1788
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_1

    .line 1789
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->unregisterAgent()V

    .line 1791
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_2

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->quit()V

    const/4 v0, 0x0

    .line 1793
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    :cond_2
    return-void
.end method

.method private cleanupConnections(Z)V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SASocket;

    if-eqz p1, :cond_0

    .line 1800
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->forceClose()V

    goto :goto_0

    .line 1802
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    goto :goto_0

    .line 1805
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1806
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SA;->clearSdkConfig()V

    return-void
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 2

    monitor-enter p0

    .line 1814
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-eqz v0, :cond_0

    .line 1816
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    .line 1817
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "fetch service profile description failed !!"

    .line 1818
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "config  util defualt instance  creation failed !!"

    .line 1820
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1813
    monitor-exit p0

    throw v0
.end method

.method private getDefaultStorageContext()Landroid/content/Context;
    .locals 2

    .line 1316
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1318
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getNetworkConnectionTypeInternal()I
    .locals 3

    .line 1675
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getNetworkConnectionType()I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "set network connection type failed!"

    .line 1678
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 p0, -0x1

    return p0
.end method

.method private handleAuthErrorCode(I)V
    .locals 2

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    .line 1418
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    .line 1421
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    .line 1415
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x609
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAuthResponse(Landroid/os/Bundle;)V
    .locals 6

    .line 1686
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    .line 1687
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    .line 1688
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    .line 1689
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "transactionId"

    .line 1690
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    if-nez v2, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    .line 1693
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1698
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    const/16 p1, 0x609

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v3, "[SA_SDK]SAAgent"

    .line 1702
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication failed error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Peer Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "[SA_SDK]SAAgent"

    .line 1704
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authentication success status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for peer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 1706
    :goto_0
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;-><init>(I[B)V

    .line 1707
    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 1708
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleAuthErrorCode(I)V

    return-void
.end method

.method private handleFindPeerErrorCode(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 p0, 0xc0d

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFindPeerAgentsResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_SERVICE_NOT_FOUND"

    .line 1404
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DEVICE_NOT_CONNECTED"

    .line 1398
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DUPLICATE_REQUEST"

    .line 1401
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    .line 1395
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x701
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1736
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1739
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v1, :cond_1

    .line 1742
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x409

    .line 1743
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1744
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "handleInvlaidPeerAction: mBackgroundWorker is null!"

    .line 1747
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleNetworkConnectionTypeErrorCode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNetworkConnectionResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_ALREADY_SET"

    .line 1507
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_NOTSUPPORT"

    .line 1504
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOnErrorCode(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onError() -> ERROR_PERMISSION_FAILED"

    .line 1476
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onError() -> ERROR_PERMISSION_DENIED"

    .line 1473
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    .line 1479
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onError() -> ERROR_FATAL"

    .line 1470
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    .line 1467
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x401 -> :sswitch_4
        0x800 -> :sswitch_3
        0x801 -> :sswitch_2
        0x900 -> :sswitch_1
        0x901 -> :sswitch_0
    .end sparse-switch
.end method

.method private handlePeerAgentUpdateErrorCode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPeerAgentUpdated() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    .line 1493
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    .line 1490
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleServiceConnectionErrorCode(I)V
    .locals 2

    if-eqz p1, :cond_4

    const/16 p0, 0x409

    if-eq p1, p0, :cond_3

    const/16 p0, 0x40d

    if-eq p1, p0, :cond_2

    const/16 p0, 0x410

    if-eq p1, p0, :cond_1

    const/16 p0, 0x500

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnectionResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    .line 1453
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    .line 1450
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    .line 1435
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    .line 1441
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    .line 1447
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    .line 1438
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    .line 1456
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEERAGENT"

    .line 1444
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    .line 1432
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x404
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SAA1"

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#2.6.3"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1828
    invoke-static {p1, v0, p0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 5

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->validateSocketImplementation(Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "[SA_SDK]SAAgent"

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating SASocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    .line 1583
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1585
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1586
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SASocket;

    return-object p0

    .line 1588
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSocketImpl:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 1589
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1590
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception p0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadAgentId()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1297
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 1299
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getDefaultStorageContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccessoryPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1307
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1310
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1311
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentId:Ljava/lang/String;

    .line 1312
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerMexAgent()V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 1542
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    .line 1545
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 1546
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "agentId"

    .line 1547
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_1

    const-string p0, "[SA_SDK]SAAgent"

    .line 1550
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid initiator peer agent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Ignoring connection request"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "[SA_SDK]SAAgent"

    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid local agent Id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".Ignoring connection request"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1557
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    const-string p1, "[SA_SDK]SAAgent"

    .line 1558
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connection initiated by peer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on Accessory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1562
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private registerMexAgent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerService()V
    .locals 1

    .line 1358
    new-instance v0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 1359
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1360
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    .line 1362
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Registration failed! : ExecutionException"

    .line 1366
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Regisration failed! : InterruptedException"

    .line 1364
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1621
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1623
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1627
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to reject Service connection!"

    .line 1629
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1630
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1566
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    .line 1568
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x800

    .line 1569
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1572
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1573
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method private requestPeerAgents()V
    .locals 5

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1374
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1378
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Find peer request successfully enqueued."

    .line 1380
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "[SA_SDK]SAAgent"

    .line 1382
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find peer request failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1384
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleFindPeerErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "[SA_SDK]SAAgent"

    const-string v3, "Find Peer request failed!"

    .line 1387
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 6

    .line 1635
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x800

    .line 1637
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1641
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    .line 1642
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v4

    move-object v2, p1

    .line 1641
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgent"

    .line 1644
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Auth. request for peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " done successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "[SA_SDK]SAAgent"

    .line 1646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Auth. request for peer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed as reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1647
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 1648
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleAuthErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Failed to request peer authentication!"

    .line 1651
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private setNetworkConnectionTypeInternal(I)V
    .locals 4

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setNetworkConnectionType(ILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "[SA_SDK]SAAgent"

    const-string v0, "set network connection type successfully enqueued."

    .line 1661
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "[SA_SDK]SAAgent"

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set network connection type failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->onNetworkConnectionResponse(II)V

    .line 1665
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleNetworkConnectionTypeErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "set network connection type failed!"

    .line 1668
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private validateSocketImplementation(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1338
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid socketClass param:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1343
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 1344
    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    return-void

    .line 1347
    :cond_1
    new-array p0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "[SA_SDK]SAAgent"

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1352
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid implemetation of SASocket. Provider a public default constructor in the implementation class."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 870
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 873
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SA_SDK]SAAgent"

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 888
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "acceptServiceConnection: mBackgroundWorker is null!"

    .line 890
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "[SA_SDK]SAAgent"

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 877
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected authenticatePeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 962
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 965
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgent"

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 975
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 976
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "authenticatePeerAgent: mBackgroundWorker is null!"

    .line 978
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 969
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "[SA_SDK]SAAgent"

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findPeer request received by:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 804
    iput v1, v0, Landroid/os/Message;->what:I

    .line 805
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    .line 807
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 809
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "[SA_SDK]SAAgent"

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    const/4 v1, 0x0

    .line 799
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 800
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 792
    monitor-exit p0

    throw v0
.end method

.method getAgentHandler()Landroid/os/Handler;
    .locals 0

    .line 1125
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    return-object p0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .line 1718
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x800

    const/4 v2, 0x0

    .line 1720
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 4

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 1518
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Agent ID retrieved successfully for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Agent ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1521
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x309

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1522
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v1

    const/16 v2, 0x12a

    if-lt v1, v2, :cond_0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Service record was not found in Accessory Framework.Registering service again!"

    .line 1523
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerService()V

    :try_start_1
    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "Trying to fetch agent ID after re-registration"

    .line 1526
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string v1, "Failed to retrieve service record after re-registration"

    .line 1529
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v1, "Failed to retrieve service record"

    .line 1533
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method protected getNetworkConnectionType()I
    .locals 4

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getNetworkConnectionTypeInternal()I

    move-result p0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    const/4 v1, 0x0

    .line 1006
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getServiceChannelId(I)I
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Failed because Service Profile is null"

    .line 1094
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 1098
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getServiceChannelSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1103
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->getChannelId()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Failed because of wrong index"

    .line 1099
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 1066
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1069
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 1025
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1028
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Failed because Service Profile is null"

    .line 1043
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1775
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p2, "Permission error!"

    .line 1771
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 1772
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleOnErrorCode(I)V

    return-void

    :sswitch_1
    const-string p2, "[SA_SDK]SAAgent"

    const-string v1, "Samsung Accessory SDK cannot be initialized"

    .line 1760
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    .line 1761
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 1763
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleOnErrorCode(I)V

    return-void

    :sswitch_2
    const/4 p2, 0x1

    .line 1755
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent;->cleanupConnections(Z)V

    const-string p2, "Samsung Accessory Framework has died!!"

    .line 1756
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 1757
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleOnErrorCode(I)V

    return-void

    :sswitch_3
    const/16 p1, 0x409

    .line 1766
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 1767
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleServiceConnectionErrorCode(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x409 -> :sswitch_3
        0x800 -> :sswitch_2
        0x801 -> :sswitch_1
        0x900 -> :sswitch_0
        0x901 -> :sswitch_0
    .end sparse-switch
.end method

.method isFeatureEnabled(I)Z
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1841
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isSocketSupported()Z

    move-result p0

    goto :goto_0

    .line 1838
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isMexSupported()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgent"

    .line 742
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Peer authentication response received:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 477
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 479
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 481
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    :goto_0
    const-string v0, "[SA_SDK]SAAgent"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgent - onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSuccessfullConnections:Ljava/util/List;

    .line 485
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    .line 488
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgent$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAgent$1;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 501
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 502
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "Unable to start Agent thread."

    .line 504
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 507
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    .line 509
    new-instance v0, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    .line 511
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    const-string v2, "SDK initialization failed!"

    .line 513
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x801

    .line 515
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 516
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 521
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;

    .line 522
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$PeerAgentCallback;

    .line 523
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgent$NetworkConnectionCallback;

    .line 525
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;

    .line 526
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;

    .line 528
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendEmptyMessage(I)Z

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->fetchServiceProfile()V

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->insertLog(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgent"

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgent - onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 566
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 775
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ACCEPT_STATE_ERROR: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACCEPT_STATE_ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Invalid implementation of SAAgent.onFindPeerAgentsResponse(SAPeerAgent[], int) should be overrided!"

    .line 639
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNetworkConnectionResponse(II)V
    .locals 2

    const-string p0, "[SA_SDK]SAAgent"

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network Connection response received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "Invalid implementation of SAAgent.onPeerAgentsUpdated(SAPeerAgent[], int) should be overrided!"

    .line 669
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting connection request by default from Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)!"

    .line 722
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_1

    .line 541
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    .line 542
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "[SA_SDK]SAAgent"

    const-string v0, "Received incoming connection request"

    .line 543
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x5

    .line 545
    iput v0, p2, Landroid/os/Message;->what:I

    .line 546
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 547
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 548
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.accessory.action.MESSAGE_RECEIVED"

    .line 549
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SA_SDK]SAAgent"

    const-string p2, "Received incoming message ind"

    .line 550
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 571
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->clearCache(I)V

    .line 572
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    .line 1115
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mAgentId:Ljava/lang/String;

    return-object p0
.end method

.method protected rejectServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 917
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 920
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SA_SDK]SAAgent"

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reject connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 934
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 935
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "rejectServiceConnection: mBackgroundWorker is null!"

    .line 937
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "[SA_SDK]SAAgent"

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 924
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected final requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 831
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 834
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgent"

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connection requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 844
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 845
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "requestServiceConection: mBackgroundWorker is null!"

    .line 847
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgent"

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x801

    .line 838
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1810
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method protected setNetworkConnectionType(I)V
    .locals 3

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 993
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 994
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "setNetworkConnectionType: mBackgroundWorker is null!"

    .line 996
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x801

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method
