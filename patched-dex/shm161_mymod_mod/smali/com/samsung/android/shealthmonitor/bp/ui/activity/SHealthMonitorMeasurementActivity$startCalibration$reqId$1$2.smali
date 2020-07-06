.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;
.super Ljava/lang/Object;
.source "SHealthMonitorMeasurementActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$getMIsCancel$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$stopVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    .line 200
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fail Response got because of Disconnection."

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$showDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    const-string v0, "prepare_calibration"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$cancelCalibration(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
