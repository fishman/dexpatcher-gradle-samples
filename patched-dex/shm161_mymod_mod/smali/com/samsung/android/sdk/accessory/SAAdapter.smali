.class public final Lcom/samsung/android/sdk/accessory/SAAdapter;
.super Ljava/lang/Object;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;,
        Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;
    }
.end annotation


# static fields
.field private static final ACCESSORY_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final ACTION_REGISTER_AGENT:Ljava/lang/String; = "com.samsung.accessory.action.REGISTER_AGENT"

.field public static final ACTION_SERVICE_CONNECTION_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

.field private static final BIND_SERVICE_MAX_ATTEMPTS:I = 0x5

.field private static final ERROR_FATAL:I = 0x800

.field public static final ERROR_PERMISSION_DENIED:I = 0x900

.field public static final ERROR_PERMISSION_FAILED:I = 0x901

.field private static final TAG:Ljava/lang/String;

.field private static sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;


# instance fields
.field private mAgentCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientId:J

.field private mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

.field private mProxyReceiver:Landroid/os/ResultReceiver;

.field private mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

.field private mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    .line 147
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    .line 149
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    .line 150
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    .line 151
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    .line 152
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/accessory/SAAdapter;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyConnection()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    return-void
.end method

.method static synthetic access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mDeathCallback:Lcom/samsung/accessory/api/IDeathCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mScIndicationCallback:Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/accessory/SAAdapter;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    return-object p1
.end method

