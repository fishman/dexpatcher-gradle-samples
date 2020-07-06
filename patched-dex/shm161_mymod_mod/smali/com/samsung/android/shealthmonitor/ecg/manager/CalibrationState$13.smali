.class final enum Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$13;
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
    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;-><init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;)V

    return-void
.end method


# virtual methods
.method public final getCalibrationCount()I
    .registers 2

    .prologue
    .line 568
    const/4 v0, 0x4

    return v0
.end method

.method public final hasMenu()Z
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public final initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 593
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final isPossibleBack()Z
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 588
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 583
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 606
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final save()Z
    .registers 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$13;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setEcgCalibrationState(Ljava/lang/String;)V

    .line 599
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setEcgCurrentCalibrationStepTime(J)V

    .line 600
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->removeBpCalibrationNoti()V

    .line 601
    const/4 v0, 0x1

    return v0
.end method
