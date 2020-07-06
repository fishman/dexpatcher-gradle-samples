.class public final Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;
.super Ljava/lang/Object;
.source "BpUpdateController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BpUpdateController"

.field private static TEST_MODE:Z

.field private static volatile mInstance:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToWearableVersionCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, "\\."

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 182
    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getParseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    mul-long/2addr v0, v2

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->getParseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getParseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static convertWearableDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getMobileDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private errorProcess(Ljava/lang/Throwable;)V
    .locals 2

    .line 172
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorProcess :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLastUpdateCheckTime()V

    const-string p0, "0"

    .line 174
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    const-string p0, "0"

    .line 175
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->stopBpUpdataCheckTask()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->mInstance:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;-><init>()V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->mInstance:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    .line 64
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->mInstance:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0

    throw v1
.end method

.method static final synthetic lambda$sendUpdateMessageToWearable$1$BpUpdateController(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private postProcess(Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;)V
    .locals 3

    .line 141
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v1, "postProcess start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLastUpdateCheckTime()V

    .line 143
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->stopBpUpdataCheckTask()V

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postProcess ResultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getResulCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getResulCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "8800"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "2000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "1002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "1000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "0"

    .line 165
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    const-string p0, "0"

    .line 166
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->sendUpdateMessageToWearable(Ljava/lang/String;)V

    return-void

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x32 -> :sswitch_5
        0x5a4 -> :sswitch_4
        0x17005f -> :sswitch_3
        0x170061 -> :sswitch_2
        0x1774be -> :sswitch_1
        0x1a4d00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestUpdateInfo()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v1, "requestWearableAppUpdateInfo start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v0, "requestUpdateInfo : There is no cache for BP App"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    new-instance v1, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;-><init>()V

    .line 131
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->convertToWearableVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->convertWearableDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getPlatformVersion()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->getLatestVersionForWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 136
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;)V

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;)V

    .line 137
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private sendUpdateMessageToWearable(Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->showUpdatePopupStatus()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;-><init>()V

    .line 115
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$1;->$instance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendBpForceUpdateRequest(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$BpUpdateController(Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->postProcess(Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;)V

    return-void
.end method

.method final bridge synthetic bridge$lambda$1$BpUpdateController(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->errorProcess(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final checkUpdate()V
    .locals 5

    .line 72
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v1, "checkUpdate start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastUpdateCheckTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 74
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->isEnabledUpdateCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->stopBpUpdataCheckTask()V

    .line 76
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLatestAppVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->convertToWearableVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLatestAppVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->sendUpdateMessageToWearable(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->requestUpdateInfo()V

    return-void
.end method

.method final synthetic lambda$showUpdateDialog$0$BpUpdateController()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->requestUpdateInfo()V

    return-void
.end method

.method public final showUpdateDialog()V
    .locals 6

    .line 90
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "app_version"

    .line 91
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 95
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog : Device is not connected for BP App"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLatestAppVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "app_version"

    .line 100
    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->convertToWearableVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 102
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->popup_update_description_the_blood_pressure_app:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 104
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLatestAppVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->getInstance()Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    move-result-object v2

    const-string v3, "package_name"

    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    :cond_2
    return-void

    .line 92
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog : There is no cache for BP App"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
