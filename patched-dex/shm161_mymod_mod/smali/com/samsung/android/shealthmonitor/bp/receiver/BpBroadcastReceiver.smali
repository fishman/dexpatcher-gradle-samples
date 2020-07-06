.class public Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BpBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BpBroadcastReceiver"

.field private static mLaunchSetup:Z


# instance fields
.field private mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->tempProcessTnc(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->getNeedToReset(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;J)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->getNeedToCal(Lorg/json/JSONObject;J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->sendInformationResponse(Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private checkWearableSetup()V
    .locals 2

    .line 241
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->mLaunchSetup:Z

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    const-string v1, " checkWearableSetup : mLaunchSetup = true"

    .line 242
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->launchSetupActivity()V

    :cond_0
    return-void
.end method

.method private getNeedToCal(Lorg/json/JSONObject;J)Z
    .locals 3

    .line 141
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getBtAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 146
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getBtAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oldBtAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newBtAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getNeedToReset(Lorg/json/JSONObject;)Z
    .locals 0

    .line 132
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getNeedToCalibration(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final synthetic lambda$synchronizeTnc$0$BpBroadcastReceiver()V
    .locals 2

    .line 225
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getConnectedBpNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "device_id"

    .line 228
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendTermsAndConditionRequestSync()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 233
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setConnectedDevice(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 235
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTncComplete(Z)V

    :cond_2
    return-void
.end method

.method private launchSetupActivity()V
    .locals 3

    .line 203
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->isAppOnForeground()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorSetupActivity"

    .line 206
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x14000000

    .line 208
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "new_device"

    .line 209
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Exception : class not found = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p0, "S HealthMonitor - BpBroadcastReceiver"

    const-string v0, " launchSetupActivity : mLaunchSetup = false"

    .line 214
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 215
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->mLaunchSetup:Z

    return-void

    .line 217
    :cond_0
    sput-boolean v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->mLaunchSetup:Z

    const-string p0, "S HealthMonitor - BpBroadcastReceiver"

    const-string v0, " launchSetupActivity : mLaunchSetup = true"

    .line 218
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendInformationResponse(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 3

    .line 160
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [sendInformationResponse] start : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "type"

    const-string v1, "response"

    .line 163
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    .line 164
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "S HealthMonitor - BpBroadcastReceiver"

    const-string p3, " [sendInformationResponse] Set wearable reset!!!"

    .line 166
    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    .line 167
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "reset"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p2

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseMessage(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    const-string p2, "onDataReceived() responseMessage: done"

    .line 170
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "information response: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " [sendInformationResponse] Exception : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synchronizeTnc()V
    .locals 1

    .line 223
    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$$Lambda$0;->$instance:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tempProcessTnc(Lorg/json/JSONObject;)Z
    .locals 5

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    const-string v1, " [tempProcessTnc] start "

    .line 179
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "tnc"

    .line 181
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [tempProcessTnc] Wearable TnC : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mobile TnC :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    const-string v0, " [tempProcessTnc] send TnC to wearable."

    .line 184
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->launchSetupActivity()V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 187
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "device_id"

    .line 189
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->isConnectedDevice(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->launchSetupActivity()V

    goto :goto_1

    .line 192
    :cond_2
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getTncComplete()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->synchronizeTnc()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [tempProcessTnc] Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_5

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->ACTION_TNC_SYNC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->synchronizeTnc()V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->ACTION_CHECK_WEARABLE_SETUP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->checkWearableSetup()V

    return-void

    .line 52
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 53
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "EXTRA_RESULT"

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->onSyncComplete(I)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "S HealthMonitor - BpBroadcastReceiver"

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->registerMessageDataListener(Landroid/content/Intent;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;)V

    return-void

    :cond_5
    :goto_0
    const-string p0, "S HealthMonitor - BpBroadcastReceiver"

    const-string p1, "onReceive() intent or action is null"

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
