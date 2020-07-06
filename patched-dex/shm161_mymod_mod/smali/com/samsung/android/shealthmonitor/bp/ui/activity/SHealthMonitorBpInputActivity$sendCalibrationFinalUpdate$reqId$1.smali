.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpInputActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->sendCalibrationFinalUpdate(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $nCount:I

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    iput p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->$nCount:I

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0xf21a1ed

    if-eq p2, p3, :cond_2

    const p3, 0x2429a359

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "DISCONNECT_DEVICE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 474
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p2, "SUCCESS_REQUEST"

    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 429
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;)V

    check-cast p2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendInitialCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_4

    .line 465
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 481
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
