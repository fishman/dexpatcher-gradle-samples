.class public Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;
.super Ljava/lang/Object;
.source "WearableDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult$StatusCode;
    }
.end annotation


# instance fields
.field private final mInsertResultJsonObject:Lorg/json/JSONObject;

.field private mStatus:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mStatus:I

    return-void
.end method


# virtual methods
.method public checkAndAddResultCount(Ljava/lang/String;I)V
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableDataConstants"

    .line 49
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getInsertResultJsonObject()Lorg/json/JSONObject;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mInsertResultJsonObject:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mStatus:I

    return p0
.end method

.method public setStatus(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;->mStatus:I

    return-void
.end method
