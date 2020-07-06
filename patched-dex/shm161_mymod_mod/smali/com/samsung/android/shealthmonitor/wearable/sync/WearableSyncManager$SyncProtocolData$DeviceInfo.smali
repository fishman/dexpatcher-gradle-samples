.class Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;
.super Ljava/lang/Object;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;
    }
.end annotation


# instance fields
.field mDevice:Ljava/lang/String;

.field mDeviceType:I

.field mEndTime:J

.field mIsLastChunk:Z

.field mLastSyncTime:J

.field mStartTime:J

.field mVersion:D


# direct methods
.method constructor <init>(Ljava/lang/String;IDJJJZ)V
    .locals 0

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDevice:Ljava/lang/String;

    .line 947
    iput p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDeviceType:I

    .line 948
    iput-wide p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mVersion:D

    .line 949
    iput-wide p5, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mLastSyncTime:J

    .line 950
    iput-wide p7, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mStartTime:J

    .line 951
    iput-wide p9, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mEndTime:J

    .line 952
    iput-boolean p11, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mIsLastChunk:Z

    return-void
.end method


# virtual methods
.method toJsonObject()Lorg/json/JSONObject;
    .locals 7

    .line 956
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, ""

    .line 958
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDevice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 959
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDevice:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/high16 v1, -0x80000000

    .line 961
    iget v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDeviceType:I

    if-eq v1, v2, :cond_1

    .line 962
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 964
    iget-wide v3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mVersion:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    .line 965
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mVersion:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 967
    :cond_2
    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mLastSyncTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3

    .line 968
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v5, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mLastSyncTime:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 970
    :cond_3
    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mStartTime:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_4

    .line 971
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v5, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mStartTime:J

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 973
    :cond_4
    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mEndTime:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_5

    .line 974
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mEndTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 976
    :cond_5
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->mIsLastChunk:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 978
    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
