.class public Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;
.super Ljava/lang/Object;
.source "SHealthMonitorLogManager.java"


# static fields
.field public static final BP_BACKED_UP_IN_SAMSUNG_HEALTH:Ljava/lang/String; = "BP07"

.field public static final BP_DONE_ON_DEMAND_MEASUREMENT:Ljava/lang/String; = "BP06"

.field public static final BP_ERROR_EVENT:Ljava/lang/String; = "BP00"

.field public static final BP_ERROR_EVENT_DETAIL_CALIBRATION:Ljava/lang/String; = "CA_"

.field public static final BP_ERROR_EVENT_DETAIL_MEASUREMENT:Ljava/lang/String; = "ME_"

.field public static final BP_ERROR_EVENT_ERROR_NAME:Ljava/lang/String; = "ERROR"

.field public static final BP_EXTRA_STEP_NAME:Ljava/lang/String; = "step"

.field public static final BP_FINISHED_CALIBRATION:Ljava/lang/String; = "BP02"

.field public static final BP_FINISHED_RE_CALIBRATION:Ljava/lang/String; = "BP04"

.field public static final BP_NOTES_SAVED:Ljava/lang/String; = "BP08"

.field public static final BP_SHARED_BP_RESULT:Ljava/lang/String; = "BP05"

.field public static final BP_START_TO_CALIBRATION:Ljava/lang/String; = "BP01"

.field public static final BP_START_TO_RE_CALIBRATION:Ljava/lang/String; = "BP03"

.field public static final COMMON_PROFILE_SAVE_EDIT:Ljava/lang/String; = "CM02"

.field public static final COMMON_PROFILE_SAVE_INIT:Ljava/lang/String; = "CM01"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorLogManager"

.field private static final TRACKING_ID:Ljava/lang/String; = "4K9-399-539852"

.field private static volatile mInstance:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;


# instance fields
.field private CONFIG_DONE:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->CONFIG_DONE:Z

    return-void
.end method

.method private declared-synchronized enableConfigDone()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 70
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->CONFIG_DONE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAppVersion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getMobileAppVersionName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->mInstance:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;-><init>()V

    sput-object v1, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->mInstance:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    .line 53
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->mInstance:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized insertErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->isConfigDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    const-string p2, "insertLog() : Configuration is not done."

    .line 206
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ERROR"

    .line 212
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "step"

    .line 213
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 218
    invoke-virtual {v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 219
    invoke-virtual {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p1

    .line 220
    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 221
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 216
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertLog() : eventName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " step : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "S HealthMonitor - SHealthMonitorLogManager"

    .line 225
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "insertErrorLog(), Failed to send event : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->isConfigDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    const-string p2, "insertLog() : Configuration is not done."

    .line 136
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 142
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 143
    invoke-virtual {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertLog() : eventName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 134
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized insertLogWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->isConfigDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    const-string p2, "insertLog() : Configuration is not done."

    .line 152
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 164
    invoke-virtual {v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 165
    invoke-virtual {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p1

    check-cast p1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 167
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 162
    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertLogWithValue() : eventName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "S HealthMonitor - SHealthMonitorLogManager"

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "insertLogWithValue(), Failed to send event : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isConfigDone()Z
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->CONFIG_DONE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized sendCalibrationLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-class v0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v1

    const-string v2, "step"

    .line 179
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-direct {v1, p0, p1, v2, p2}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->insertLogWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "sendLog(), Failed to send event : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    .line 177
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendErrorOnCalibration(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-class v0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    monitor-enter v0

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CA_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v1

    const-string v2, "BP00"

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->insertErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 189
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendErrorOnMeasurement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    monitor-enter v0

    .line 200
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ME_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->insertErrorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendLog(), Failed to send event : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    .line 127
    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->isConfigDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - SHealthMonitorLogManager"

    const-string v1, "insertLog() : Configuration is not done."

    .line 116
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->deleteLogData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 114
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 3

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->isConfigDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    :try_start_1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "4K9-399-539852"

    .line 83
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager$1;-><init>(Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 99
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;-><init>(Landroid/content/Context;)V

    const-string v1, "S"

    .line 100
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    const-string v1, "4K9-399-539852"

    .line 101
    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    .line 103
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->enableUncaughtExceptionLogging(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->enableConfigDone()V
    :try_end_1
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "S HealthMonitor - SHealthMonitorLogManager"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSa() : AnalyticsException -> Samsung Analytics is not initialized. -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "S HealthMonitor - SHealthMonitorLogManager"

    const-string v0, "init() : SharedPreferenceHelper.getAppInit() is false"

    .line 109
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    throw p1
.end method
