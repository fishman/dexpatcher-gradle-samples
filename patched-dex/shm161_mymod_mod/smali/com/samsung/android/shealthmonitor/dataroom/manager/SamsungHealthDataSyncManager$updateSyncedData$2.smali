.class final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sdkHelper:Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

.field final synthetic $syncedData:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$sdkHelper:Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$syncedData:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 697
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$sdkHelper:Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$syncedData:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSdkSyncedData$default(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$syncedData:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    .line 700
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSyncedData is success "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->$syncedData:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 702
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "updateSyncedData is failed"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
