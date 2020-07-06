.class public Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;
.super Ljava/lang/Object;
.source "EcgController.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/ControlInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - EcgController"

.field private static sInstance:Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;


# instance fields
.field private mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

.field private mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

.field private mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 29
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 37
    const-string v0, "S HealthMonitor - EcgController"

    const-string v1, " [EcgController] constructor "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->sInstance:Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;

    .line 39
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 40
    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->sInstance:Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;

    return-object v0
.end method

.method static final lambda$getCardView$0$EcgController()V
    .registers 3

    .prologue
    .line 78
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/WearableEcgManager;->sendTermsAndConditionRequestSync()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 79
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    .line 80
    .local v0, "connectedBpNode":Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    if-eqz v0, :cond_2f

    const-string v2, "device_id"

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 81
    const-string v2, "device_id"

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setConnectedDevice(Ljava/lang/String;)V

    .line 83
    .end local v1    # "str":Ljava/lang/String;
    :cond_2f
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setTncComplete(Z)V

    .line 85
    :cond_33
    return-void
.end method


# virtual methods
.method public clearView(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    if-eqz v0, :cond_1c

    .line 147
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_15

    .line 148
    const-string v0, "S HealthMonitor - EcgController"

    const-string v1, " already free."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_14
    :goto_14
    return-void

    .line 151
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->clearView()V

    .line 152
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 155
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_14

    .line 156
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->clearView()V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->removeAllViews()V

    .line 158
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    goto :goto_14
.end method

.method public forceRefreshTopCard()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->onResume()V

    .line 143
    :cond_9
    return-void
.end method

.method public getCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_21

    .line 61
    const-string v0, "S HealthMonitor - EcgController"

    const-string v1, " context is changed!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->removeAllViews()V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->clearView()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 66
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    if-nez v0, :cond_36

    .line 67
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :cond_36
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v0

    if-nez v0, :cond_46

    .line 71
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController$$Lambda$0;->$instance:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    :cond_46
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    return-object v0
.end method

.method public getDateChangeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgDateTimeChangeReceiver;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgDateTimeChangeReceiver;-><init>()V

    return-object v0
.end method

.method public getHealthSdkHelper()Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
    .registers 2

    .prologue
    .line 128
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;-><init>()V

    return-object v0
.end method

.method public getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
    .registers 2

    .prologue
    .line 101
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v0

    return-object v0
.end method

.method public getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_15

    .line 89
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->removeAllViews()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 92
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-nez v0, :cond_2a

    .line 93
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->needToRemoveCard()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x8

    :goto_36
    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    return-object v0

    .line 96
    :cond_3c
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public initInterface()V
    .registers 1

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    .line 45
    return-void
.end method

.method public isErrorDemo()Z
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 52
    instance-of v1, p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-nez v1, :cond_6

    .line 56
    :goto_5
    return v2

    :cond_6
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 56
    .local v0, "node":Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    const-string v1, "tnc"

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->isConnectedDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2b
    move v1, v2

    :goto_2c
    move v2, v1

    goto :goto_5

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public onSyncComplete(I)V
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;->onComplete(I)V

    .line 121
    :cond_9
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;)V
    .registers 4
    .param p1, "iSyncResultListener"    # Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    .line 114
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z

    .line 115
    return-void
.end method

.method public setEnableNotification(Z)V
    .registers 2
    .param p1, "z"    # Z

    .prologue
    .line 137
    return-void
.end method

.method public setErrorDemo(Z)V
    .registers 2
    .param p1, "z"    # Z

    .prologue
    .line 109
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->setErrorDemo(Z)V

    .line 110
    return-void
.end method
