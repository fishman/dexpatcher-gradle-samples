.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;
.super Ljava/lang/Object;
.source "SHealthMonitorCompleteView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $calibrationTime:J

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;

    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->$calibrationTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->$calibrationTime:J

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->settingForCompletedCalibration(J)V

    .line 134
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->next()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassNameClearTask(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
