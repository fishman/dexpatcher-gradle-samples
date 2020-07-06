.class public Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - StateManager"

.field private static volatile mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;


# instance fields
.field private mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    .registers 5

    .prologue
    .line 14
    const-class v3, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    monitor-enter v3

    :try_start_3
    const-class v4, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 15
    :try_start_6
    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    if-nez v2, :cond_14

    .line 16
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;-><init>()V

    .line 17
    .local v1, "stateManager2":Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->load()V

    .line 20
    :cond_14
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;

    .line 21
    .local v0, "stateManager":Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_19

    .line 22
    monitor-exit v3

    return-object v0

    .line 21
    .end local v0    # "stateManager":Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;
    :catchall_19
    move-exception v2

    :try_start_1a
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 14
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static settingForCompletedCalibration(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->initBpRecalibrationSchedule(J)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setInitialCalibrationComplete(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized gotoInitSate()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V

    .line 79
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move init sate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 81
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load()V
    .registers 6

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getEcgCalibrationState()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "bpCalibrationState":Ljava/lang/String;
    if-nez v0, :cond_51

    .line 36
    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V

    .line 40
    :goto_c
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getElapsedDaysOfCalibration()I

    move-result v1

    .line 41
    .local v1, "elapsedDaysOfCalibration":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 42
    const-string v2, "S HealthMonitor - StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continuousStepTime, elapsedDays : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x3

    if-lt v1, v2, :cond_31

    .line 44
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->resetCalibrationStepTime()V

    .line 47
    :cond_31
    const-string v2, "S HealthMonitor - StateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load previousState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_59

    .line 48
    monitor-exit p0

    return-void

    .line 38
    .end local v1    # "elapsedDaysOfCalibration":I
    :cond_51
    :try_start_51
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_59

    goto :goto_c

    .line 34
    .end local v0    # "bpCalibrationState":Ljava/lang/String;
    :catchall_59
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized next()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V

    .line 70
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move nextState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 72
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-object v0

    .line 69
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V

    .line 61
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move previousState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->save()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 63
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reLoad()V
    .registers 3

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    const-string v0, "S HealthMonitor - StateManager"

    const-string v1, "reLoad"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->load()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 31
    monitor-exit p0

    return-void

    .line 29
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCalibrationState(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V
    .registers 5
    .param p1, "calibrationState"    # Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    const-string v0, "S HealthMonitor - StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [setCalibrationState] state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/StateManager;->mCalibrationState:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
