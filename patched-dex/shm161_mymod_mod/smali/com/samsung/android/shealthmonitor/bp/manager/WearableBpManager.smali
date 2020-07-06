.class public Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;
.super Ljava/lang/Object;
.source "WearableBpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableBpManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;


# instance fields
.field private mBrReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mLockResult:Lorg/json/JSONObject;

.field final mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

.field private mUuidForUpdateCalibration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.wearable.app.health.samd.bp"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLockResult:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLockResult:Lorg/json/JSONObject;

    return-object p1
.end method

.method private doRequestMessage(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v1, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 172
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 177
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v1

    const-string v2, "MESSAGE"

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->waitLockIsSuccess()Z

    move-result p0

    .line 184
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;-><init>()V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    .line 30
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method private makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;
    .locals 3

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "request"

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    .line 84
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ref_systolic"

    .line 87
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "ref_diastolic"

    .line 88
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "nth"

    .line 89
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "datauuid"

    .line 92
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    .line 95
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "data"

    .line 96
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "S HealthMonitor - WearableBpManager"

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " [makeRequest] body = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 95
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableBpManager"

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 105
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    const-string v1, "request"

    .line 107
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    .line 108
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "app_version_code"

    .line 111
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data"

    .line 112
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "S HealthMonitor - WearableBpManager"

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " [makeRequest] body = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "S HealthMonitor - WearableBpManager"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 55
    new-array p2, p2, [Landroid/util/Pair;

    const/4 v0, 0x0

    const-string v1, "status"

    const-string v2, "complete"

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    aput-object v1, p2, v0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;
    .locals 3

    .line 62
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    const-string v1, "request"

    .line 64
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    .line 65
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 66
    array-length p1, p2

    if-lez p1, :cond_1

    .line 67
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    .line 68
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 69
    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    aget-object v2, p2, v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "data"

    .line 71
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "S HealthMonitor - WearableBpManager"

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " [makeRequest] body = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "S HealthMonitor - WearableBpManager"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private waitLock()Lorg/json/JSONObject;
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "S HealthMonitor - WearableBpManager"

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [waitLock] Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLockResult:Lorg/json/JSONObject;

    return-object p0

    .line 155
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private waitLockIsSuccess()Z
    .locals 3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLock:Ljava/lang/Object;

    const-wide/32 v1, 0xc350

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLockResult:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mLockResult:Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "success"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - WearableBpManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [waitLock] Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancelCalibration(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const/4 v0, 0x1

    .line 315
    new-array v0, v0, [Landroid/util/Pair;

    const-string v1, "next_action"

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "cancel_calibration"

    .line 316
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object p0

    .line 317
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 321
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    .line 317
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public cancelCalibrationSync()Z
    .locals 2

    const-string v0, "cancel_calibration"

    const/4 v1, 0x0

    .line 324
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public readyBpCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "ready_calibration"

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 259
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 263
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public readyBpCalibrationSync()Z
    .locals 2

    const-string v0, "ready_calibration"

    const/4 v1, 0x0

    .line 266
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendBpForceUpdateRequest(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "force_update"

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 330
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.common"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.common"

    .line 334
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public sendInitialCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    .line 235
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const-string v0, "re_calibration"

    .line 236
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "initial_calibration"

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 240
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 244
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 240
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public sendInitialCalibrationRequestSync()Z
    .locals 2

    .line 249
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "re_calibration"

    .line 250
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "initial_calibration"

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 254
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendInitiateCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "initiate_calibration"

    const/4 v1, 0x1

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 206
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 210
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public sendInitiateCalibrationRequestSync()Z
    .locals 2

    const-string v0, "initiate_calibration"

    const/4 v1, 0x1

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendMakeDemoRequestSync()Z
    .locals 3

    const/4 v0, 0x1

    .line 338
    new-array v0, v0, [Landroid/util/Pair;

    const-string v1, "day"

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "create_demo"

    .line 339
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.mobile.app.health.samd.bp.common"

    const-string v2, "com.samsung.wearable.app.health.samd.bp.common"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "prepare_calibration"

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 220
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 224
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public sendPreCalibrationRequestSync()Z
    .locals 2

    const-string v0, "prepare_calibration"

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendTermsAndConditionRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "terms_and_condition"

    const/4 v1, 0x1

    .line 190
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 191
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 195
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 191
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public sendTermsAndConditionRequestSync()Z
    .locals 2

    const-string v0, "terms_and_condition"

    const/4 v1, 0x1

    .line 199
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setUuidForUpdateCalibration(Ljava/lang/String;)V
    .locals 3

    const-string v0, "S HealthMonitor - WearableBpManager"

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [setUuidForUpdateCalibration] String : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startBpCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "start_calibration"

    const/4 v1, 0x0

    .line 271
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 272
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 276
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public startBpCalibrationSync()Z
    .locals 2

    const-string v0, "start_calibration"

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startEstimation(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "start_estimation"

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p0

    .line 298
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 302
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 298
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public startEstimationSync()Lorg/json/JSONObject;
    .locals 7

    const-string v0, "start_estimation"

    const/4 v1, 0x0

    .line 305
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v1

    const-string v2, "MESSAGE"

    const-string v3, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v4, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 310
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 306
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    .line 311
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->waitLock()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public updateBpCalibration(IIILcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .locals 6

    const-string v0, "update_calibration"

    .line 284
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object p0

    .line 285
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    .line 289
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    .line 285
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p0

    return p0
.end method

.method public updateBpCalibrationSync(III)Z
    .locals 1

    const-string v0, "update_calibration"

    .line 292
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
