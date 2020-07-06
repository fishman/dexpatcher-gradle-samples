.class final synthetic Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

.field private final arg$2:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

.field private final arg$3:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$2:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$3:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final onDataReceived(Lorg/json/JSONArray;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$2:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$$Lambda$1;->arg$3:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->lambda$sendMobileSyncData$1$WearableSyncManager(Lcom/samsung/android/shealthmonitor/wearable/device/Node;Ljava/util/LinkedHashMap;Lorg/json/JSONArray;Z)V

    return-void
.end method
