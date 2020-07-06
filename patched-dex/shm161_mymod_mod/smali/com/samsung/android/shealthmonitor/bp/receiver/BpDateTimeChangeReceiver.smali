.class public final Lcom/samsung/android/shealthmonitor/bp/receiver/BpDateTimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BpDateTimeChangeReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->updateBpRecalibrationSchedule()V

    .line 12
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->updateBpCalibrationNoti()V

    return-void
.end method
