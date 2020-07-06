.class final enum Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$2;
.super Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
.source "CalibrationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;-><init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;)V

    return-void
.end method


# virtual methods
.method public final getCalibrationCount()I
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public final hasMenu()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final isPossibleBack()Z
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final save()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
