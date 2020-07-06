.class final enum Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;
.super Ljava/lang/Enum;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

.field public static final enum data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

.field public static final enum device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

.field public static final enum message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 848
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    const-string v1, "message_info"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    .line 849
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    const-string v1, "device_info"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    .line 850
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    const-string v1, "data"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    const/4 v0, 0x3

    .line 847
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->message_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->device_info:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->data:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->$VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 847
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;
    .locals 1

    .line 847
    const-class v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;
    .locals 1

    .line 847
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->$VALUES:[Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$Key;

    return-object v0
.end method
