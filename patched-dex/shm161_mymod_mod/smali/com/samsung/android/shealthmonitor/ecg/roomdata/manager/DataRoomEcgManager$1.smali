.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;
.super Ljava/lang/Object;
.source "DataRoomEcgManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->deleteEcgData(Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

.field final synthetic val$arrayList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;->val$arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 100
    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSyncedData(Ljava/lang/String;)Z

    goto :goto_6

    .line 102
    :cond_22
    return-void
.end method
