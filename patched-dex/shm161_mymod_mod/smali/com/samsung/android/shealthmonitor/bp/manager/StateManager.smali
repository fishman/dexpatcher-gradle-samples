.class public Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - StateManager"

.field private static volatile mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;


# instance fields
.field private mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;-><init>()V

    .line 15
    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->load()V

    .line 17
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public static settingForCompletedCalibration(J)V
    .locals 0

    .line 88
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->initBpRecalibrationSchedule(J)V

    const/4 p0, 0x1

    .line 89
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setInitialCalibrationComplete(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gotoInitSate()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 3

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->initState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    const-string v0, "S HealthMonitor - StateManager"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "move init sate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - StateManager"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .locals 4

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpCalibrationState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 38
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getElapsedDaysOfCalibration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v1, "S HealthMonitor - StateManager"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "continuousStepTime, elapsedDays : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 42
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetCalibrationStepTime()V

    :cond_1
    const-string v0, "S HealthMonitor - StateManager"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load previousState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 30
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->nextState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    const-string v0, "S HealthMonitor - StateManager"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "move nextState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - StateManager"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 68
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->previousState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    const-string v0, "S HealthMonitor - StateManager"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "move previousState "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - StateManager"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reLoad()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "S HealthMonitor - StateManager"

    const-string v1, "reLoad"

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "S HealthMonitor - StateManager"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [setCalibrationState] state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1
.end method