.method private declared-synchronized cleanup(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->tearFrameworkconnection()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 681
    :cond_0
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 682
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 684
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const/4 p1, 0x0

    .line 685
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 686
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    .line 687
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 688
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 690
    :cond_2
    monitor-exit p0

    return-void

    .line 677
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/accessory/SAAdapter;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 166
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized notifyConnection()V
    .locals 2

    monitor-enter p0

    .line 693
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 694
    invoke-interface {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onFrameworkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 696
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 692
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyDisconnection(Landroid/os/RemoteException;)V
    .locals 2

    monitor-enter p0

    .line 699
    :try_start_0
    instance-of v0, p1, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied, binder transaction buffer low"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 702
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 704
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remote call falied"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 698
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tearFrameworkconnection()V
    .locals 4

    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 654
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Binding to framework does not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 658
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->tearFrameworkConnection(J)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    :try_start_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 660
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to tear framework connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 664
    :try_start_4
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 665
    monitor-exit p0

    return-void

    .line 664
    :goto_0
    :try_start_5
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 652
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    move-object v1, p0

    .line 452
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v2, :cond_0

    .line 453
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 456
    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v6, p1

    move-object v7, p2

    move-wide v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v3 .. v11}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 461
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "acceptServiceConnection:Invalid response from Accessory Framework:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v3, "errorcode"

    .line 466
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    new-instance v3, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v4, "errorcode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "Failed to accept connection request!"

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_2
    const-string v3, "connectionId"

    .line 470
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 473
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "acceptServiceConnection:Invalid response from Accessory Framework- connectionId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 482
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Failed to accept service connection"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 484
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "acceptServiceConnection:Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method final authenticatePeeragent(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 568
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v1 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 571
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request peer authentication"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 573
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string p2, "authenticatePeeragent:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized bindToFramework()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    monitor-enter p0

    .line 178
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    .line 181
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    move v3, v2

    .line 185
    :goto_0
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-wide v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    const/16 v5, 0x800

    if-nez v4, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getState()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1

    .line 188
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v6, v6, Lcom/samsung/android/sdk/accessory/SAAdapter;->mConnection:Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;

    invoke-virtual {v4, v1, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    .line 190
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v6, "getDefaultAdapter: About start waiting"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 193
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 194
    new-instance v2, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v3, "Failed to Bind to Accessory Framework - Action interrupted!"

    invoke-direct {v2, v5, v3, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 199
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 201
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "Is the Samsung Accessory Service Framework installed?!"

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v1, :cond_2

    .line 206
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Service Connection proxy is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 208
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "Unable to bind to Samsung Accessory Service!"

    invoke-direct {v1, v5, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Application is now connected to Accessory Framework!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 212
    :catch_1
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getDefaultAdapter: Permission denied! Binding to Accessory service failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 215
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkAccessoryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x901

    const-string v2, "Permission validation failed to bind to Samsung Accessory Service! Please re-install the application and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 220
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v1, 0x900

    const-string v2, "Permission denied to bind to Samsung Accessory Service! Please add permission and try again."

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 177
    monitor-exit p0

    throw v0
.end method

.method final cleanupAgent(Ljava/lang/String;)V
    .locals 3

    .line 618
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 619
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Binding to framework does not exists"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 623
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->cleanupAgent(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 625
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to cleanup agent details"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method final closeServiceConnection(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 507
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 511
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->closeServiceConnection(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 513
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close service connection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 515
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string v0, "closeServiceConnection:Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 418
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 419
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v3, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    const-wide/16 v5, -0x1

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v2 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result p1

    return p1

    .line 422
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "findPeerAgents:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 425
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initiate peer discovery"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 427
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "findPeerAgents:Remote call failed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final getAgentDetails(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 636
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 638
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get agent details"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 640
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string v0, "getAgentDetails: Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 398
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 399
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 402
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "getAgentId:mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 405
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch agent ID"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 407
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "getAgentId:Remote call failed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized getLocalAgentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    .line 366
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 367
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 371
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response from accessory framework - null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "errorcode"

    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v1, "errorcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Failed to fetch localAgent ID"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "agentId"

    .line 378
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 381
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Get Local agent ID:Invalid response - localAgentID:null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :cond_4
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 386
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch localAgent ID"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 388
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "getLocalAgentId:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 360
    monitor-exit p0

    throw p1
.end method

.method final getNetworkConnectionType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 604
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 605
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-interface {v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getNetworkConnectionType()I

    move-result v1

    return v1

    .line 608
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v2, "getNetworkConnectionType: mServiceProxy is null"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 611
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get network connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 613
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v1, "getNetworkConnectionType: Remote call failed"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 333
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final isSocketConnected(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 549
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 553
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->isSocketConnected(JLjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 555
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to fetch socket connection status"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 557
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string v0, "isSocketConnected:Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized recycle([B)V
    .locals 2

    monitor-enter p0

    .line 645
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 646
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 647
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 648
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p1, p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mProxyReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 644
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized registerAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 2

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback added. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 317
    monitor-exit p0

    throw p1
.end method

.method final registerMexCallback(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 747
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 751
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 752
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 755
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Failed to register mex callback"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 757
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string p2, "registerMexCallback: Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized registerServices([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    monitor-enter p0

    .line 342
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 347
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->registerComponent(J[B)V

    .line 349
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;

    .line 350
    invoke-interface {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;->onAgentRegistered()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 353
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Service registration call failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 355
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v0, 0x800

    const-string v1, "registerServices:Remote call failed"

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 341
    monitor-exit p0

    throw p1
.end method

.method final rejectServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 495
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 497
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to reject service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 499
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string p2, "rejectServiceConnection:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 439
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 442
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request service connection"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 444
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string p2, "requestServiceConnection:Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final send(Ljava/lang/String;I[BZIIII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p8

    .line 524
    sget-object v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v4, :cond_0

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 529
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v6, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v9, v2

    move-object/from16 v8, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-interface/range {v5 .. v15}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v2

    return v2

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 532
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v6, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v9, v2

    move-object/from16 v8, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-interface/range {v5 .. v15}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v2

    return v2

    .line 535
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    int-to-long v7, v2

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-interface/range {v3 .. v13}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->send(JLjava/lang/String;J[BZIII)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 539
    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed send data for connection:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 541
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "send: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method final sendMessage(Ljava/lang/String;Ljava/lang/String;J[BZIIII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 711
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v2, :cond_0

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 715
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 717
    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v2, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v4, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p7

    invoke-interface/range {v3 .. v15}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 720
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send messages "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 722
    new-instance v1, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 v2, 0x800

    const-string v3, "sendMessage: Remote call failed"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    const/16 v1, -0x705

    return v1
.end method

.method final sendMessageDeliveryStatus(JII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 731
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    .line 735
    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_1

    .line 736
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->sendMessageDeliveryStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 739
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to send message delivery status"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 741
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string p2, "sendMessageDeliveryStatus: Remote call failed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final setNetworkConnectionType(ILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->bindToFramework()V

    :cond_0
    const/16 v0, 0x800

    .line 584
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 585
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->setNetworkConnectionType(JILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result p1

    return p1

    .line 588
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p2, "setNetworkConnectionType: mServiceProxy is null"

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 591
    sget-object p2, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set network connection"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 593
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "setNetworkConnectionType: Remote call failed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method final declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    .line 337
    :try_start_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 336
    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized unregisterAgentCallback(Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;)V
    .locals 2

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 324
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Agent callback removed. Current size - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mAgentCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 327
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v0, "All clients have unregistered.Disconnection from Accessory Framework."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 328
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->cleanup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 322
    monitor-exit p0

    throw p1
.end method

.method final unregisterMexCallback(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 762
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v0, :cond_0

    .line 764
    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->sAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mServiceProxy:Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter;->mClientId:J

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->unregisterMexCallback(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 766
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Failed to unregister mex callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->notifyDisconnection(Landroid/os/RemoteException;)V

    .line 768
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const/16 p1, 0x800

    const-string v0, "unregisterMexCallback: Remote call failed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method
