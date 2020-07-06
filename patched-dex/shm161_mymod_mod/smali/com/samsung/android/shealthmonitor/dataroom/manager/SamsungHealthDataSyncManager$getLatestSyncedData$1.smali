.class final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getLatestSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->$listener:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMSdkHelperList$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.mSdkHelperList.get(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    .line 620
    invoke-interface {v0}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getLastSyncedId()J

    move-result-wide v1

    .line 621
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bp lastSyncedId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    .line 623
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->makeHealthSyncData(JI)Ljava/util/List;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;Ljava/util/List;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
