.class public Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EcgBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - EcgBroadcastReceiver"

.field private static mLaunchSetup:Z


# instance fields
.field private mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;

    return-void
.end method

.method private checkWearableSetup()V
    .registers 3

    .prologue
    .line 224
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->mLaunchSetup:Z

    if-eqz v0, :cond_18

    .line 225
    const-string v0, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v1, " checkWearableSetup : mLaunchSetup = true"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->launchSetupActivity()V

    .line 228
    :cond_18
    return-void
.end method

.method static final lambda$synchronizeTnc$0$EcgBroadcastReceiver()V
    .registers 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not decompiled: com.samsung.android.shealthmonitor.bp.receiver.EcgBroadcastReceiver.lambda$synchronizeTnc$0$EcgBroadcastReceiver():void"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private launchSetupActivity()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->isAppOnForeground()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 171
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorSetupActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v2, "new_device"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_28} :catch_33

    .line 178
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_28
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v3, " launchSetupActivity : mLaunchSetup = false"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->mLaunchSetup:Z

    .line 184
    :goto_32
    return-void

    .line 175
    :catch_33
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Exception : class not found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 182
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_51
    sput-boolean v3, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->mLaunchSetup:Z

    .line 183
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v3, " launchSetupActivity : mLaunchSetup = true"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private synchronizeTnc()V
    .registers 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$$Lambda$0;->$instance:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method


# virtual methods
.method public getNeedToCal(Lorg/json/JSONObject;J)Z
    .registers 10
    .param p1, "jSONObject"    # Lorg/json/JSONObject;
    .param p2, "j"    # J

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v2

    .line 114
    .local v2, "wearableInformation":Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
    if-eqz v2, :cond_40

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getBtAddress()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "btAddress":Ljava/lang/String;
    :goto_a
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getBtAddress(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "btAddress2":Ljava/lang/String;
    const-string v3, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldBtAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newBtAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_42

    if-eqz v0, :cond_42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const/4 v3, 0x1

    :goto_3f
    return v3

    .line 114
    .end local v0    # "btAddress":Ljava/lang/String;
    .end local v1    # "btAddress2":Ljava/lang/String;
    :cond_40
    const/4 v0, 0x0

    goto :goto_a

    .line 117
    .restart local v0    # "btAddress":Ljava/lang/String;
    .restart local v1    # "btAddress2":Ljava/lang/String;
    :cond_42
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method public getNeedToReset(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "jSONObject"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getNeedToCalibration(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 90
    :cond_8
    const-string v1, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v2, "onReceive() intent or action is null"

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_f
    :goto_f
    return-void

    .line 91
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->ACTION_TNC_SYNC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->synchronizeTnc()V

    goto :goto_f

    .line 93
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->ACTION_CHECK_WEARABLE_SETUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->checkWearableSetup()V

    goto :goto_f

    .line 95
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 96
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object v0

    .line 97
    .local v0, "controllerInterface":Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
    if-eqz v0, :cond_f

    .line 98
    const-string v1, "EXTRA_RESULT"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->onSyncComplete(I)V

    goto :goto_f

    .line 101
    .end local v0    # "controllerInterface":Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
    :cond_53
    const-string v1, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->mWMessageDataListener:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->registerMessageDataListener(Landroid/content/Intent;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;)V

    goto :goto_f
.end method

.method public sendInformationResponse(Landroid/content/Intent;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "z"    # Z

    .prologue
    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "jSONObject":Lorg/json/JSONObject;
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [sendInformationResponse] start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_1d
    const-string v2, "type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    if-eqz p3, :cond_43

    .line 128
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v3, " [sendInformationResponse] Set wearable reset!!!"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "data"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "reset"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_43
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseMessage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 132
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v3, "onDataReceived() responseMessage: done"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "information response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_71} :catch_72

    .line 137
    :goto_71
    return-void

    .line 134
    :catch_72
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [sendInformationResponse] Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71
.end method

.method public tempProcessTnc(Lorg/json/JSONObject;)Z
    .registers 9
    .param p1, "jSONObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    const-string v4, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v5, " [tempProcessTnc] start "

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :try_start_9
    const-string v4, "tnc"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 144
    .local v1, "z":Z
    const-string v4, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [tempProcessTnc] Wearable TnC : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mobile TnC :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez v1, :cond_4b

    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 146
    const-string v3, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v4, " [tempProcessTnc] send TnC to wearable."

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->launchSetupActivity()V

    .line 165
    .end local v1    # "z":Z
    :cond_4a
    :goto_4a
    return v2

    .line 150
    .restart local v1    # "z":Z
    :cond_4b
    if-eqz v1, :cond_55

    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v4

    if-nez v4, :cond_55

    move v2, v3

    .line 151
    goto :goto_4a

    .line 153
    :cond_55
    const-string v4, "device_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/util/Utils;->isConnectedDevice(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v4

    if-nez v4, :cond_97

    .line 154
    :cond_67
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getTncComplete()Z

    move-result v3

    if-nez v3, :cond_4a

    if-nez v1, :cond_4a

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->synchronizeTnc()V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_78} :catch_79

    goto :goto_4a

    .line 162
    .end local v1    # "z":Z
    :catch_79
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [tempProcessTnc] Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 159
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "z":Z
    :cond_97
    :try_start_97
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->launchSetupActivity()V
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_9a} :catch_79

    move v2, v3

    .line 160
    goto :goto_4a
.end method
