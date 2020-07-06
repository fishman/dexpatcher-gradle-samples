.class public Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;
.super Ljava/lang/Object;
.source "WearableAggregator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableAggregator"

.field private static final sInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->sInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "S HealthMonitor - WearableAggregator"

    const-string v0, "WearableAggregator()"

    .line 41
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->sInstance:Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;

    return-object v0
.end method

.method private getResults(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, "S HealthMonitor - WearableAggregator"

    const-string v0, "[DB_ERROR] results null."

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 148
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "S HealthMonitor - WearableAggregator"

    const-string v0, "[DB_ERROR] results size 0."

    .line 149
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 152
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-string p1, "S HealthMonitor - WearableAggregator"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DB_ERROR] DataRoomManager result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public insertBpData(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "S HealthMonitor - WearableAggregator"

    const-string v1, "insertBpData()"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to string : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "device_info"

    .line 82
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "S HealthMonitor - WearableAggregator"

    const-string v3, "device info"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "device_info"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "message_info"

    .line 86
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "S HealthMonitor - WearableAggregator"

    const-string v3, "message info"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "message_info"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "data"

    .line 90
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "data"

    .line 91
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v2, v1

    move v1, v0

    .line 92
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "com.samsung.health.bp"

    .line 94
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.samsung.health.bp"

    .line 96
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    .line 97
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v2

    const-string v4, "com.samsung.health.bp"

    .line 99
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertData(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->getResults(Ljava/util/List;)Z

    move-result v2

    goto :goto_1

    :cond_2
    const-string v3, "S HealthMonitor - WearableAggregator"

    const-string v4, "bp data empty."

    .line 102
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "com.samsung.health.bp.configuration"

    .line 104
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.samsung.health.bp.configuration"

    .line 105
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 106
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v2

    const-string v4, "com.samsung.health.bp.configuration"

    .line 108
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertData(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 109
    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableAggregator;->getResults(Ljava/util/List;)Z

    move-result v2

    goto :goto_1

    :cond_4
    const-string v3, "S HealthMonitor - WearableAggregator"

    const-string v4, "configuration data empty."

    .line 111
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "S HealthMonitor - WearableAggregator"

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unknown data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    const-string p0, "S HealthMonitor - WearableAggregator"

    const-string p1, "insertBpData(), There was no data."

    .line 118
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableAggregator"

    .line 121
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string p0, "S HealthMonitor - WearableAggregator"

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "insertBpData(), result  : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public insertProfileData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string p0, "S HealthMonitor - WearableAggregator"

    const-string v0, "insertProfileData()"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>()V

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setDeviceUuid(Ljava/lang/String;)V

    const-string p1, "device_name"

    .line 53
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "device_name"

    .line 54
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "S HealthMonitor - WearableAggregator"

    const-string v1, "device name is empty."

    .line 56
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCapability([B)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setCreateTime(J)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->setStartTime(J)V

    .line 62
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertDeviceProfileData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    move v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableAggregator"

    .line 66
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const-string p0, "S HealthMonitor - WearableAggregator"

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "insertProfileData() , result : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
