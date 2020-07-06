.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
.super Ljava/lang/Object;
.source "SAFileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    }
.end annotation


# static fields
.field public static final FILE_TRANSFER_ACCEPT:I = 0x2

.field public static final FILE_TRANSFER_ACCEPT_URI:I = 0x5

.field public static final FILE_TRANSFER_START:I = 0x1

.field public static final FILE_TRANSFER_START_URI:I = 0x4

.field public static final FILE_TRANSFER_STOP:I = 0x3

.field public static final FILE_TRANSFER_STOP_ALL:I = 0x6

.field private static final FT_SERVICE_BIND_TIMEOUT:I = 0x2710

.field public static final JSON_UPDATE_MSG:Ljava/lang/String; = "CallBackJson"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAFileTransferManager"

.field private static mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallingAgentNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsBound:Z

.field private static mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFTServiceConn:Landroid/content/ServiceConnection;

.field private mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

.field private mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    return-object p1
.end method

.method static synthetic access$300()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 0

    .line 38
    sput-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    return-object p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 38
    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
    .locals 1

    .line 312
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    return-object p0
.end method

.method private getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 344
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    const-class v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-nez v1, :cond_5

    .line 66
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;-><init>()V

    .line 67
    sput-object v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iput-object p0, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    .line 69
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->FILE_TRANSFER_SERVICE_INTENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    .line 72
    sget-object v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v3, v3, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x800

    if-nez v2, :cond_1

    .line 74
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v1, "Package name is null!"

    invoke-direct {p1, v3, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v4, v4, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :try_start_2
    const-string v1, "[SA_SDK]SAFileTransferManager"

    const-string v2, "SAFTAdapter: About start waiting"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_2

    .line 81
    sget-object v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    :cond_2
    sget-boolean v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    if-eqz v1, :cond_3

    const-string v1, "[SA_SDK]SAFileTransferManager"

    const-string v2, "getInstance: Woken up , FTService Connected"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/accessory/SAException;

    const-string v1, "Timed out trying to bind to FT Service!"

    invoke-direct {p1, v3, v1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "[SA_SDK]SAFileTransferManager"

    const-string v2, "getInstance: FTService Connection Failed"

    .line 93
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    if-nez p1, :cond_6

    .line 98
    :try_start_4
    new-instance p0, Ljava/lang/IllegalAccessException;

    const-string p1, "Calling agent was cleared from record. Please re-register your service."

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "[SA_SDK]SAFileTransferManager"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is using FTService"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    .line 95
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    .line 64
    monitor-exit v0

    throw p0
.end method

.method static isFTBound()Z
    .locals 1

    .line 339
    sget-boolean v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    return v0
.end method

.method static register(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V
    .locals 1

    .line 322
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static register(Ljava/lang/String;)Z
    .locals 1

    .line 315
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static unregister(Ljava/lang/String;)V
    .locals 1

    .line 325
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mCallingAgentNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 328
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mFTServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 329
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mOnlyInstance:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    const/4 p0, 0x0

    .line 330
    sput-boolean p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mIsBound:Z

    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v0, "File transfer service disconnected"

    .line 331
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v0, "Other applications are still using this FT binding"

    .line 333
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string v0, "FT already unbound for this package. Please check whether the calling agent was registered"

    .line 335
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method cancelAllTransactions(Ljava/lang/String;)I
    .locals 3

    .line 280
    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 282
    :try_start_1
    new-instance v1, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelAllRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string p0, "receiveStatus"

    .line 289
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string p1, "File Transfer Daemon could not queue request"

    .line 291
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 293
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method cancelFile(I)V
    .locals 2

    .line 264
    :try_start_0
    new-instance v0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;

    invoke-direct {v0, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    :try_start_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v0, :cond_0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 270
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 273
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method receiveFile(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p5, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string p4, "Could not register file event callback. Declining transfer."

    .line 231
    invoke-static {p0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 235
    invoke-interface {p1, p2, p3, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;->onTransferCompleted(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    if-eqz p4, :cond_1

    .line 240
    :try_start_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 241
    new-instance p2, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 p3, 0x5

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 243
    :cond_1
    new-instance p1, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;

    invoke-direct {p1, p2, p3, p5}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;-><init>(ILjava/lang/String;Z)V

    .line 244
    new-instance p2, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 p3, 0x2

    invoke-virtual {p1}, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x0

    .line 247
    iget-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz p3, :cond_2

    .line 248
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    const-string p0, "receiveStatus"

    .line 250
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string p1, "[SA_SDK]SAFileTransferManager"

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "receiveStatus:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p0, "[SA_SDK]SAFileTransferManager"

    const-string p1, "File Transfer Daemon could not queue request"

    .line 253
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 255
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    .line 258
    :goto_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 301
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    invoke-interface {v1, p2, v2}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->registerCallbackFacilitator(ILandroid/os/ResultReceiver;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method sendFile(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 162
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "AccessoryPreferences"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v15, p2

    .line 164
    invoke-interface {v3, v15, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "[SA_SDK]SAFileTransferManager"

    const-string v6, "Agent id was not found in prefs! Fetching from framework.."

    .line 166
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    :cond_0
    move-object v10, v3

    if-eqz p5, :cond_1

    .line 170
    new-instance v6, Ljava/io/File;

    move-object/from16 v7, p6

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v13, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;

    const-string v8, ""

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v9

    .line 172
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v11

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object v6, v13

    move-object v4, v13

    move-wide/from16 v13, v16

    move-object/from16 v15, v18

    move-object/from16 v16, p5

    move-object/from16 v17, v19

    move-object/from16 v18, p2

    invoke-direct/range {v6 .. v18}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x4

    invoke-virtual {v4}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 177
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object/from16 v7, p6

    .line 180
    new-instance v3, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;

    const-string v8, ""

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessoryId()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v6, v3

    move-object/from16 v14, p2

    invoke-direct/range {v6 .. v14}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_1
    new-instance v4, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v4, v6, v3}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;-><init>(ILorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 185
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v3, 0x0

    .line 190
    :goto_1
    :try_start_2
    iget-object v4, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    if-eqz v4, :cond_3

    .line 192
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isNewFTVersionSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[SA_SDK]SAFileTransferManager"

    const-string v6, "new ft version is supported"

    .line 193
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;

    iget-object v7, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mUpdater:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$UpdateHandler;

    invoke-direct {v6, v7, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferCallbackReceiver;-><init>(Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    invoke-interface {v4, v3, v6}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommandV2(Ljava/lang/String;Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, "[SA_SDK]SAFileTransferManager"

    const-string v6, "new ft version is not supported"

    .line 200
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->mServiceConnectionProxy:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager$FTServiceConnectionProxy;->getService()Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/samsung/accessory/safiletransfer/core/ISAFTManager;->sendCommand(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 208
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 206
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_4

    const-string v3, "STATUS"

    .line 213
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v3, "ID"

    .line 214
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    if-eqz v5, :cond_6

    .line 217
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isNewFTVersionSupported()Z

    move-result v4

    if-nez v4, :cond_5

    .line 218
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    :cond_5
    const-string v1, "[SA_SDK]SAFileTransferManager"

    const-string v2, "File Pushed and Callback registered"

    .line 220
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    const/4 v1, -0x1

    return v1
.end method
