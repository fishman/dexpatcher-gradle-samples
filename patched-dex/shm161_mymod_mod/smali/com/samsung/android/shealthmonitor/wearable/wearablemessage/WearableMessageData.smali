.class public Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;
.super Ljava/lang/Object;
.source "WearableMessageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$Information;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$TypeValue;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$MessageValue;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$SenderReceiverValue;,
        Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableMessageData"


# instance fields
.field private final mValues:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string v0, "sender"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string p2, "receiver"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string p2, "version"

    invoke-virtual {p1, p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 39
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string p2, "sequence_num"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string p2, "type"

    invoke-virtual {p1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string p1, "body"

    invoke-virtual {p0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 62
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$Charset;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :catch_1
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDouble(Ljava/lang/String;)D
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageData"

    .line 143
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "S HealthMonitor - WearableMessageData"

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDouble("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : value is empty."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getInt(Ljava/lang/String;)I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageData"

    .line 157
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "S HealthMonitor - WearableMessageData"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInt("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : value is empty."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageData"

    .line 130
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "S HealthMonitor - WearableMessageData"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getString("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") : value is empty."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->w0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    const-string v0, "body"

    .line 102
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "device"

    .line 94
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    .line 75
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    const-string v0, "receiver"

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    const-string v0, "sender"

    .line 79
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSequence_num()Ljava/lang/Integer;
    .locals 1

    const-string v0, "sequence_num"

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    .line 98
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/Double;
    .locals 2

    const-string v0, "version"

    .line 114
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1

    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableMessageData"

    .line 109
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageData;->mValues:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
