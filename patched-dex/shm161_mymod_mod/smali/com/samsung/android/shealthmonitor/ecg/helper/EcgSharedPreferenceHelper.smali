.class public Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;
.super Ljava/lang/Object;
.source "EcgSharedPreferenceHelper.java"


# static fields
.field private static final APP_UPDATE_LAST_CHECK_TIME:Ljava/lang/String; = "shealth_monitor_ecg_app_update_last_check_time"

.field private static final APP_UPDATE_LATEST_VERSION:Ljava/lang/String; = "shealth_monitor_ecg_app_update_latest_version"

.field private static final APP_UPDATE_LATEST_VERSION_CODE:Ljava/lang/String; = "shealth_monitor_ecg_app_update_latest_version_code"

.field private static final APP_WEARABLE_COMMON_INFORMATION:Ljava/lang/String; = "shealth_monitor_ecg_app_wearable_common_information_"

.field private static final ECG_CALIBRATION_LAST_TIME:Ljava/lang/String; = "shealth_monitor_ecg_ecg_calibration_last_time"

.field private static final ECG_CALIBRATION_STATE:Ljava/lang/String; = "shealth_monitor_ecg_ecg_calibration_state"

.field private static final ECG_CALIBRATION_STEP_TIME:Ljava/lang/String; = "shealth_monitor_ecg_ecg_calibration_step_time"

.field private static final ECG_CHART_PULSE_ON:Ljava/lang/String; = "shealth_monitor_ecg_ecg_chart_pulse_on"

.field private static final ECG_INITIAL_CALIBRATION_DONE:Ljava/lang/String; = "shealth_monitor_ecg_initial_calibration_done"

.field private static final ECG_MEASURED_DATA_EXIST:Ljava/lang/String; = "shealth_monitor_ecg_ecg_measured_data_exist"

.field private static final ECG_TOP_CARD_VISIBILITY:Ljava/lang/String; = "shealth_monitor_ecg_ecg_top_card_visibility"

.field private static final ECG_TnC_COMPLETE:Ljava/lang/String; = "shealth_monitor_ecg_tc_complete"

.field private static final KEY_PREFIX:Ljava/lang/String; = "shealth_monitor_ecg_"

