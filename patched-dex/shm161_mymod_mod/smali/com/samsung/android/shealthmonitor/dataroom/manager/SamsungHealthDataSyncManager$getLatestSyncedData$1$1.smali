.class final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $lastSyncedDataList:Ljava/util/List;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;->$lastSyncedDataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;->$listener:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1$1;->$lastSyncedDataList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;->OnResults(Ljava/util/List;)V

    return-void
.end method
