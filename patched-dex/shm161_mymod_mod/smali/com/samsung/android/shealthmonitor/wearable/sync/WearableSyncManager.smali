.class public Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;
.super Ljava/lang/Object;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;,
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;,
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$WearableDataSync;
    }
.end annotation


# static fields
.field public static final LAST_SUPPORT_PROTOCOL_VERSION:D = 1.0

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableSyncManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager; = null

.field static final mIsTest:Z = true

.field private static final mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mDataResetCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIdCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSyncTimeJsonObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestDataCheckMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

.field private mSupportDataType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncDataProcessingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRequestModuleListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSupportDataType:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mRequestDataCheckMap:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncRequestModuleListMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncDataProcessingMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMap:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    .line 111
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->addDataSyncSupportDataType()V

    return-void
.end method

.method private addDataSyncSupportDataType()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSupportDataType:Ljava/util/List;

    const-string v0, "delete_data"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private finishMobileSyncDataFlow(Ljava/lang/String;)V
    .locals 4

    .line 398
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "finishMobileSyncDataFlow() node is null."

    .line 400
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncRequestModuleListMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 406
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finishMobileSyncDataFlow() request module is not empty. sendMobileSyncData. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->NONE:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendMobileSyncData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;Z)V

    return-void

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mRequestDataCheckMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 415
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "S HealthMonitor - WearableSyncManager"

    const-string v1, "REQUEST_DATA flag is true"

    .line 416
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendMobileRequestData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)I

    return-void

    :cond_2
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "REQUEST_DATA flag is false. Finish flow"

    .line 419
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;
    .locals 1

    .line 87
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mInstance:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    return-object v0
.end method