.field private static final LAST_SYNCED_ID:Ljava/lang/String; = "shealth_monitor_ecg_ecg_last_sync_id_health_datastore"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - EcgSharedPreferenceHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChartPulseOn()Z
    .registers 2

    .prologue
    .line 131
    const-string v0, "shealth_monitor_ecg_ecg_chart_pulse_on"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getEcgCalibrationState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string v0, "shealth_monitor_ecg_ecg_calibration_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getEcgCurrentCalibrationStepTime()J
    .registers 4

    .prologue
    .line 111
    const-string v0, "shealth_monitor_ecg_ecg_calibration_step_time"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEcgMeasuredDataExist()Z
    .registers 2

    .prologue
    .line 143
    const-string v0, "shealth_monitor_ecg_ecg_measured_data_exist"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getInitialCalibrationComplete()Z
    .registers 2

    .prologue
    .line 91
    const-string v0, "shealth_monitor_ecg_initial_calibration_done"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 163
    .local v2, "permanentSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_63

    .line 165
    :try_start_6
    const-string v4, ""

    invoke-interface {v2, p0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "string":Ljava/lang/String;
    if-eqz v3, :cond_1e

    .line 167
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 168
    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/util/DataKeyUtil;->dataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dataDecrypt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 189
    .end local v0    # "dataDecrypt":Ljava/lang/String;
    .end local v3    # "string":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1e
    :goto_1e
    return-object p1

    .line 172
    .restart local v0    # "dataDecrypt":Ljava/lang/String;
    .restart local v3    # "string":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1f
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_28

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1e

    .line 175
    :cond_28
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_31

    .line 176
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1e

    .line 178
    :cond_31
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_39

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_3b

    move-result-object v0

    .end local v0    # "dataDecrypt":Ljava/lang/String;
    :cond_39
    move-object p1, v0

    goto :goto_1e

    .line 182
    .end local v3    # "string":Ljava/lang/String;
    :catch_3b
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "S HealthMonitor - EcgSharedPreferenceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [getInternal] exception("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_63
    const-string v4, "S HealthMonitor - EcgSharedPreferenceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getInternal]: preferences is null. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static getLastEcgCalibrationTime()J
    .registers 4

    .prologue
    .line 119
    const-string v0, "shealth_monitor_ecg_ecg_calibration_last_time"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSyncedIdForDataStore()J
    .registers 4

    .prologue
    .line 87
    const-string v0, "shealth_monitor_ecg_ecg_last_sync_id_health_datastore"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastUpdateCheckTime()J
    .registers 4

    .prologue
    .line 45
    const-string v0, "shealth_monitor_ecg_app_update_last_check_time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatestAppVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "shealth_monitor_ecg_app_update_latest_version"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLatestAppVersionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "shealth_monitor_ecg_app_update_latest_version_code"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getPermanentSharedPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 29
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "permanent_shared_preferences_bp"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getTncComplete()Z
    .registers 2

    .prologue
    .line 33
    const-string v0, "shealth_monitor_ecg_tc_complete"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getTopIntroCardVisibility()Z
    .registers 2

    .prologue
    .line 127
    const-string v0, "shealth_monitor_ecg_ecg_top_card_visibility"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_1
    const-string v2, "shealth_monitor_ecg_app_wearable_common_information_"

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 72
    const-class v2, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->makeObjectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    .line 78
    :goto_1b
    return-object v2

    .line 74
    :cond_1c
    const-string v2, "S HealthMonitor - EcgSharedPreferenceHelper"

    const-string v4, "[getWearableInformation]: value is not exist."

    invoke-static {v2, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    move-object v2, v3

    .line 75
    goto :goto_1b

    .line 76
    :catch_25
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "S HealthMonitor - EcgSharedPreferenceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [getWearableInformation] exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 78
    goto :goto_1b
.end method

.method private static putInternal(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "permanentSharedPreferences":Landroid/content/SharedPreferences;
    if-nez v1, :cond_25

    .line 150
    const-string v2, "S HealthMonitor - EcgSharedPreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[putInternal]: preferences is null. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v1    # "permanentSharedPreferences":Landroid/content/SharedPreferences;
    :goto_24
    return-void

    .line 151
    .restart local v1    # "permanentSharedPreferences":Landroid/content/SharedPreferences;
    :cond_25
    if-nez p1, :cond_5b

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_24

    .line 156
    .end local v1    # "permanentSharedPreferences":Landroid/content/SharedPreferences;
    :catch_33
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "S HealthMonitor - EcgSharedPreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [putInternal] exception("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "permanentSharedPreferences":Landroid/content/SharedPreferences;
    :cond_5b
    :try_start_5b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/util/DataKeyUtil;->dataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_33

    goto :goto_24
.end method

.method public static setChartPulseOn(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 135
    const-string v0, "shealth_monitor_ecg_ecg_chart_pulse_on"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public static setEcgCalibrationState(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "shealth_monitor_ecg_ecg_calibration_state"

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static setEcgCurrentCalibrationStepTime(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 107
    const-string v0, "shealth_monitor_ecg_ecg_calibration_step_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public static setEcgLastCalibrationTime(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 115
    const-string v0, "shealth_monitor_ecg_ecg_calibration_last_time"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public static setEcgMeasuredDataExist(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 139
    const-string v0, "shealth_monitor_ecg_ecg_measured_data_exist"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static setInitialCalibrationComplete(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 95
    const-string v0, "shealth_monitor_ecg_initial_calibration_done"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static setLastSyncedIdForDataStore(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 83
    const-string v0, "shealth_monitor_ecg_ecg_last_sync_id_health_datastore"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static setLastUpdateCheckTime()V
    .registers 4

    .prologue
    .line 41
    const-string v0, "shealth_monitor_ecg_app_update_last_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static setLatestAppVersion(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "shealth_monitor_ecg_app_update_latest_version"

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static setLatestAppVersionCode(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "shealth_monitor_ecg_app_update_latest_version_code"

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static setTncComplete(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 37
    const-string v0, "shealth_monitor_ecg_tc_complete"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static setTopIntroCardVisibility(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 123
    const-string v0, "shealth_monitor_ecg_ecg_top_card_visibility"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public static setWearableInformation(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "shealth_monitor_ecg_app_wearable_common_information_"

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
