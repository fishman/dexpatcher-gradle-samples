.class final enum Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$3;
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
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;-><init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;)V

    return-void
.end method


# virtual methods
.method public final getCalibrationCount()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public final hasMenu()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public final initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final isPossibleBack()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final save()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
