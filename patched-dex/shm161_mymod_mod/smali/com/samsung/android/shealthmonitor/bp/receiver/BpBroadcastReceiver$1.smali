.class Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BpBroadcastReceiver.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    .line 71
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDataReceived() value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "information"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    const-string v3, "onDataReceived() start information: "

    .line 75
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    .line 76
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 80
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;

    invoke-static {v4, v3}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->access$000(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :try_start_2
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getCalibrationTime(Lorg/json/JSONObject;)J

    move-result-wide v5

    .line 84
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->access$100(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;)Z

    move-result v2

    .line 85
    iget-object v7, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;

    invoke-static {v7, v3, v5, v6}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->access$200(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Lorg/json/JSONObject;J)Z

    move-result v3

    if-eqz v2, :cond_0

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    const-string v3, "Need device reset!!"

    .line 88
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    const-string v3, "Need calibration!!"

    .line 92
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    const-string v3, "Device changed, update calibration time"

    .line 95
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpCalibrationState(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    .line 98
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpCurrentCalibrationStepTime(J)V

    .line 99
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpCalibrationNoti()V

    .line 101
    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->settingForCompletedCalibration(J)V

    .line 103
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->sendMainRefreshMessage()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move v4, v2

    :catch_1
    :try_start_3
    const-string v2, "S HealthMonitor - BpBroadcastReceiver"

    const-string v3, "No value for need_to_recal"

    .line 107
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setWearableInformation(Ljava/lang/String;)V

    const-string v0, "S HealthMonitor - BpBroadcastReceiver"

    const-string v2, "onDataReceived() setWearableInformation: done"

    .line 111
    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;

    invoke-static {p0, p1, v1, v4}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->access$300(Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string p0, "check_update"

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "result"

    const-string v1, "success"

    .line 115
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseMessage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->setBpUpdataCheckTask()V

    goto :goto_1

    :cond_4
    const-string p0, "S HealthMonitor - BpBroadcastReceiver"

    const-string p1, "Not defined action"

    .line 119
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string p0, "S HealthMonitor - BpBroadcastReceiver"

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDataReceived() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
