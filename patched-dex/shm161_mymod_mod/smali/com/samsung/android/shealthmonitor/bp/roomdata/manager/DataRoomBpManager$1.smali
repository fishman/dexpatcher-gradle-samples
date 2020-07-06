.class Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;
.super Ljava/lang/Object;
.source "DataRoomBpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->deleteBpData(Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

.field final synthetic val$data:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;->val$data:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;->val$data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 116
    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSyncedData(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
