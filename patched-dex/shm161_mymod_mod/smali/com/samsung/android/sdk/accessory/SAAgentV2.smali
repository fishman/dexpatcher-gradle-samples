.class public abstract Lcom/samsung/android/sdk/accessory/SAAgentV2;
.super Ljava/lang/Object;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;,
        Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTRATION_REQUIRED:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field public static final AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED:I = 0x60a

.field public static final AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED:I = 0x609

.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field private static final CLEANUP_WAIT_MAX_RETRY:I = 0x4

.field private static final CLEANUP_WAIT_TIME:J = 0x1f4L

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

.field public static final ERROR_AGENT_REQUEST_IN_PROGRESS:I = 0xa04

.field public static final ERROR_CLASS_NOT_FOUND:I = 0xa01

.field public static final ERROR_CONNECTION_INVALID_PARAM:I = 0x401

.field public static final ERROR_CONSTRUCTOR_EXCEPTION:I = 0xa03

.field public static final ERROR_CONSTRUCTOR_NOT_FOUND:I = 0xa02

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field public static final ERROR_SDK_NOT_INITIALIZED:I = 0x801

.field public static final FINDPEER_DEVICE_NOT_CONNECTED:I = 0x701

.field public static final FINDPEER_DUPLICATE_REQUEST:I = 0xc0d

.field public static final FINDPEER_SERVICE_NOT_FOUND:I = 0x702

.field private static final INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

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

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAAgentV2"

.field private static sAgentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessory/SAAgentV2;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;


# instance fields
.field mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

.field private mAgentId:Ljava/lang/String;

.field mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

.field private mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

.field private mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

.field private mName:Ljava/lang/String;

.field private mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

.field private mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

