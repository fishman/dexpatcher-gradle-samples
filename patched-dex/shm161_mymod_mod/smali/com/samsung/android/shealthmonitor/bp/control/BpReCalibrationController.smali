.class public Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;
.super Ljava/lang/Object;
.source "BpReCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;,
        Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BpReCalibrationController"

.field private static sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAllSchedule()V
    .locals 0

    .line 70
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpRecalibrationSchedule()V

    .line 71
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpCalibrationNoti()V

    return-void
.end method

.method public static enableAllSchedule()V
    .locals 0

    .line 75
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->updateBpRecalibrationSchedule()V

    .line 76
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->updateBpCalibrationNoti()V

    return-void
.end method

.method public static getElapsedDaysOfCalibration()I
    .locals 4

    .line 203
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpCurrentCalibrationStepTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 205
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getElapsedDaysOfCalibration(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getElapsedDaysOfCalibration(J)I
    .locals 2

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    .line 214
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    return p0
.end method

.method private static getEndOfDayForElapsed(IJ)J
    .locals 0

    .line 319
    invoke-static {p1, p2, p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDayForElapsed(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static declared-synchronized getRecalibrationState()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    .locals 4

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    if-eqz v1, :cond_0

    const-string v1, "S HealthMonitor - BpReCalibrationController"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caching Statue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 225
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRecalibrationStateWithReLoad()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 220
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRecalibrationStateWithReLoad()Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    .locals 12

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getElapsedDaysOfCalibration()I

    move-result v1

    const-string v2, "S HealthMonitor - BpReCalibrationController"

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "elapsedDays : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 237
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_IN_PROGRESS:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto/16 :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 244
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto :goto_0

    :cond_1
    const/16 v5, 0x19

    .line 246
    invoke-static {v5, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getStartOfDayForElapsed(IJ)J

    move-result-wide v5

    const/16 v7, 0x1c

    .line 247
    invoke-static {v7, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getEndOfDayForElapsed(IJ)J

    move-result-wide v7

    const/16 v9, 0x1d

    .line 248
    invoke-static {v9, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getStartOfDayForElapsed(IJ)J

    move-result-wide v1

    const-string v9, "S HealthMonitor - BpReCalibrationController"

    .line 250
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " first : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " final : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {v7, v8}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exceed : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " current : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 250
    invoke-static {v9, v7}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v5, v3

    if-gtz v5, :cond_2

    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    .line 257
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto :goto_0

    :cond_2
    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 259
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto :goto_0

    .line 261
    :cond_3
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_INIT_DONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto :goto_0

    .line 265
    :cond_4
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    goto :goto_0

    .line 269
    :cond_5
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_INTRO:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    :goto_0
    const-string v2, "S HealthMonitor - BpReCalibrationController"

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final statue : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 231
    monitor-exit v0

    throw v1
.end method

.method public static getRemainDay()I
    .locals 4

    .line 283
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v2, 0x1c

    .line 287
    invoke-static {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerTime(IJ)J

    move-result-wide v0

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay(JJ)I

    move-result v0

    return v0
.end method

.method private static getRemainDay(JJ)I
    .locals 0

    .line 296
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p2

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-gez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    .line 303
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide p2, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    return p0
.end method

.method public static getRemainDayOfCalibration()I
    .locals 5

    .line 161
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getElapsedDaysOfCalibration()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x3

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v2, "S HealthMonitor - BpReCalibrationController"

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "elapsedDays : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remain day of calibration : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static getStartOfDayForElapsed(IJ)J
    .locals 0

    add-int/lit8 p0, p0, -0x1

    .line 314
    invoke-static {p1, p2, p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDayForElapsed(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getTriggerExactTime(J)J
    .locals 2

    const-wide/32 v0, 0x1ee6280

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static getTriggerInterval(I)J
    .locals 2

    .line 278
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v0

    .line 279
    invoke-static {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerInterval(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static getTriggerInterval(IJ)J
    .locals 2

    .line 342
    invoke-static {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerTime(IJ)J

    move-result-wide p0

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-string p2, "S HealthMonitor - BpReCalibrationController"

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interval : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method private static getTriggerTime(IJ)J
    .locals 2

    .line 325
    invoke-static {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getStartOfDayForElapsed(IJ)J

    move-result-wide p0

    .line 326
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerExactTime(J)J

    move-result-wide p0

    const-string p2, "S HealthMonitor - BpReCalibrationController"

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "triggerTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method public static initBpCalibrationNoti()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->isEnableNotification()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "[initBpCalibrationNoti] Disabled notification"

    .line 122
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "init job CALIBRATION schedule"

    .line 125
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V

    .line 128
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V

    return-void
.end method

.method public static initBpRecalibrationSchedule(J)V
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpLastCalibrationTime(J)V

    .line 91
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->isEnableNotification()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "S HealthMonitor - BpReCalibrationController"

    const-string p1, "[initBpRecalibrationSchedule] Disabled notification"

    .line 92
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    sget-object p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 p1, 0x19

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    .line 97
    sget-object p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 p1, 0x1c

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    .line 98
    sget-object p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 p1, 0x1d

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    return-void
.end method

.method public static isEnableNotification()Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->isNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->isCalibrationReminderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static removeBpCalibrationNoti()V
    .locals 2

    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "[removeBpCalibrationNoti] Remove job calibration schedule"

    .line 133
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    .line 135
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    return-void
.end method

.method public static removeBpRecalibrationSchedule()V
    .locals 2

    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "[removeBpRecalibrationSchedule] Remove job recalibration schedule"

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    .line 105
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    .line 106
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    return-void
.end method

.method public static resetCalibrationStepTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 188
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpCurrentCalibrationStepTime(J)V

    .line 189
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 191
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->save()Z

    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpCalibrationState(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized resetForReCalibration()V
    .locals 3

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;

    monitor-enter v0

    :try_start_0
    const-string v1, "S HealthMonitor - BpReCalibrationController"

    const-string v2, "resetForReCalibration"

    .line 178
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetCalibrationStepTime()V

    const/4 v1, 0x0

    .line 180
    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->sReCalibrationState:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-wide/16 v1, -0x1

    .line 181
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpLastCalibrationTime(J)V

    .line 182
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 183
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpRecalibrationSchedule()V

    .line 184
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpCalibrationNoti()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 177
    monitor-exit v0

    throw v1
.end method

.method public static updateBpCalibrationNoti()V
    .locals 6

    .line 139
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->isEnableNotification()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "[updateBpCalibrationNoti] Disabled notification"

    .line 140
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "update job CALIBRATION schedule"

    .line 144
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpCurrentCalibrationStepTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 148
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "S HealthMonitor - BpReCalibrationController"

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t update for future calibration step time : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLongTimeInAndroidFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V

    .line 155
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V

    :cond_2
    return-void
.end method

.method public static updateBpRecalibrationSchedule()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->isEnableNotification()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "[updateBpRecalibrationSchedule] Disabled notification"

    .line 111
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "S HealthMonitor - BpReCalibrationController"

    const-string v1, "update job schedule"

    .line 114
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    .line 116
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    .line 117
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V

    return-void
.end method