.method private getLastSyncTime(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    return-wide v0

    .line 605
    :cond_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 607
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSyncManager"

    .line 609
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0

    :cond_1
    return-wide v0
.end method

.method private getLastSyncTimeJsonObject(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)Lorg/json/JSONObject;
    .locals 5

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "getLastSyncTimeJsonObject() Node is null"

    .line 487
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 494
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getMobileLastSyncTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EMPTY"

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "S HealthMonitor - WearableSyncManager"

    const-string v2, "getLastSyncTimeJsonObject() last sync time map SP is default string"

    .line 496
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "S HealthMonitor - WearableSyncManager"

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLastSyncTimeJsonObject() syncTimeString : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "S HealthMonitor - WearableSyncManager"

    .line 503
    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_2

    .line 507
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 509
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_3
    return-object v0
.end method

.method private getRequestDeviceInfo(Ljava/lang/String;JJ)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;
    .locals 13

    .line 463
    new-instance v12, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x1

    move-object v0, v12

    move-wide v5, p2

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;-><init>(Ljava/lang/String;IDJJJZ)V

    return-object v12
.end method

.method private getRequestMessageInfo(Ljava/lang/String;I)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;
    .locals 2

    .line 455
    new-instance p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    const-string v0, ""

    const-string v1, "REQUEST"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private getResponseDeviceInfo(Ljava/lang/String;J)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;
    .locals 12

    .line 474
    new-instance p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, -0x8000000000000000L

    const-wide/high16 v9, -0x8000000000000000L

    const/4 v11, 0x1

    move-object v0, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;-><init>(Ljava/lang/String;IDJJJZ)V

    return-object p0
.end method

.method private getResponseMessageInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;
    .locals 1

    .line 459
    new-instance p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    const-string v0, "REQUEST"

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 646
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 647
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 649
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "S HealthMonitor - WearableSyncManager"

    .line 652
    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private onReceiveResponseMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 199
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;

    move-result-object p1

    const-string v0, "S HealthMonitor - WearableSyncManager"

    const-string v1, "onReceiveResponseMessage() data"

    .line 201
    invoke-static {v0, v1, p3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$1;->$SwitchMap$com$samsung$android$shealthmonitor$wearable$wearablemessage$WearableMessageManager$MessageResult:[I

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "S HealthMonitor - WearableSyncManager"

    const-string p3, "onReceiveResponseMessage() Result is FAIL_REQUEST"

    .line 208
    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncDataProcessingMap:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "nodeId is null"

    .line 212
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->onReceiveResponseSuccessMessage(ILjava/lang/String;)V

    return-void

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onReceiveResponseSuccessMessage(ILjava/lang/String;)V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceiveResponseSuccessMessage() Save last sync time jsonObject. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", nodeId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->saveMobileLastSyncTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "S HealthMonitor - WearableSyncManager"

    const-string v1, "onReceiveResponseSuccessMessage() jsonObject is null"

    .line 349
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    new-instance p2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;

    invoke-direct {p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;-><init>(Lorg/json/JSONObject;)V

    .line 361
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S HealthMonitor - WearableSyncManager"

    const-string v2, "[WEARABLE_MESSAGE] [M_RECEIVED] [RESPONSE] "

    .line 362
    invoke-static {v1, v2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p1, p2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    iget-object p1, p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;->mAction:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3ab20932

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x26773086

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "REQUEST_DATA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v2, "SYNC_DATA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v4

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceiveResponseSuccessMessage() default. mMessageInfo.mAction : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    iget-object p2, p2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 378
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_5

    const-string p1, "S HealthMonitor - WearableSyncManager"

    const-string p2, "onReceiveResponseSuccessMessage() ACTION_REQUEST_DATA resetCache is null. setCache"

    .line 380
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getResetEventSendFlag(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "S HealthMonitor - WearableSyncManager"

    const-string p2, "onReceiveResponseSuccessMessage() ACTION_REQUEST_DATA resetCache is false. set true"

    .line 385
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {v0, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->setResetEventSendFlag(Ljava/lang/String;Z)V

    .line 387
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void

    .line 367
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncDataProcessingMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-direct {p0, v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendNotifyToAppMobileResponseReceived(I)V

    .line 373
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->finishMobileSyncDataFlow(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSyncManager"

    .line 357
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :goto_2
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "nodeId is null"

    .line 335
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveAndGetLatestLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;)J"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 561
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 569
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 570
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveAndGetLatestLastSyncTime() type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getCount()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 571
    invoke-static {v1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 574
    invoke-static {v1, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private sendDataToWearableMessage(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/lang/String;)I
    .locals 6

    .line 323
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.mobile.app.health.samd.bp.syncmanager"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.syncmanager"

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p2

    .line 326
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mIdCacheMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method private sendMobileSyncData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;Z)V
    .locals 7

    const-string v0, "S HealthMonitor - WearableSyncManager"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMobileSyncData(), requestModule : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportRequestData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " node : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getLastSyncTimeJsonObject(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "sendMobileSyncData() lastSyncTimeJsonObject is null"

    .line 254
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 259
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSupportDataType:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    new-instance v4, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getLastSyncTime(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;-><init>(J)V

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 265
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mRequestDataCheckMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncDataProcessingMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_4

    .line 271
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "S HealthMonitor - WearableSyncManager"

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMobileSyncData() processing true. Save in queue : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncRequestModuleListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_3

    .line 276
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncRequestModuleListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_3
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 285
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncDataProcessingMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSyncRequestModuleListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;

    invoke-direct {p3, p0, p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;)V

    invoke-virtual {p2, v1, p1, p3}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;->getDataJsonObject(Ljava/util/LinkedHashMap;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;)Z

    return-void
.end method

.method private sendNotifyToAppMobileResponseReceived(I)V
    .locals 2

    const-string p0, "S HealthMonitor - WearableSyncManager"

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendNotifyToAppMobileResponseReceived() ACTION_RESPONSE_RECEIVED EXTRA_RESULT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.shealthmonitor.wearable.RESPONSE_RECEIVED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EXTRA_RESULT"

    .line 437
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNotifyToAppWearableDataReceived(I)V
    .locals 2

    const-string p0, "S HealthMonitor - WearableSyncManager"

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendNotifyToAppWearableDataReceived() ACTION_DATA_UPDATED EXTRA_RESULT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "EXTRA_RESULT"

    .line 447
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPrevLatestLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "getPrevLatestLastSyncTime() Node is null"

    .line 524
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getLastSyncTimeJsonObject(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 529
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 536
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 539
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 541
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 544
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "S HealthMonitor - WearableSyncManager"

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPrevLatestLastSyncTime() type : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    :catch_1
    const-string v2, "S HealthMonitor - WearableSyncManager"

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPrevLatestLastSyncTime() value is invalid. key : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_3
    :goto_1
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string v2, "getPrevLatestLastSyncTime() last sync time is 0."

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getSequenceNumberForDataSync()I
    .locals 0

    .line 620
    sget-object p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mSequenceNumberAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    return p0
.end method

.method final synthetic lambda$new$0$WearableSyncManager(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->onReceiveResponseMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$sendMobileSyncData$1$WearableSyncManager(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;Lorg/json/JSONArray;Z)V
    .locals 9

    const-string v0, "S HealthMonitor - WearableSyncManager"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMobileSyncData() isLastChunk : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonArray : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getPrevLatestLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)J

    move-result-wide v0

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->saveAndGetLatestLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;)J

    move-result-wide v7

    const-string p2, "SYNC_DATA"

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getSequenceNumberForDataSync()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getRequestMessageInfo(Ljava/lang/String;I)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    move-result-object p2

    .line 299
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-wide v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getRequestDeviceInfo(Ljava/lang/String;JJ)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    move-result-object v2

    .line 301
    new-instance v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;

    invoke-direct {v3, p2, v2, p3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;Lorg/json/JSONArray;)V

    .line 303
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "S HealthMonitor - WearableSyncManager"

    const-string v2, "[WEARABLE_MESSAGE] [M_SENT] [REQUEST] "

    .line 304
    invoke-static {p3, v2, p2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendDataToWearableMessage(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/lang/String;)I

    const-string p0, "S HealthMonitor - WearableSyncManager"

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mSyncHandler.sendMobileSyncData() isLastChunk : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", prevLastSyncTime : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "mSyncHandler.sendMobileSyncData() isLastChunk true"

    .line 313
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "mSyncHandler.sendMobileSyncData() isLastChunk false"

    .line 316
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveRequestMessage(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    .line 117
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "onReceiveRequestMessage() node is null."

    .line 119
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    new-instance v2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;

    invoke-direct {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;-><init>(Lorg/json/JSONObject;)V

    .line 132
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S HealthMonitor - WearableSyncManager"

    const-string v4, "[WEARABLE_MESSAGE] [M_RECEIVED] [REQUEST] "

    .line 133
    invoke-static {v3, v4, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, v2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;->mAction:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3ab20932

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, -0x26773086

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "REQUEST_DATA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "SYNC_DATA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "onReceiveRequestMessage() Result is FAIL_REQUEST"

    .line 153
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->insertBpData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    .line 140
    :goto_1
    invoke-direct {p0, v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendNotifyToAppWearableDataReceived(I)V

    .line 142
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p0

    if-eqz v1, :cond_5

    const-string v1, "SUCCESS"

    goto :goto_2

    :cond_5
    const-string v1, "DB_ERROR"

    .line 143
    :goto_2
    invoke-static {p2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableUtil;->getResponseData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->setWearableDataInsertTime(Ljava/lang/String;J)V

    const-string p2, "S HealthMonitor - WearableSyncManager"

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wearable data insert finish. time : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableSyncManager"

    .line 128
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceiveWearableRequestData(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;Landroid/content/Intent;)V
    .locals 5

    .line 167
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "onReceiveWearableRequestData() node is null."

    .line 169
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDeviceInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    iget-wide v1, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mLastSyncTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 176
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->resetLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    :cond_1
    const-string v1, "SUCCESS"

    const-string v2, "REQUEST_DATA"

    .line 180
    iget-object p1, p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    iget p1, p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;->id:I

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getResponseMessageInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    move-result-object p1

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getResponseDeviceInfo(Ljava/lang/String;J)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;Lorg/json/JSONArray;)V

    .line 185
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S HealthMonitor - WearableSyncManager"

    const-string v2, "[WEARABLE_MESSAGE] [M_SENT] [RESPONSE] "

    .line 186
    invoke-static {v1, v2, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Landroid/content/Intent;Ljava/lang/String;)V

    .line 192
    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->WEARABLE_DEVICE:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendMobileSyncData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;Z)V

    return-void
.end method

.method public resetLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 3

    .line 584
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "S HealthMonitor - WearableSyncManager"

    const-string v2, "resetLastSyncTime()"

    .line 585
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mLastSyncTimeJsonObjectMapTemp:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->saveMobileLastSyncTime(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMobileRequestData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)I
    .locals 11

    const-string v0, "REQUEST_DATA"

    .line 675
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getSequenceNumberForDataSync()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getRequestMessageInfo(Ljava/lang/String;I)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 680
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getResetEventSendFlag(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 681
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mDataResetCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getPrevLatestLastSyncTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)J

    move-result-wide v1

    const-string v3, "S HealthMonitor - WearableSyncManager"

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendMobileRequestData() normal case. send last sync time : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-wide v9, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    const-string v3, "S HealthMonitor - WearableSyncManager"

    const-string v4, "sendMobileRequestData() reset case. send last sync time 0"

    .line 688
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v5, p0

    move-wide v7, v9

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getRequestDeviceInfo(Ljava/lang/String;JJ)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    move-result-object v1

    .line 693
    new-instance v2, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;-><init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;Lorg/json/JSONArray;)V

    .line 694
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S HealthMonitor - WearableSyncManager"

    const-string v2, "[WEARABLE_MESSAGE] [M_SENT] [REQUEST] "

    .line 695
    invoke-static {v1, v2, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendDataToWearableMessage(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/lang/String;)I

    move-result v0

    .line 702
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->mRequestDataCheckMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public sendMobileSyncData()V
    .locals 3

    .line 231
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string v0, "sendMobileSyncData() node is null."

    .line 233
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendMobileSyncData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;Z)V

    return-void
.end method

.method public syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z
    .locals 4

    .line 629
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string p1, "syncRequest() node is null."

    .line 631
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncRequest() requestModule : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 636
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->sendMobileSyncData(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;Z)V

    .line 639
    sget-object p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->startSyncToHealthSdkStore(J)Z

    return v1
.end method
