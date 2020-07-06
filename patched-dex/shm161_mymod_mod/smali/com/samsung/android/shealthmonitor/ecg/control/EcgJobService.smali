.class public Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;
.super Landroid/app/job/JobService;
.source "EcgJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - EcgJobService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJobSchedule(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 82
    return-void
.end method

.method public static getPending(I)Landroid/app/job/JobInfo;
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 73
    .local v0, "next":Landroid/app/job/JobInfo;
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne p0, v2, :cond_14

    .line 77
    .end local v0    # "next":Landroid/app/job/JobInfo;
    :goto_26
    return-object v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static makeEcgCalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;)V
    .registers 7
    .param p0, "jobId"    # Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    .param p1, "calibrationDayReminder"    # Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .prologue
    .line 85
    const-string v2, "S HealthMonitor - EcgJobService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEcgCalibrationNotiTask start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 88
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const-wide/16 v2, 0x64

    invoke-static {p0, v2, v3}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 89
    .local v1, "timeSchedule":Landroid/app/job/JobInfo$Builder;
    if-nez v1, :cond_3b

    .line 90
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgCalibrationNotiTask time was expired"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->cancelJobSchedule(I)V

    .line 98
    :goto_3a
    return-void

    .line 94
    :cond_3b
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4d

    .line 95
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgCalibrationNotiTask job Scheduled successfully!"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4d
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgCalibrationNotiTask end"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public static makeEcgRecalibrationNotiTask(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;I)V
    .registers 7
    .param p0, "jobId"    # Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    .param p1, "i"    # I

    .prologue
    .line 101
    const-string v2, "S HealthMonitor - EcgJobService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEcgRecalibrationNotiTask start , isFinal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "jobscheduler"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 103
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getTriggerInterval(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 104
    .local v1, "timeSchedule":Landroid/app/job/JobInfo$Builder;
    if-nez v1, :cond_3d

    .line 105
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgRecalibrationNotiTask time was expired"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->cancelJobSchedule(I)V

    .line 113
    :goto_3c
    return-void

    .line 109
    :cond_3d
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f

    .line 110
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgRecalibrationNotiTask job Scheduled successfully!"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4f
    const-string v2, "S HealthMonitor - EcgJobService"

    const-string v3, "makeEcgRecalibrationNotiTask end"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public static setEcgUpdataCheckTask()V
    .registers 2

    .prologue
    .line 29
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "setEcgUpdataCheckTask start "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_ECG:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->setJobInfo(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 31
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "setEcgUpdataCheckTask job Scheduled successfully!"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_2b
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "setEcgUpdataCheckTask end"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private static setJobInfo(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;)Landroid/app/job/JobInfo$Builder;
    .registers 7
    .param p0, "jobId"    # Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .prologue
    const/4 v5, 0x1

    .line 42
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 43
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 44
    const-wide/32 v2, 0x5265c00

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 45
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 46
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 47
    return-object v0
.end method

.method public static stopEcgUpdataCheckTask()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "stopEcgUpdateTask() was called"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 39
    return-void
.end method

.method public static timeSchedule(Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;J)Landroid/app/job/JobInfo$Builder;
    .registers 8
    .param p0, "jobId"    # Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    .param p1, "j"    # J

    .prologue
    .line 116
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_20

    .line 117
    const-string v1, "S HealthMonitor - EcgJobService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeSchedule time was expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 124
    :goto_1f
    return-object v0

    .line 120
    :cond_20
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 121
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 122
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    goto :goto_1f
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 20
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 24
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 26
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 7
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    .line 52
    .local v0, "jobId":I
    const-string v1, "S HealthMonitor - EcgJobService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJob() was called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_35

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_35

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_44

    .line 54
    :cond_35
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->showNotification(Landroid/content/Context;I)V

    .line 55
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->cancelJobSchedule(I)V

    .line 56
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 58
    :cond_44
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_54

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 59
    :cond_54
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgNotificationHelper;->showNotification(Landroid/content/Context;I)V

    .line 60
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->cancelJobSchedule(I)V

    .line 62
    :cond_60
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 63
    const/4 v1, 0x1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 67
    const-string v0, "S HealthMonitor - EcgJobService"

    const-string v1, "onStopJob() was called"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method
