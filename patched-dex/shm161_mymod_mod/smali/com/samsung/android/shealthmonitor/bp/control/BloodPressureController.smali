.class public Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;
.super Ljava/lang/Object;
.source "BloodPressureController.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/ControlInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BloodPressureController"

.field private static sInstance:Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;


# instance fields
.field private mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

.field private mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

.field private mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    const-string v1, "S HealthMonitor - BloodPressureController"

    const-string v2, " [BloodPressureController] constructor "

    .line 43
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sput-object p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->sInstance:Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;
    .locals 1

    .line 39
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->sInstance:Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    return-object v0
.end method

.method static final synthetic lambda$getCardView$0$BloodPressureController()V
    .locals 2

    .line 88
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendTermsAndConditionRequestSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "device_id"

    .line 91
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_id"

    .line 93
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setConnectedDevice(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTncComplete(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearView(Landroid/content/Context;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const-string p0, "S HealthMonitor - BloodPressureController"

    const-string p1, " already free."

    .line 174
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->clearView()V

    .line 178
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->clearView()V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->removeAllViews()V

    .line 183
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    :cond_2
    return-void
.end method

.method public forceRefreshTopCard()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->onResume()V

    :cond_0
    return-void
.end method

.method public getCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const-string v0, "S HealthMonitor - BloodPressureController"

    const-string v1, " context is changed!!!"

    .line 76
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->removeAllViews()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->clearView()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 87
    new-instance p1, Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController$$Lambda$0;->$instance:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 100
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    return-object p0
.end method

.method public getDateChangeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 148
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpDateTimeChangeReceiver;

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpDateTimeChangeReceiver;-><init>()V

    return-object p0
.end method

.method public getHealthSdkHelper()Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
    .locals 0

    .line 153
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;-><init>()V

    return-object p0
.end method

.method public getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
    .locals 0

    .line 120
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object p0

    return-object p0
.end method

.method public getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->removeAllViews()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    .line 112
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->needToRemoveCard()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mBpTopCard:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    return-object p0
.end method

.method public initInterface()V
    .locals 0

    .line 51
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    return-void
.end method

.method public isErrorDemo()Z
    .locals 0

    .line 125
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result p0

    return p0
.end method

.method public isValid(Ljava/lang/Object;)I
    .locals 0

    .line 61
    instance-of p0, p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-eqz p0, :cond_0

    .line 62
    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const-string p0, "tnc"

    .line 63
    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "device_id"

    .line 65
    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/Utils;->isConnectedDevice(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSyncComplete(I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;->onComplete(I)V

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 0

    .line 56
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->showUpdateDialog()V

    return-void
.end method

.method public requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    .line 136
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z

    return-void
.end method

.method public setEnableNotification(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->enableAllSchedule()V

    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->disableAllSchedule()V

    return-void
.end method

.method public setErrorDemo(Z)V
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->setErrorDemo(Z)V

    return-void
.end method
