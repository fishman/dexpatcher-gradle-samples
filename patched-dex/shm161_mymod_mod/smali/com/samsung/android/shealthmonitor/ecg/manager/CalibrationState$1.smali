.class final enum Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;
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
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;-><init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;)V

    return-void
.end method


# virtual methods
.method public final getCalibrationCount()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMenu()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public final initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 1

    .prologue
    .line 52
    return-object p0
.end method

.method public final isPossibleBack()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public final previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 1

    .prologue
    .line 42
    return-object p0
.end method

.method public final responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepEmptyView;

    invoke-direct {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepEmptyView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final save()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
