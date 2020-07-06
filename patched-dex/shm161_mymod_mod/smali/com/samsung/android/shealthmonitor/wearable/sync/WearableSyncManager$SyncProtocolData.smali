.class Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;
.super Ljava/lang/Object;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncProtocolData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;,
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;,
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;
    }
.end annotation


# static fields
.field static final DEFAULT_DOUBLE:D = -1.0

.field static final DEFAULT_INT:I = -0x80000000

.field static final DEFAULT_LONG:J = -0x8000000000000000L

.field static final DEFAULT_STRING:Ljava/lang/String; = ""


# instance fields
.field mDataJsonArray:Lorg/json/JSONArray;

.field mDeviceInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

.field mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;Lorg/json/JSONArray;)V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    .line 818
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDeviceInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    if-nez p3, :cond_0

    .line 820
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;

    return-void

    .line 822
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 738
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 742
    :try_start_0
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, -0x80000000

    if-eqz v3, :cond_4

    const-string v3, "S HealthMonitor - WearableSyncManager"

    const-string v5, "SyncProtocolData() message_info"

    .line 743
    invoke-static {v3, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 752
    sget-object v5, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->action:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->action:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, ""

    .line 754
    :goto_0
    sget-object v6, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->result:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->result:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    .line 756
    :goto_1
    sget-object v7, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v7}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    .line 757
    invoke-virtual {v7}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    const-string v7, ""

    .line 759
    :goto_2
    sget-object v8, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->id:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    invoke-virtual {v8}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->id:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;

    .line 760
    invoke-virtual {v8}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Key;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 762
    :goto_3
    new-instance v8, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    invoke-direct {v8, v5, v6, v7, v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v8, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    .line 764
    :cond_4
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "S HealthMonitor - WearableSyncManager"

    const-string v5, "SyncProtocolData() device_info"

    .line 765
    invoke-static {v3, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 771
    sget-object v5, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    const-string v5, ""

    :goto_4
    move-object v7, v5

    .line 774
    sget-object v5, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_6
    move v8, v4

    .line 777
    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_5

    :cond_7
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    :goto_5
    move-wide v9, v4

    .line 780
    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-wide/high16 v5, -0x8000000000000000L

    if-eqz v4, :cond_8

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 781
    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_6

    :cond_8
    move-wide v11, v5

    .line 784
    :goto_6
    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_7

    :cond_9
    move-wide v13, v5

    .line 787
    :goto_7
    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v15, v4

    goto :goto_8

    :cond_a
    move-wide v15, v5

    .line 790
    :goto_8
    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 791
    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v3, 0x1

    :goto_a
    move/from16 v17, v3

    .line 793
    new-instance v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    move-object v6, v3

    invoke-direct/range {v6 .. v17}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;-><init>(Ljava/lang/String;IDJJJZ)V

    iput-object v3, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDeviceInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    .line 795
    :cond_d
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 797
    sget-object v3, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 798
    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;

    goto :goto_b

    .line 800
    :cond_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "S HealthMonitor - WearableSyncManager"

    .line 804
    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method


# virtual methods
.method toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 828
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 831
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mMessageInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDeviceInfo:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 834
    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->name()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;->mDataJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, "S HealthMonitor - WearableSyncManager"

    const-string v1, "This is response. dataJsonObject is null"

    .line 836
    invoke-static {p0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "S HealthMonitor - WearableSyncManager"

    .line 839
    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
