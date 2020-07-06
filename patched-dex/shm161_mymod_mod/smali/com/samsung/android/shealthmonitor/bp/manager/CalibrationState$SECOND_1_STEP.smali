.class public final Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_1_STEP;
.super Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.source "CalibrationState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SECOND_1_STEP"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getCalibrationCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final hasMenu()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final initState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 0

    .line 180
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final isPossibleBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 1

    .line 176
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->setPreviousStep(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 177
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_1_STEP;->previousState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    if-ne p0, v0, :cond_0

    .line 196
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    return-object p0

    .line 198
    :cond_0
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_calibration_measurement_finish_get_ready_body:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;-><init>(Landroid/content/Context;I)V

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    return-object p0
.end method

.method public final save()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
