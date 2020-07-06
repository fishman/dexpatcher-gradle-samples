.class public Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;
.super Ljava/lang/Object;
.source "WearableSharedPreference.java"


# static fields
.field private static final BTADDRESS_AND_DEVICEID_PAIR:Ljava/lang/String; = "wf_deviceIdAndBtAddressPair_"

.field public static final DEFAULT_LONG:J = -0x8000000000000000L

.field public static final DEFAULT_STRING:Ljava/lang/String; = "EMPTY"

.field private static final INFORMATION:Ljava/lang/String; = "wf_information_"

.field private static final LAST_SYNC_TIME:Ljava/lang/String; = "wf_lastSyncTime_"

.field private static final RESET_EVENT_SEND_FLAG:Ljava/lang/String; = "wf_reset_event_send_flag__"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableSharedPreference"

.field private static final WEARABLE_DATA_INSERT_TIME:Ljava/lang/String; = "wf_wearable_data_insert_time__"

.field private static mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInitialize()V
    .locals 2

    .line 40
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getPermanentSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    return-void

    :cond_1
    const-string v0, "S HealthMonitor - WearableSharedPreference"

    const-string v1, "initialize(), context is null."

    .line 48
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 72
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 73
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_deviceIdAndBtAddressPair_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EMPTY"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInformation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 82
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 83
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "EMPTY"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_information_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EMPTY"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EMPTY"

    return-object p0
.end method

.method public static getMobileLastSyncTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 62
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 63
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_lastSyncTime_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EMPTY"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResetEventSendFlag(Ljava/lang/String;)Z
    .locals 3

    .line 107
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 108
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_reset_event_send_flag__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getWearableDataInsertTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 97
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 98
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_wearable_data_insert_time__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static saveMobileLastSyncTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    if-nez p1, :cond_0

    const-string p0, "S HealthMonitor - WearableSharedPreference"

    const-string p1, "data is null"

    .line 55
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_lastSyncTime_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 68
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_deviceIdAndBtAddressPair_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 78
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_information_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setResetEventSendFlag(Ljava/lang/String;Z)V
    .locals 3

    .line 102
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 103
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_reset_event_send_flag__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setWearableDataInsertTime(Ljava/lang/String;J)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->checkInitialize()V

    .line 93
    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableSharedPreference;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wf_wearable_data_insert_time__"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
