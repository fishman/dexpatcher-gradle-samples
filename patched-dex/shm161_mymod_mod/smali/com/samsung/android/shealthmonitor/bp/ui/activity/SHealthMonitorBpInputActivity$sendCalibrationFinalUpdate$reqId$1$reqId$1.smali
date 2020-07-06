.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpInputActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


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

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 430
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object p2, p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendInitialCalibrationRequest result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget-object p2, p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->access$dismissProgress(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0xf21a1ed

    if-eq p2, v0, :cond_2

    const p3, 0x2429a359

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "DISCONNECT_DEVICE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 450
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p2, "SUCCESS_REQUEST"

    .line 432
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SHealthMonitorBpInputActivity"

    const-string p2, "BP02"

    .line 435
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    iget v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;->$nCount:I

    .line 434
    invoke-static {p1, p2, v0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendCalibrationLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 436
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SHealthMonitorBpInputActivity"

    const-string p2, "BP04"

    .line 437
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_3
    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getCalibrationTimeFromBodyStr(Ljava/lang/String;)J

    move-result-wide p1

    .line 441
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;J)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 456
    :cond_4
    :goto_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
