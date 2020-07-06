.class Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "EcgBroadcastReceiver.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$MessageDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v7, "jSONObject":Lorg/json/JSONObject;
    const-string v13, "action"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, "string":Ljava/lang/String;
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataReceived() value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v13, "information"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_109

    .line 40
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "onDataReceived() start information: "

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v13, "data"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_da

    move-result-object v10

    .line 43
    .local v10, "string2":Ljava/lang/String;
    :try_start_3a
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v8, "jSONObject2":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    invoke-virtual {v13, v8}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->tempProcessTnc(Lorg/json/JSONObject;)Z

    move-result v12

    .line 45
    .local v12, "z":Z
    invoke-static {v8}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getCalibrationTime(Lorg/json/JSONObject;)J

    move-result-wide v4

    .line 46
    .local v4, "calibrationTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    invoke-virtual {v13, v8}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->getNeedToReset(Lorg/json/JSONObject;)Z

    move-result v2

    .line 47
    .local v2, "access$100":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    invoke-virtual {v13, v8, v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->getNeedToCal(Lorg/json/JSONObject;J)Z

    move-result v3

    .line 48
    .local v3, "access$200":Z
    if-eqz v2, :cond_96

    .line 49
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "Need device reset!!"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_67} :catch_a3

    .line 51
    const/4 v12, 0x1

    .line 71
    .end local v2    # "access$100":Z
    .end local v3    # "access$200":Z
    .end local v4    # "calibrationTime":J
    .end local v8    # "jSONObject2":Lorg/json/JSONObject;
    :cond_68
    :goto_68
    :try_start_68
    invoke-static {v10}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setWearableInformation(Ljava/lang/String;)V

    .line 72
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "onDataReceived() setWearableInformation: done"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9, v12}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->sendInformationResponse(Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_7b} :catch_da

    .line 84
    .end local v7    # "jSONObject":Lorg/json/JSONObject;
    .end local v9    # "string":Ljava/lang/String;
    .end local v10    # "string2":Ljava/lang/String;
    .end local v12    # "z":Z
    :goto_7b
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataReceived() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void

    .line 52
    .restart local v2    # "access$100":Z
    .restart local v3    # "access$200":Z
    .restart local v4    # "calibrationTime":J
    .restart local v7    # "jSONObject":Lorg/json/JSONObject;
    .restart local v8    # "jSONObject2":Lorg/json/JSONObject;
    .restart local v9    # "string":Ljava/lang/String;
    .restart local v10    # "string2":Ljava/lang/String;
    .restart local v12    # "z":Z
    :cond_96
    if-eqz v3, :cond_df

    .line 53
    :try_start_98
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "Need calibration!!"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetForReCalibration()V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_a2} :catch_a3

    goto :goto_68

    .line 63
    .end local v2    # "access$100":Z
    .end local v3    # "access$200":Z
    .end local v4    # "calibrationTime":J
    .end local v8    # "jSONObject2":Lorg/json/JSONObject;
    .end local v12    # "z":Z
    :catch_a3
    move-exception v11

    .line 64
    .local v11, "unused2":Lorg/json/JSONException;
    const/4 v12, 0x0

    .line 65
    .restart local v12    # "z":Z
    :try_start_a5
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "No value for need_to_recal"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v10}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setWearableInformation(Ljava/lang/String;)V

    .line 67
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "onDataReceived() setWearableInformation: done"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9, v12}, Lcom/samsung/android/shealthmonitor/ecg/receiver/EcgBroadcastReceiver;->sendInformationResponse(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 69
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onDataReceived() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_d9} :catch_da

    goto :goto_68

    .line 81
    .end local v7    # "jSONObject":Lorg/json/JSONObject;
    .end local v9    # "string":Ljava/lang/String;
    .end local v10    # "string2":Ljava/lang/String;
    .end local v11    # "unused2":Lorg/json/JSONException;
    .end local v12    # "z":Z
    :catch_da
    move-exception v6

    .line 82
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7b

    .line 55
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v2    # "access$100":Z
    .restart local v3    # "access$200":Z
    .restart local v4    # "calibrationTime":J
    .restart local v7    # "jSONObject":Lorg/json/JSONObject;
    .restart local v8    # "jSONObject2":Lorg/json/JSONObject;
    .restart local v9    # "string":Ljava/lang/String;
    .restart local v10    # "string2":Ljava/lang/String;
    .restart local v12    # "z":Z
    :cond_df
    :try_start_df
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getLastEcgCalibrationTime()J

    move-result-wide v14

    cmp-long v13, v14, v4

    if-eqz v13, :cond_68

    if-nez v12, :cond_68

    .line 56
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "Device changed, update calibration time"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v13, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v13}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setEcgCalibrationState(Ljava/lang/String;)V

    .line 58
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setEcgCurrentCalibrationStepTime(J)V

    .line 59
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpCalibrationNoti()V

    .line 60
    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->settingForCompletedCalibration(J)V

    .line 61
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->sendMainRefreshMessage()V
    :try_end_107
    .catch Lorg/json/JSONException; {:try_start_df .. :try_end_107} :catch_a3

    goto/16 :goto_68

    .line 74
    .end local v2    # "access$100":Z
    .end local v3    # "access$200":Z
    .end local v4    # "calibrationTime":J
    .end local v8    # "jSONObject2":Lorg/json/JSONObject;
    .end local v10    # "string2":Ljava/lang/String;
    .end local v12    # "z":Z
    :cond_109
    :try_start_109
    const-string v13, "check_update"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12a

    .line 75
    const-string v13, "result"

    const-string v14, "success"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;

    move-result-object v13

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;->responseMessage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->setEcgUpdataCheckTask()V

    goto/16 :goto_7b

    .line 79
    :cond_12a
    const-string v13, "S HealthMonitor - EcgBroadcastReceiver"

    const-string v14, "Not defined action"

    invoke-static {v13, v14}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_131} :catch_da

    goto/16 :goto_7b
.end method
