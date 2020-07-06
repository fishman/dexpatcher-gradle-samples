.class public Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;
.super Landroid/app/job/JobService;
.source "BpJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BpJobService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJobSchedule(I)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 114
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static getPending(I)Landroid/app/job/JobInfo;
    .locals 3

    .line 102
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 103
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 105
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne p0, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeBpCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V
    .locals 3

    const-string v0, "S HealthMonitor - BpJobService"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeBpCalibrationNotiTask start : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 128
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpCurrentCalibrationStepTime()J

    move-result-wide v1

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->getValue()I

    move-result p1

    invoke-static {p1, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerInterval(IJ)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "S HealthMonitor - BpJobService"

    const-string v0, "makeBpCalibrationNotiTask time was expired"

    .line 131
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "S HealthMonitor - BpJobService"

    const-string p1, "makeBpCalibrationNotiTask job Scheduled successfully!"

    .line 138
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "S HealthMonitor - BpJobService"

    const-string p1, "makeBpCalibrationNotiTask end"

    .line 140
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static makeBpRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V
    .locals 3

    const-string v0, "S HealthMonitor - BpJobService"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeBpRecalibrationNotiTask start , isFinal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 149
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerInterval(I)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "S HealthMonitor - BpJobService"

    const-string v0, "makeBpRecalibrationNotiTask time was expired"

    .line 151
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    const-string p0, "S HealthMonitor - BpJobService"

    const-string p1, "makeBpRecalibrationNotiTask job Scheduled successfully!"

    .line 158
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "S HealthMonitor - BpJobService"

    const-string p1, "makeBpRecalibrationNotiTask end"

    .line 160
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBpUpdataCheckTask()V
    .locals 2

    const-string v0, "S HealthMonitor - BpJobService"

    const-string v1, "setBpUpdataCheckTask start "

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 41
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->setJobInfo(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "S HealthMonitor - BpJobService"

    const-string v1, "setBpUpdataCheckTask job Scheduled successfully!"

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "S HealthMonitor - BpJobService"

    const-string v1, "setBpUpdataCheckTask end"

    .line 47
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setJobInfo(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;)Landroid/app/job/JobInfo$Builder;
    .locals 4

    .line 57
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result p0

    invoke-direct {v1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v2, 0xea60

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const-wide/32 v2, 0x5265c00

    const/4 p0, 0x0

    .line 62
    invoke-virtual {v1, v2, v3, p0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    const/4 p0, 0x1

    .line 63
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 64
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    return-object v1
.end method

.method public static stopBpUpdataCheckTask()V
    .locals 2

    const-string v0, "S HealthMonitor - BpJobService"

    const-string v1, "stopBpUpdateTask() was called"

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 53
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string p0, "S HealthMonitor - BpJobService"

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeSchedule time was expired "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result p0

    invoke-direct {v1, p0, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 174
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 175
    invoke-virtual {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 p0, 0x1

    .line 176
    invoke-virtual {v1, p0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    return-object v1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    const-string p0, "S HealthMonitor - BpJobService"

    const-string v0, "onCreate()"

    .line 28
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "S HealthMonitor - BpJobService"

    const-string v1, "onDestroy()"

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 70
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const-string v1, "S HealthMonitor - BpJobService"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStartJob() was called "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 73
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->checkUpdate()V

    goto :goto_0

    .line 74
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 76
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 78
    :cond_1
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->showNotification(Landroid/content/Context;I)V

    .line 79
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    .line 80
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 82
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 85
    :cond_3
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpNotificationHelper;->showNotification(Landroid/content/Context;I)V

    .line 86
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->cancelJobSchedule(I)V

    .line 90
    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const-string p0, "S HealthMonitor - BpJobService"

    const-string p1, "onStopJob() was called"

    .line 97
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
