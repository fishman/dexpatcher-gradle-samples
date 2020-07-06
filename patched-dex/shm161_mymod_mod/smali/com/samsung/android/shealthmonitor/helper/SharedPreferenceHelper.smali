.class public Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source "SharedPreferenceHelper.java"


# static fields
.field private static final APP_SETUP_INIT:Ljava/lang/String; = "shealth_monitor_base_app_setup_init"

.field private static final APP_UPDATE_LAST_CHECK_TIME:Ljava/lang/String; = "shealth_monitor_base_app_update_last_check_time"

.field private static final APP_UPDATE_LATEST_VERSION:Ljava/lang/String; = "shealth_monitor_base_app_update_latest_version"

.field private static final APP_UPDATE_LATEST_VERSION_CODE:Ljava/lang/String; = "shealth_monitor_base_app_update_latest_version_code"

.field private static final APP_UUID:Ljava/lang/String; = "shealth_monitor_base_app_uuid"

.field private static final BP_INTRODUCTION_DISPLAYED:Ljava/lang/String; = "shealth_monitor_base_dp_introduction_displayed"

.field private static final CONNECTED_WEARABLE_DEVICE:Ljava/lang/String; = "shealth_monitor_base_connected_wearable_device"

.field private static final DATABASE_PASSWORD:Ljava/lang/String; = "shealth_monitor_base_database_password"

.field private static final KEY_PREFIX:Ljava/lang/String; = "shealth_monitor_base_"

.field private static final SETTING_CALIBRATION_REMINDER:Ljava/lang/String; = "shealth_monitor_base_setting_calibration_reminder"

.field private static final SETTING_PUSH_NOTIFICATION:Ljava/lang/String; = "shealth_monitor_base_setting_push_notification"

.field private static final SP_CIPHER_IV:Ljava/lang/String; = "shealth_monitor_base_sp_cipher_iv"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SharedPreferenceHelper"

.field private static final TEST_CACHE_UPDATE:Ljava/lang/String; = "test_cache_update"

.field private static final TEST_COUNTRY_CODE:Ljava/lang/String; = "test_country_code"

.field private static final TEST_SCREEN_LOCK:Ljava/lang/String; = "test_screen_lock"

.field private static final TEST_SHOW_TOAST:Ljava/lang/String; = "test_show_toast"

.field private static final TEST_SHOW_UPDATE_POPUP:Ljava/lang/String; = "test_show_update_popup"

.field private static final USER_PROFILE_:Ljava/lang/String; = "shealth_monitor_base_user_profile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppInit()Z
    .locals 2

    const-string v0, "shealth_monitor_base_app_setup_init"

    const/4 v1, 0x0

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getAppUUID()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_base_app_uuid"

    const/4 v1, 0x0

    .line 228
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCheckScreenLock()Z
    .locals 2

    const-string v0, "test_screen_lock"

    const/4 v1, 0x1

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCheckingCountry()Z
    .locals 2

    const-string v0, "test_country_code"

    const/4 v1, 0x1

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getCipherIVValue()Ljava/lang/String;
    .locals 4

    .line 92
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "shealth_monitor_base_sp_cipher_iv"

    const-string v2, ""

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "S HealthMonitor - SharedPreferenceHelper"

    const-string v1, "[getCipherIVValue]: preferences is null."

    .line 97
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, "S HealthMonitor - SharedPreferenceHelper"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [getCipherIVValue] exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConnectedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "shealth_monitor_base_connected_wearable_device"

    const-string v1, ""

    .line 287
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper$1;

    invoke-direct {v2}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper$1;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    :cond_0
    return-object v1
.end method

.method public static getDatabasePassword()Ljava/lang/String;
    .locals 4

    .line 115
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "shealth_monitor_base_database_password"

    const-string v2, ""

    .line 118
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "S HealthMonitor - SharedPreferenceHelper"

    const-string v1, "[getDatabasePassword]: preferences is null."

    .line 120
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v1, "S HealthMonitor - SharedPreferenceHelper"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [getDatabasePassword] exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0
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

    .line 249
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v1, ""

    .line 252
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/DataKeyUtil;->dataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 260
    :cond_1
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 261
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 262
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 264
    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 265
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
    const-string v0, "S HealthMonitor - SharedPreferenceHelper"

    .line 271
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
    const-string v1, "S HealthMonitor - SharedPreferenceHelper"

    .line 274
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

