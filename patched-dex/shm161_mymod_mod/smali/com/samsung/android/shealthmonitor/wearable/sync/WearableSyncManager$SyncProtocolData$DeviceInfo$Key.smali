.class final enum Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;
.super Ljava/lang/Enum;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

.field public static final enum version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 985
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "device"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 986
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "device_type"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 987
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "version"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 988
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "last_sync_time"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 989
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "start_time"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 990
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "end_time"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    .line 991
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const-string v1, "is_last_chunk"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    const/4 v0, 0x7

    .line 984
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->device_type:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->version:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->last_sync_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->start_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->end_time:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->is_last_chunk:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->$VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 984
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;
    .locals 1

    .line 984
    const-class v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;
    .locals 1

    .line 984
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->$VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$DeviceInfo$Key;

    return-object v0
.end method
