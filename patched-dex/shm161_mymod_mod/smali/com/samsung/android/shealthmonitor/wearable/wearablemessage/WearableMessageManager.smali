.class public Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
.super Ljava/lang/Object;
.source "WearableMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$SenderHandler;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ReceiverHandler;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;
    }
.end annotation


# static fields
.field private static final LAST_SUPPORT_VERSION:D = 0.1

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableMessageManager"

.field private static final mInstance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

.field private static final mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mMessageDataListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiverRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

.field private final mResultListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSenderRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataListenerMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataQueue:Ljava/util/Queue;

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "START WearableMessageManager()"

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;-><init>(ZLcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mReceiverRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mReceiverRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;-><init>(ZLcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSenderRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    .line 74
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSenderRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string v0, "END WearableMessageManager()"

    .line 75
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;[B)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->onReceiveMessageFromOtherNode([B)V

    return-void
.end method

.method private checkInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string v0, "checkInformation()"

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sender : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", body : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0xdc5804d

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.wearable.app.health.samd.bp.common"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    const-string p0, "S HealthMonitor - WearableMessageManager"

    .line 480
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "checkInformation(), sender invalid : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 485
    :cond_2
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "action"

    .line 486
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "information"

    const-string p2, "action"

    .line 487
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "data"

    .line 488
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "data"

    .line 489
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "device_id"

    .line 490
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "bt_address"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "device_id"

    .line 491
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "bt_address"

    .line 492
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 495
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->insertProfileData(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 497
    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->setDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->setInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->onReceiveConnectionStatusChange(Ljava/lang/String;Z)V

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "checkInformation() success"

    .line 502
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "BT Address or Device ID is empty."

    .line 504
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "data is empty."

    .line 507
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "action name or value is empty."

    .line 510
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 513
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private checkMessageDataQueue(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;)Z
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "receiverAddress is null in checkMessageDataQueue()"

    .line 273
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;

    if-nez v1, :cond_1

    const-string v1, "S HealthMonitor - WearableMessageManager"

    const-string v2, "messageData is null in checkMessageDataQueue()"

    .line 281
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "receiver"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "S HealthMonitor - WearableMessageManager"

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkMessageDataQueue() this message is not current receiver : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;->onDataReceived(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "S HealthMonitor - WearableMessageManager"

    .line 293
    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 297
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 298
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;

    if-nez p1, :cond_4

    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string p2, "messageData is null in checkMessageDataQueue()"

    .line 300
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "S HealthMonitor - WearableMessageManager"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "messageData addQueue : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private getCompressedBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string v0, "getCompressedBody()"

    .line 545
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableUtil;->compressStringToByte(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 549
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 551
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDecompressedBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string v0, "getDecompressedBody()"

    .line 558
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 561
    :try_start_0
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 562
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableUtil;->decompressByteToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 564
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
    .locals 1

    .line 79
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    return-object v0
.end method

.method private makeWearableMessageIntent(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;)Landroid/content/Intent;
    .locals 2

    .line 518
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 519
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getReceiver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sender"

    .line 520
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "receiver"

    .line 521
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getReceiver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "version"

    .line 522
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getVersion()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "sequence_num"

    .line 523
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "type"

    .line 524
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private onReceiveMessageFromOtherNode([B)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "data is null"

    .line 354
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 366
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getDecompressedBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->setBody(Ljava/lang/String;)V

    const-string p1, "MESSAGE"

    .line 368
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "REQUEST"

    .line 369
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->checkInformation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceiveMessageFromOtherNode()"

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received data : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1fe7aa    # 2.930006E-39f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v1, v2, :cond_3

    const v2, 0x63b68be7

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "MESSAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :cond_3
    const-string v1, "DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v5

    :goto_1
    const v1, 0x6c1a7e6f

    const v2, 0x1a5d0441

    packed-switch p1, :pswitch_data_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onReceive() WearableMessage default type : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 421
    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    if-eq v6, v2, :cond_6

    if-eq v6, v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_6
    const-string v1, "RESPONSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v5

    :goto_3
    packed-switch v3, :pswitch_data_1

    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceive() [MESSAGE] ERROR"

    .line 447
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->FAIL_REQUEST:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_1
    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceive() [MESSAGE] RESPONSE"

    .line 442
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->SUCCESS_REQUEST:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :pswitch_2
    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceive() [MESSAGE] REQUEST"

    .line 423
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getReceiver()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;

    .line 425
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->makeWearableMessageIntent(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;)Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_8

    .line 429
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataQueue:Ljava/util/Queue;

    new-instance v2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageData;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "S HealthMonitor - WearableMessageManager"

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataListener is null. receiver : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getReceiver()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendBrToTracker(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_4

    .line 435
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;->onDataReceived(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_4
    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 437
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 452
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    if-nez v1, :cond_9

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "onReceive() [MESSAGE] resultListener is null"

    .line 454
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 459
    :cond_9
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;->onResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_3
    const-string v1, "S HealthMonitor - WearableMessageManager"

    .line 461
    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 463
    :goto_6
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :goto_7
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    throw p1

    .line 379
    :pswitch_3
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x3f2d9e8

    if-eq v6, v7, :cond_c

    if-eq v6, v2, :cond_b

    if-eq v6, v1, :cond_a

    goto :goto_8

    :cond_a
    const-string v1, "REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_9

    :cond_b
    const-string v1, "RESPONSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    move v3, v4

    goto :goto_9

    :cond_c
    const-string v1, "ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v3, 0x2

    goto :goto_9

    :cond_d
    :goto_8
    move v3, v5

    :goto_9
    packed-switch v3, :pswitch_data_2

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive() [DATA] UNKNOWN MessageValue, seq num : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->FAIL_REQUEST:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :pswitch_4
    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive() [DATA] ERROR, seq num : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->FAIL_REQUEST:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :pswitch_5
    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceive() [DATA] RESPONSE"

    .line 387
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->SUCCESS_REQUEST:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :pswitch_6
    const-string p1, "S HealthMonitor - WearableMessageManager"

    const-string v1, "onReceive() [DATA] REQUEST"

    .line 381
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->makeWearableMessageIntent(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;)Landroid/content/Intent;

    move-result-object p0

    .line 383
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->onReceiveRequestMessage(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 402
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    if-nez v1, :cond_e

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "onReceive() [DATA] resultListener is null"

    .line 404
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_e
    :try_start_4
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;->onResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p1

    goto :goto_c

    :catch_2
    move-exception p1

    :try_start_5
    const-string v1, "S HealthMonitor - WearableMessageManager"

    .line 411
    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 413
    :goto_b
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :goto_c
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getSequence_num()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    throw p1

    :goto_d
    return-void

    :catch_3
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 362
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private sendBrToTracker(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .line 531
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "S HealthMonitor - WearableMessageManager"

    .line 533
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendBroadcast(). receiver : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageToSenderHandler(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "data is null"

    .line 312
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSenderRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->access$100(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "sendMessageToSenderHandler() handler is null"

    .line 318
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "S HealthMonitor - WearableMessageManager"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMessageToSenderHandler() obtainMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 325
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSenderRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->access$200(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public clearResultListener()V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 538
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->DISCONNECT_DEVICE:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;->onResult(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public registerMessageDataListener(Landroid/content/Intent;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Intent is null."

    .line 244
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v0, "receiver"

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "HEADER_RECEIVER is null."

    .line 249
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HEADER_RECEIVER input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    const-string v0, "receiver"

    .line 256
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "HEADER_RECEIVER input parameter"

    .line 261
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HEADER_RECEIVER input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerMessageDataListener() receiverAddress : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", messageDataListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mMessageDataListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->checkMessageDataQueue(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HEADER_RECEIVER input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 10

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 183
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Node is null"

    .line 185
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 189
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;

    const-string v2, "REQUEST"

    const-wide v5, 0x3fb999999999999aL    # 0.1

    const-string v8, "DATA"

    .line 196
    invoke-direct {p0, p4}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getCompressedBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, v0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendMessageToSenderHandler(Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Error : input parameter is invalid in request message"

    .line 178
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "Node is not connected."

    .line 100
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 104
    :cond_1
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 105
    new-instance v14, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;

    const-string v6, "REQUEST"

    const-wide v9, 0x3fb999999999999aL    # 0.1

    .line 112
    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getCompressedBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v14

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move v11, v3

    move-object/from16 v12, p1

    invoke-direct/range {v5 .. v13}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v14}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "jsonObject == null in requestMessage"

    .line 116
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    const-string v4, "S HealthMonitor - WearableMessageManager"

    const-string v5, "requestMessage()"

    .line 119
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v4, v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mResultListenerMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendMessageToSenderHandler(Ljava/lang/String;)V

    return v3

    :cond_3
    :goto_0
    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "Error : input parameter is invalid in request message"

    .line 95
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public responseData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Node is null"

    .line 215
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_1
    new-instance p1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;

    const-string v1, "RESPONSE"

    const-string v0, "receiver"

    .line 221
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sender"

    .line 222
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-string v0, "sequence_num"

    const/4 v6, -0x1

    .line 224
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "DATA"

    .line 228
    invoke-direct {p0, p3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getCompressedBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "jsonObject == null in responseMessage"

    .line 232
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 235
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendMessageToSenderHandler(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Error : input parameter is invalid in response message"

    .line 209
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public responseMessage(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Node is not connected."

    .line 138
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_1
    :try_start_0
    new-instance v9, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;

    const-string v1, "RESPONSE"

    const-string v0, "receiver"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sender"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-string v0, "sequence_num"

    const/4 v6, -0x1

    .line 149
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "type"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getCompressedBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-virtual {v9}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "jsonObject == null in responseMessage"

    .line 159
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->sendMessageToSenderHandler(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageManager"

    .line 153
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "Error : input parameter is invalid in response message"

    .line 133
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendMessageToReceiverHandler([B)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableMessageManager"

    const-string p1, "data is null"

    .line 336
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mReceiverRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->access$100(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "sendMessageToReceiverHandler() handler is null"

    .line 342
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "S HealthMonitor - WearableMessageManager"

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMessageToReceiverHandler() obtainMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->mReceiverRunnable:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->access$200(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;Landroid/os/Message;)V

    return-void
.end method