.field private mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProcessingCleanup:Z

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
.method static constructor <clinit>()V
    .locals 2

    .line 440
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    .line 551
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 548
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Constructor should not be called for initializing "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    .line 579
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->initializeAgent()V

    return-void

    .line 572
    :cond_2
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

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/sdk/accessory/SASocket;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 548
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Constructor should not be called for initializing "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Call requestAgent API instead"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    .line 613
    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->validateSocketImplementation(Ljava/lang/Class;)V

    .line 614
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    const-string p1, "[SA_SDK]SAAgentV2"

    .line 615
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Thread Name:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SASocket Imple class:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->initializeAgent()V

    return-void

    .line 603
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid parameter name:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1971
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1973
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1976
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1977
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->acceptServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthResponse(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleServiceConnectionErrorCode(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanup()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->loadAgentId()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->setNetworkConnectionTypeInternal(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMexAgent()V

    return-void
.end method

.method static synthetic access$2100()Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/util/Map;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->isProcessingCleanup()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->INSTANCE_LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->destroy()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->bindToFramework()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerService()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->requestPeerAgents()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleFindPeerErrorCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handlePeerAgentUpdateErrorCode(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(Landroid/content/Intent;)V

    return-void
.end method

.method private bindToFramework()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 1592
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 1594
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->loadAgentId()V

    return-void
.end method

.method private cleanup()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Performing agent cleanup"

    .line 2141
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2142
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanupConnections(Z)V

    .line 2143
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2145
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanupAgent(Ljava/lang/String;)V

    .line 2147
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V

    .line 2148
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v1, :cond_1

    .line 2149
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->unregisterAgent()V

    .line 2151
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_2

    .line 2152
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->quit()V

    const/4 v1, 0x0

    .line 2153
    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    .line 2156
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->removeAgent(Ljava/lang/String;)V

    .line 2159
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2160
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    .line 2161
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cleanupConnections(Z)V
    .locals 2

    .line 2165
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

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

    .line 2167
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->forceClose()V

    goto :goto_0

    .line 2169
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    goto :goto_0

    .line 2172
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2173
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SA;->clearSdkConfig()V

    return-void
.end method

.method private destroy()V
    .locals 3

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgentV2 - onDestroy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 676
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    .line 677
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 679
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 677
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized fetchServiceProfile()V
    .locals 2

    monitor-enter p0

    .line 2181
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->getDefaultInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    .line 2182
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConfigUtil:Lcom/samsung/android/sdk/accessory/SAConfigUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAConfigUtil;->fetchServicesDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    .line 2184
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "fetch service profile description failed !!"

    .line 2185
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "config  util defualt instance  creation failed !!"

    .line 2187
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2180
    monitor-exit p0

    throw v0
.end method

.method private getDefaultStorageContext()Landroid/content/Context;
    .locals 2

    .line 1617
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1619
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getNetworkConnectionTypeInternal()I
    .locals 3

    .line 2035
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getNetworkConnectionType()I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "set network connection type failed!"

    .line 2038
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 p0, -0x1

    return p0
.end method

.method private handleAuthErrorCode(I)V
    .locals 2

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthenticationResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_PEER_AGENT_NOT_SUPPORTED"

    .line 1719
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_FAILURE_TOKEN_NOT_GENERATED"

    .line 1722
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onAuthenticationResponse() -> AUTHENTICATION_SUCCESS"

    .line 1716
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

    .line 2046
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "PEER_AGENT_KEY"

    .line 2047
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "CERT_TYPE"

    .line 2048
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "peerAgent"

    .line 2049
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "transactionId"

    .line 2050
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    if-nez v2, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid response from framework! No peer agent in auth response.Ignoring response"

    .line 2053
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2058
    :cond_0
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    const/16 p1, 0x609

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v3, "[SA_SDK]SAAgentV2"

    .line 2062
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
    const-string p1, "[SA_SDK]SAAgentV2"

    .line 2064
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

    .line 2066
    :goto_0
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;-><init>(I[B)V

    .line 2067
    invoke-virtual {p0, v2, v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 2068
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthErrorCode(I)V

    return-void
.end method

.method private handleFindPeerErrorCode(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 p0, 0xc0d

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFindPeerAgentsResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_SERVICE_NOT_FOUND"

    .line 1705
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DEVICE_NOT_CONNECTED"

    .line 1699
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onFindPeerAgentsResponse() -> FINDPEER_DUPLICATE_REQUEST"

    .line 1702
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onFindPeerAgentsResponse() -> PEER_AGENT_FOUND"

    .line 1696
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

    .line 2096
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 2098
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 2099
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    goto :goto_0

    .line 2101
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v1, :cond_1

    .line 2102
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x409

    .line 2103
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2104
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2105
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "handleInvlaidPeerAction: mBackgroundWorker is null!"

    .line 2107
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
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

.method static handleLowMemory()V
    .locals 3

    .line 1863
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    monitor-enter v0

    .line 1864
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 1865
    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAgentLowMemory()V

    goto :goto_0

    .line 1867
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleNetworkConnectionTypeErrorCode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNetworkConnectionResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_ALREADY_SET"

    .line 1808
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onNetworkConnectionResponse() -> NETWORK_TYPE_CHANGE_NOTSUPPORT"

    .line 1805
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

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onError() -> ERROR_PERMISSION_FAILED"

    .line 1777
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onError() -> ERROR_PERMISSION_DENIED"

    .line 1774
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onError() -> ERROR_SDK_NOT_INITIALIZED"

    .line 1780
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onError() -> ERROR_FATAL"

    .line 1771
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_4
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onError() -> ERROR_CONNECTION_INVALID_PARAM"

    .line 1768
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

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPeerAgentUpdated() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_UNAVAILABLE"

    .line 1794
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onPeerAgentUpdated() -> PEER_AGENT_AVAILABLE"

    .line 1791
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

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnectionResponse() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_REJECTED"

    .line 1754
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_PEERAGENT_NO_RESPONSE"

    .line 1751
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_ALREADY_EXIST"

    .line 1736
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_DEVICE_UNREACHABLE"

    .line 1742
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_NETWORK"

    .line 1748
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_DUPLICATE_REQUEST"

    .line 1739
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_SERVICE_LIMIT_REACHED"

    .line 1757
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_FAILURE_INVALID_PEERAGENT"

    .line 1745
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onServiceConnectionResponse() -> CONNECTION_SUCCESS"

    .line 1733
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

.method private initializeAgent()V
    .locals 3

    .line 697
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    :goto_0
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAAgentV2 - initialize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSuccessfullConnections:Ljava/util/List;

    .line 703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    .line 706
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 707
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$1;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 719
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 720
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Unable to start Agent thread."

    .line 722
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to start Agent.Worker thread creation failed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 725
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    .line 727
    new-instance v0, Lcom/samsung/android/sdk/accessory/SA;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SA;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    .line 729
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "SDK initialization failed!"

    .line 731
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x801

    .line 733
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 734
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->putAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    .line 738
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 740
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    .line 741
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    .line 742
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    .line 744
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    .line 745
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;

    .line 747
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendEmptyMessage(I)Z

    .line 750
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->fetchServiceProfile()V

    .line 753
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->insertLog(Landroid/content/Context;)V

    return-void
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SAA2"

    .line 2193
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

    .line 2195
    invoke-static {p1, v0, p0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;
    .locals 5

    .line 1938
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->validateSocketImplementation(Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Instantiating SASocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    .line 1943
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1945
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1946
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessory/SASocket;

    return-object p0

    .line 1948
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSocketImpl:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 1949
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1950
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

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1965
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

    .line 1966
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1962
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

    .line 1963
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1959
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

    .line 1960
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1956
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

    .line 1957
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    move-exception p0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1953
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

    .line 1954
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid implemetation of SASocket. Provider a public default constructor."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isProcessingCleanup()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mProcessingCleanup:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 668
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadAgentId()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 1600
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1607
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getDefaultStorageContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccessoryPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1608
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1609
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1610
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1611
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1612
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    .line 1613
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMexAgent()V

    return-void
.end method

.method private notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    if-nez p4, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1910
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid initiator peer agent:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Ignoring connection request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1914
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid local agent Id:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".Ignoring connection request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1917
    :cond_1
    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->setTransactionId(J)V

    const-string p3, "[SA_SDK]SAAgentV2"

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection initiated by peer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on Accessory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-virtual {p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1918
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1922
    invoke-virtual {p0, p4}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 1877
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    .line 1880
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 1881
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v3, "agentId"

    .line 1882
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1884
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private notifyConnectionRequest(Landroid/os/PersistableBundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid service connection indication.Intent:null.Ignoring reqeuset"

    .line 1891
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "transactionId"

    const-wide/16 v1, 0x0

    .line 1894
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "peerAgent"

    .line 1897
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid initiator peer agent. Ignoring connection request"

    .line 1900
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1903
    :cond_1
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;-><init>(Ljava/util/List;)V

    const-string v2, "agentId"

    .line 1904
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1905
    invoke-direct {p0, v0, v1, p1, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->notifyConnectionRequest(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private static putAgent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 1

    .line 684
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private registerMexAgent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1625
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerService()V
    .locals 1

    .line 1659
    new-instance v0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;-><init>(Landroid/content/Context;)V

    .line 1660
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->prepare()Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1661
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->start()V

    .line 1663
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Registration failed! : ExecutionException"

    .line 1667
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Regisration failed! : InterruptedException"

    .line 1665
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private rejectServiceConnectionInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    .line 1981
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1983
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1987
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to reject Service connection!"

    .line 1989
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1990
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method private static removeAgent(Ljava/lang/String;)V
    .locals 1

    .line 690
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static requestAgent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V
    .locals 1

    .line 636
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V

    .line 637
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->createInstance()V

    return-void
.end method

.method private requestConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 3

    .line 1926
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed to retrieve service description.Ignoring service connection request"

    .line 1928
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x800

    .line 1929
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1932
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->instantiateSocket()Lcom/samsung/android/sdk/accessory/SASocket;

    move-result-object v1

    .line 1933
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mConnectionCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;

    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V

    return-void
.end method

.method public static requestDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "requestDump()"

    .line 656
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    monitor-enter v0

    .line 658
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sAgentsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "====[ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getServiceProfileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ]===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private requestPeerAgents()V
    .locals 5

    .line 1673
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    .line 1675
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1679
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAgentCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$PeerAgentCallback;

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v2, "Find peer request successfully enqueued."

    .line 1681
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "[SA_SDK]SAAgentV2"

    .line 1683
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

    .line 1684
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1685
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleFindPeerErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "[SA_SDK]SAAgentV2"

    const-string v3, "Find Peer request failed!"

    .line 1688
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private requestPeerAuthInternal(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 6

    .line 1995
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0x800

    .line 1997
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 2001
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPeerAuthCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;

    .line 2002
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v4

    move-object v2, p1

    .line 2001
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 2004
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
    const-string v1, "[SA_SDK]SAAgentV2"

    .line 2006
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

    .line 2007
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onAuthenticationResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;I)V

    .line 2008
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleAuthErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Failed to request peer authentication!"

    .line 2011
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2012
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :goto_0
    return-void
.end method

.method private setNetworkConnectionTypeInternal(I)V
    .locals 4

    .line 2019
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mNetworkConnCallback:Lcom/samsung/android/sdk/accessory/SAAgentV2$NetworkConnectionCallback;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setNetworkConnectionType(ILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "[SA_SDK]SAAgentV2"

    const-string v0, "set network connection type successfully enqueued."

    .line 2021
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "[SA_SDK]SAAgentV2"

    .line 2023
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

    .line 2024
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onNetworkConnectionResponse(II)V

    .line 2025
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleNetworkConnectionTypeErrorCode(I)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "set network connection type failed!"

    .line 2028
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

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

    .line 1639
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid socketClass param:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1644
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 1645
    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    return-void

    .line 1648
    :cond_1
    new-array p0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "[SA_SDK]SAAgentV2"

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1653
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid implemetation of SASocket. Provider a public default constructor in the implementation class."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1028
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1031
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to Accept service connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1045
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "acceptServiceConnection: mBackgroundWorker is null!"

    .line 1048
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 1034
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

    .line 1035
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected authenticatePeerAgent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authentication requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1133
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1134
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "authenticatePeerAgent: mBackgroundWorker is null!"

    .line 1136
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 1126
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

    .line 1127
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p0, "SAAgentV2: nothing to dump"

    .line 937
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected final declared-synchronized findPeerAgents()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 951
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

    .line 953
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 960
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 962
    iput v1, v0, Landroid/os/Message;->what:I

    .line 963
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 964
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "findPeerAgents: mBackgroundWorker is null!"

    .line 965
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "[SA_SDK]SAAgentV2"

    .line 956
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

    .line 957
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 950
    monitor-exit p0

    throw v0
.end method

.method getAgentHandler()Landroid/os/Handler;
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method getId()Ljava/lang/String;
    .locals 3

    .line 2078
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x800

    const/4 v2, 0x0

    .line 2080
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    :cond_0
    return-object v0
.end method

.method getLocalAgentId()Ljava/lang/String;
    .locals 4

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 1819
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

    .line 1822
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x309

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1823
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v1

    const/16 v2, 0x12a

    if-lt v1, v2, :cond_0

    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Service record was not found in Accessory Framework.Registering service again!"

    .line 1824
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerService()V

    :try_start_1
    const-string v1, "[SA_SDK]SAAgentV2"

    const-string v2, "Trying to fetch agent ID after re-registration"

    .line 1827
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

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
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed to retrieve service record after re-registration"

    .line 1830
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v1, "Failed to retrieve service record"

    .line 1834
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method protected getNetworkConnectionType()I
    .locals 4

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getNetworkConnectionTypeInternal()I

    move-result p0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 1163
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

    .line 1164
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    const/4 p0, -0x1

    return p0
.end method

.method public getServiceChannelId(I)I
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Failed because Service Profile is null"

    .line 1235
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getServiceChannelSize()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1244
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

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
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Failed because of wrong index"

    .line 1240
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getServiceChannelSize()I
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Failed because Service Profile is null"

    .line 1215
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1218
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getServiceChannelList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getServiceProfileId()Ljava/lang/String;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Failed because Service Profile is null"

    .line 1180
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1183
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceProfileName()Ljava/lang/String;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Failed because Service Profile is null"

    .line 1195
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1198
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method handleAgentLowMemory()V
    .locals 1

    .line 1871
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/IJobListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1849
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 1850
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1851
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1852
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params"

    .line 1853
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1854
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1855
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleConnectionRequest(Landroid/content/Intent;)V
    .locals 2

    .line 1841
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 1842
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1843
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1844
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 2135
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

    .line 2131
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 2132
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    return-void

    :sswitch_1
    const-string p2, "[SA_SDK]SAAgentV2"

    const-string v1, "Samsung Accessory SDK cannot be initialized"

    .line 2120
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Samsung Accessory SDK cannot be initialized. Device or Build not compatible."

    .line 2121
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 2123
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    return-void

    :sswitch_2
    const/4 p2, 0x1

    .line 2115
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->cleanupConnections(Z)V

    const-string p2, "Samsung Accessory Framework has died!!"

    .line 2116
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    .line 2117
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleOnErrorCode(I)V

    return-void

    :sswitch_3
    const/16 p1, 0x409

    .line 2126
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 2127
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleServiceConnectionErrorCode(I)V

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

.method handleMessageReceived()V
    .locals 1

    .line 1859
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method isFeatureEnabled(I)Z
    .locals 0

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2208
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isSocketSupported()Z

    move-result p0

    goto :goto_0

    .line 2205
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mServiceProfile:Lcom/samsung/android/sdk/accessory/SAServiceProfile;

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

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Peer authentication response received:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 929
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
    const-string p0, "[SA_SDK]SAAgentV2"

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACCEPT_STATE_ERROR: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " PeerAgent: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 931
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid implementation of SAAgentV2.onFindPeerAgentsResponse(SAPeerAgent[], int) should be overrided!"

    .line 782
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onLowMemory()V
    .locals 1

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "Service Low Memory"

    .line 910
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onNetworkConnectionResponse(II)V
    .locals 2

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 899
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

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Invalid implementation of SAAgentV2.onPeerAgentsUpdated(SAPeerAgent[], int) should be overrided!"

    .line 812
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accepting connection request by default from Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->acceptServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "No Implementaion for onServiceConnectionResponse(SAPeerAgent peerAgent, SASocket socket, int result)!"

    .line 865
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;
    .locals 0

    .line 1255
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mMessage:Lcom/samsung/android/sdk/accessory/SAMessage;

    .line 1256
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAgentId:Ljava/lang/String;

    return-object p0
.end method

.method protected rejectServiceConnectionRequest(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 1075
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1078
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to reject connection request from peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transaction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getTransactionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1092
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "rejectServiceConnection: mBackgroundWorker is null!"

    .line 1095
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting service connection with invalid peer agent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleInvalidPeerAction(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 1081
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

    .line 1082
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method public releaseAgent()V
    .locals 2

    .line 650
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->sInstanceHandler:Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 651
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final requestServiceConnection(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 989
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal argument peerAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 992
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connection requested for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1002
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1003
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "requestServiceConection: mBackgroundWorker is null!"

    .line 1005
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAAgentV2"

    .line 995
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

    .line 996
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method

.method runOnBackgroundThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 2177
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method protected setNetworkConnectionType(I)V
    .locals 3

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mSa:Lcom/samsung/android/sdk/accessory/SA;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SA;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1151
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1152
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "setNetworkConnectionType: mBackgroundWorker is null!"

    .line 1154
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1145
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

    .line 1146
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void
.end method
