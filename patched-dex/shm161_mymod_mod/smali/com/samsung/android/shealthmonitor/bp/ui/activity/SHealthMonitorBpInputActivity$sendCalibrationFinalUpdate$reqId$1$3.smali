.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;
.super Ljava/lang/Object;
.source "SHealthMonitorBpInputActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->access$dismissProgress(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Fail to update, Try again!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 485
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    return-void
.end method
