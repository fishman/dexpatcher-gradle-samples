.class public Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;
.super Ljava/lang/Object;
.source "BpSharedPreferenceHelper.java"


# static fields
.field private static final APP_UPDATE_LAST_CHECK_TIME:Ljava/lang/String; = "shealth_monitor_bp_app_update_last_check_time"

.field private static final APP_UPDATE_LATEST_VERSION:Ljava/lang/String; = "shealth_monitor_bp_app_update_latest_version"

.field private static final APP_UPDATE_LATEST_VERSION_CODE:Ljava/lang/String; = "shealth_monitor_bp_app_update_latest_version_code"

.field private static final APP_WEARABLE_COMMON_INFORMATION:Ljava/lang/String; = "shealth_monitor_bp_app_wearable_common_information_"

.field private static final BP_CALIBRATION_LAST_TIME:Ljava/lang/String; = "shealth_monitor_bp_bp_calibration_last_time"

.field private static final BP_CALIBRATION_STATE:Ljava/lang/String; = "shealth_monitor_bp_bp_calibration_state"

.field private static final BP_CALIBRATION_STEP_TIME:Ljava/lang/String; = "shealth_monitor_bp_bp_calibration_step_time"

.field private static final BP_CHART_PULSE_ON:Ljava/lang/String; = "shealth_monitor_bp_bp_chart_pulse_on"

.field private static final BP_INITIAL_CALIBRATION_DONE:Ljava/lang/String; = "shealth_monitor_bp_initial_calibration_done"

.field private static final BP_MEASURED_DATA_EXIST:Ljava/lang/String; = "shealth_monitor_bp_bp_measured_data_exist"

.field private static final BP_TOP_CARD_VISIBILITY:Ljava/lang/String; = "shealth_monitor_bp_bp_top_card_visibility"

.field private static final BP_TnC_COMPLETE:Ljava/lang/String; = "shealth_monitor_bp_tc_complete"

.field private static final KEY_PREFIX:Ljava/lang/String; = "shealth_monitor_bp_"

.field private static final LAST_SYNCED_ID:Ljava/lang/String; = "shealth_monitor_bp_bp_last_sync_id_health_datastore"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BpSharedPreferenceHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBpCalibrationState()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_bp_bp_calibration_state"

    const/4 v1, 0x0

    .line 110
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBpCurrentCalibrationStepTime()J
    .locals 3

    const-string v0, "shealth_monitor_bp_bp_calibration_step_time"

    const-wide/16 v1, -0x1

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBpMeasuredDataExist()Z
    .locals 2

    const-string v0, "shealth_monitor_bp_bp_measured_data_exist"

    const/4 v1, 0x0

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getChartPulseOn()Z
    .locals 2

    const-string v0, "shealth_monitor_bp_bp_chart_pulse_on"

    const/4 v1, 0x0

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getInitialCalibrationComplete()Z
    .locals 2

    const-string v0, "shealth_monitor_bp_initial_calibration_done"

    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v1, ""

    .line 174
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/DataKeyUtil;->dataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 182
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 184
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 186
    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 187
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    const-string v0, "S HealthMonitor - BpSharedPreferenceHelper"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getInternal]: preferences is null. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "S HealthMonitor - BpSharedPreferenceHelper"

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [getInternal] exception("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public static getLastBpCalibrationTime()J
    .locals 3

    const-string v0, "shealth_monitor_bp_bp_calibration_last_time"

    const-wide/16 v1, -0x1

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSyncedIdForDataStore()J
    .locals 3

    const-string v0, "shealth_monitor_bp_bp_last_sync_id_health_datastore"

    const-wide/16 v1, -0x1

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateCheckTime()J
    .locals 3

    const-string v0, "shealth_monitor_bp_app_update_last_check_time"

    const-wide/16 v1, 0x0

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatestAppVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_bp_app_update_latest_version"

    const-string v1, "0"

    .line 68
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLatestAppVersionCode()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_bp_app_update_latest_version_code"

    const-string v1, "0"

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getPermanentSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 17
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "permanent_shared_preferences_bp"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTncComplete()Z
    .locals 2

    const-string v0, "shealth_monitor_bp_tc_complete"

    const/4 v1, 0x0

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getTopIntroCardVisibility()Z
    .locals 2

    const-string v0, "shealth_monitor_bp_bp_top_card_visibility"

    const/4 v1, 0x1

    .line 134
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
    .locals 4

    :try_start_0
    const-string v0, "shealth_monitor_bp_app_wearable_common_information_"

    const-string v1, ""

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-class v1, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->makeObjectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    return-object v0

    :cond_0
    const-string v0, "S HealthMonitor - BpSharedPreferenceHelper"

    const-string v1, "[getWearableInformation]: value is not exist."

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "S HealthMonitor - BpSharedPreferenceHelper"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [getWearableInformation] exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static putInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/DataKeyUtil;->dataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string p1, "S HealthMonitor - BpSharedPreferenceHelper"

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[putInternal]: preferences is null. ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "S HealthMonitor - BpSharedPreferenceHelper"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [putInternal] exception("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setBpCalibrationState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_calibration_state"

    .line 106
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setBpCurrentCalibrationStepTime(J)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_calibration_step_time"

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setBpLastCalibrationTime(J)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_calibration_last_time"

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setBpMeasuredDataExist(Z)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_measured_data_exist"

    .line 146
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setChartPulseOn(Z)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_chart_pulse_on"

    .line 142
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setInitialCalibrationComplete(Z)V
    .locals 1

    const-string v0, "shealth_monitor_bp_initial_calibration_done"

    .line 102
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLastSyncedIdForDataStore(J)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_last_sync_id_health_datastore"

    .line 90
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLastUpdateCheckTime()V
    .locals 3

    const-string v0, "shealth_monitor_bp_app_update_last_check_time"

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLatestAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_bp_app_update_latest_version"

    .line 64
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLatestAppVersionCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_bp_app_update_latest_version_code"

    .line 56
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTncComplete(Z)V
    .locals 1

    const-string v0, "shealth_monitor_bp_tc_complete"

    .line 44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setTopIntroCardVisibility(Z)V
    .locals 1

    const-string v0, "shealth_monitor_bp_bp_top_card_visibility"

    .line 130
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setWearableInformation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_bp_app_wearable_common_information_"

    .line 72
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
