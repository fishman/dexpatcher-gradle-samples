.class public Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;
.super Ljava/lang/Object;
.source "WearableEcgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableEcgManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;


# instance fields
.field private mBrReceiver:Landroid/content/BroadcastReceiver;

.field public final mLock:Ljava/lang/Object;

.field public mLockResult:Lorg/json/JSONObject;

.field final mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

.field private mUuidForUpdateCalibration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLock:Ljava/lang/Object;

    .line 29
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager$2;-><init>(Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.wearable.app.health.samd.bp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method private doRequestMessage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v1, "com.samsung.wearable.app.health.samd.bp.measuring"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v7, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 331
    :try_start_3
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->waitLockIsSuccess()Z

    move-result v6

    .line 333
    .local v6, "waitLockIsSuccess":Z
    monitor-exit v7

    .line 334
    return v6

    .line 333
    .end local v6    # "waitLockIsSuccess":Z
    :catchall_17
    move-exception v0

    monitor-exit v7
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;
    .registers 4

    .prologue
    .line 221
    const-class v2, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    monitor-enter v2

    :try_start_3
    const-class v3, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 222
    :try_start_6
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    if-nez v1, :cond_11

    .line 223
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;-><init>()V

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    .line 225
    :cond_11
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    .line 226
    .local v0, "wearableEcgManager":Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    .line 227
    monitor-exit v2

    return-object v0

    .line 226
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 221
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;
    .registers 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v1, "jSONObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "type"

    const-string v4, "request"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v3, "action"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 268
    .local v2, "jSONObject2":Lorg/json/JSONObject;
    const-string v3, "ref_systolic"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string v3, "ref_diastolic"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v3, "nth"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    monitor-enter p0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_26} :catch_62

    .line 272
    :try_start_26
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 273
    const-string v3, "datauuid"

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    .line 276
    :cond_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_5f

    .line 277
    :try_start_3d
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v3, "S HealthMonitor - WearableEcgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [makeRequest] body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_5e} :catch_62

    .line 282
    .end local v2    # "jSONObject2":Lorg/json/JSONObject;
    :goto_5e
    return-object v1

    .line 276
    .restart local v2    # "jSONObject2":Lorg/json/JSONObject;
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v3
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_62} :catch_62

    .line 279
    .end local v2    # "jSONObject2":Lorg/json/JSONObject;
    :catch_62
    move-exception v0

    .line 280
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "S HealthMonitor - WearableEcgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 288
    .local v1, "jSONObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "type"

    const-string v4, "request"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v3, "action"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 291
    .local v2, "jSONObject2":Lorg/json/JSONObject;
    const-string v3, "app_version_code"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v3, "S HealthMonitor - WearableEcgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [makeRequest] body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 297
    .end local v2    # "jSONObject2":Lorg/json/JSONObject;
    :goto_3c
    return-object v1

    .line 294
    :catch_3d
    move-exception v0

    .line 295
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "S HealthMonitor - WearableEcgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z

    .prologue
    .line 237
    if-nez p2, :cond_a

    .line 238
    const/4 v0, 0x0

    check-cast v0, [Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    const-string v2, "status"

    const-string v3, "complete"

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_9
.end method

.method private makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "pairArr"    # [Landroid/util/Pair;

    .prologue
    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v2, "jSONObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v4, "type"

    const-string v5, "request"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v4, "action"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    if-eqz p2, :cond_34

    array-length v4, p2

    if-lez v4, :cond_34

    .line 249
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .local v3, "jSONObject2":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v4, p2

    if-ge v1, v4, :cond_2f

    .line 251
    aget-object v4, p2, v1

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    aget-object v5, p2, v1

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 253
    :cond_2f
    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    .end local v1    # "i":I
    .end local v3    # "jSONObject2":Lorg/json/JSONObject;
    :cond_34
    const-string v4, "S HealthMonitor - WearableEcgManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [makeRequest] body = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_50} :catch_51

    .line 259
    :goto_50
    return-object v2

    .line 256
    :catch_51
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "S HealthMonitor - WearableEcgManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method private waitLock()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 301
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_2d

    .line 307
    :goto_b
    :try_start_b
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_2d

    .line 308
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLockResult:Lorg/json/JSONObject;

    return-object v1

    .line 304
    :catch_f
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_10
    const-string v1, "S HealthMonitor - WearableEcgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [waitLock] Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 307
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private waitLockIsSuccess()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 313
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0xc350

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLockResult:Lorg/json/JSONObject;

    if-eqz v2, :cond_1b

    .line 315
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mLockResult:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v1

    .line 320
    :cond_1b
    :goto_1b
    return v1

    .line 318
    :catch_1c
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "S HealthMonitor - WearableEcgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [waitLock] Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method


# virtual methods
.method public cancelCalibration(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 415
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "cancel_calibration"

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/util/Pair;

    const/4 v6, 0x0

    const-string v7, "next_action"

    invoke-static {v7, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public cancelCalibrationSync()Z
    .registers 3

    .prologue
    .line 419
    const-string v0, "cancel_calibration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readyEcgCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 382
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "ready_calibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public readyEcgCalibrationSync()Z
    .registers 3

    .prologue
    .line 386
    const-string v0, "ready_calibration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendEcgForceUpdateRequest(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 423
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.common"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.common"

    const-string v4, "force_update"

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public sendInitialCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 9
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    const/4 v4, 0x1

    .line 363
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getLastEcgCalibrationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 364
    const-string v0, "re_calibration"

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 368
    .local v6, "jSONObject":Lorg/json/JSONObject;
    :goto_11
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0

    .line 366
    .end local v6    # "jSONObject":Lorg/json/JSONObject;
    :cond_25
    const-string v0, "initial_calibration"

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .restart local v6    # "jSONObject":Lorg/json/JSONObject;
    goto :goto_11
.end method

.method public sendInitialCalibrationRequestSync()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 373
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 374
    const-string v1, "re_calibration"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 378
    .local v0, "jSONObject":Lorg/json/JSONObject;
    :goto_d
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 376
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    :cond_16
    const-string v1, "initial_calibration"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .restart local v0    # "jSONObject":Lorg/json/JSONObject;
    goto :goto_d
.end method

.method public sendInitiateCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 346
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "initiate_calibration"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public sendInitiateCalibrationRequestSync()Z
    .registers 3

    .prologue
    .line 350
    const-string v0, "initiate_calibration"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendMakeDemoRequestSync()Z
    .registers 6

    .prologue
    .line 427
    const-string v0, "create_demo"

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    const-string v3, "day"

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequestBody(Ljava/lang/String;[Landroid/util/Pair;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.mobile.app.health.samd.bp.common"

    const-string v2, "com.samsung.wearable.app.health.samd.bp.common"

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 354
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "prepare_calibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public sendPreCalibrationRequestSync()Z
    .registers 3

    .prologue
    .line 358
    const-string v0, "prepare_calibration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendTermsAndConditionRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 338
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "terms_and_condition"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public sendTermsAndConditionRequestSync()Z
    .registers 3

    .prologue
    .line 342
    const-string v0, "terms_and_condition"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setUuidForUpdateCalibration(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v0, "S HealthMonitor - WearableEcgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [setUuidForUpdateCalibration] String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    monitor-enter p0

    .line 433
    :try_start_19
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mUuidForUpdateCalibration:Ljava/lang/String;

    .line 434
    monitor-exit p0

    .line 435
    return-void

    .line 434
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public startEcgCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 390
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "start_calibration"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public startEcgCalibrationSync()Z
    .registers 3

    .prologue
    .line 394
    const-string v0, "start_calibration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startEstimation(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 8
    .param p1, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 406
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "start_estimation"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public startEstimationSync()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 410
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "start_estimation"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->mResultListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->waitLock()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public updateEcgCalibration(IIILcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I
    .registers 11
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I
    .param p4, "resultListener"    # Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .prologue
    .line 398
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v0

    const-string v1, "MESSAGE"

    const-string v2, "com.samsung.mobile.app.health.samd.bp.measuring"

    const-string v3, "com.samsung.wearable.app.health.samd.bp.measuring"

    const-string v4, "update_calibration"

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->requestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    return v0
.end method

.method public updateEcgCalibrationSync(III)Z
    .registers 5
    .param p1, "i"    # I
    .param p2, "i2"    # I
    .param p3, "i3"    # I

    .prologue
    .line 402
    const-string v0, "update_calibration"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->makeRequest(Ljava/lang/String;III)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->doRequestMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
