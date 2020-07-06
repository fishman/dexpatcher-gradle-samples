.class public final Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_2_STEP;
.super Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.source "CalibrationState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SECOND_2_STEP"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
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

    .line 207
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final isPossibleBack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 0

    .line 204
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;-><init>(Landroid/content/Context;)V

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    return-object p0
.end method

.method public final save()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