.method public static getIntroductionDisplayed()Z
    .locals 2

    const-string v0, "shealth_monitor_base_dp_introduction_displayed"

    const/4 v1, 0x0

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getLastUpdateCheckTime()J
    .locals 3

    const-string v0, "shealth_monitor_base_app_update_last_check_time"

    const-wide/16 v1, 0x0

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLatestAppVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_base_app_update_latest_version"

    const-string v1, "0"

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLatestAppVersionCode()Ljava/lang/String;
    .locals 2

    const-string v0, "shealth_monitor_base_app_update_latest_version_code"

    const-string v1, "0"

    .line 189
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPermanentSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 37
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "permanent_shared_preferences_main"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getShowToastState()Z
    .locals 2

    const-string v0, "test_show_toast"

    const/4 v1, 0x0

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;
    .locals 3

    const-string v0, "shealth_monitor_base_user_profile"

    const-string v1, ""

    .line 198
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 201
    const-class v2, Lcom/samsung/android/shealthmonitor/data/UserProfile;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/data/UserProfile;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isCalibrationReminderEnabled()Z
    .locals 2

    const-string v0, "shealth_monitor_base_setting_calibration_reminder"

    const/4 v1, 0x1

    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnabledUpdateCache()Z
    .locals 2

    const-string v0, "test_cache_update"

    const/4 v1, 0x1

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isNotificationEnabled()Z
    .locals 2

    const-string v0, "shealth_monitor_base_setting_push_notification"

    const/4 v1, 0x1

    .line 208
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
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

    .line 233
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 238
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
    const-string p1, "S HealthMonitor - SharedPreferenceHelper"

    .line 241
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

    const-string v0, "S HealthMonitor - SharedPreferenceHelper"

    .line 244
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

.method public static setAppInit(Z)V
    .locals 1

    const-string v0, "shealth_monitor_base_app_setup_init"

    .line 71
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAppUUID(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_base_app_uuid"

    .line 224
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCalibrationReminderSetting(Z)V
    .locals 1

    const-string v0, "shealth_monitor_base_setting_calibration_reminder"

    .line 216
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCheckScreenLock(Z)V
    .locals 1

    const-string v0, "test_screen_lock"

    .line 149
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCheckingCountry(Z)V
    .locals 1

    const-string v0, "test_country_code"

    .line 141
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCipherIVValue(Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shealth_monitor_base_sp_cipher_iv"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string p0, "S HealthMonitor - SharedPreferenceHelper"

    const-string v0, "[setCipherIVValue]: preferences is null."

    .line 87
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setConnectedDevice(Ljava/lang/String;)V
    .locals 2

    .line 281
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getConnectedDevices()Ljava/util/Set;

    move-result-object v0

    .line 282
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p0, "shealth_monitor_base_connected_wearable_device"

    .line 283
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setDatabasePassword(Ljava/lang/String;)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shealth_monitor_base_database_password"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string p0, "S HealthMonitor - SharedPreferenceHelper"

    const-string v0, "[setDatabasePassword]: preferences is null."

    .line 110
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setIntroductionDisplayed(Z)V
    .locals 1

    const-string v0, "shealth_monitor_base_dp_introduction_displayed"

    .line 79
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLastUpdateCheckTime()V
    .locals 3

    const-string v0, "shealth_monitor_base_app_update_last_check_time"

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLatestAppVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_base_app_update_latest_version"

    .line 177
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLatestAppVersionCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "shealth_monitor_base_app_update_latest_version_code"

    .line 185
    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setNotificationSetting(Z)V
    .locals 1

    const-string v0, "shealth_monitor_base_setting_push_notification"

    .line 212
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setShowToastState(Z)V
    .locals 1

    const-string v0, "test_show_toast"

    .line 133
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUpdateCache(Z)V
    .locals 1

    const-string v0, "test_cache_update"

    .line 157
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUpdatePupupStatus(Z)V
    .locals 1

    const-string v0, "test_show_update_popup"

    .line 165
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserProfile(Lcom/samsung/android/shealthmonitor/data/UserProfile;)V
    .locals 2

    .line 193
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-string v1, "shealth_monitor_base_user_profile"

    .line 194
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->putInternal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static showUpdatePopupStatus()Z
    .locals 2

    const-string v0, "test_show_update_popup"

    const/4 v1, 0x1

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getInternal(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
