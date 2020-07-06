.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;
.super Ljava/lang/Object;
.source "SHealthMonitorCompleteView.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->sendInitialCalibrationRequest(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->$view:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 127
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendInitialCalibrationRequest result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
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

    if-eqz p1, :cond_3

    .line 142
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p2, "SUCCESS_REQUEST"

    .line 129
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/bp/util/JsonUtil;->getCalibrationTimeFromBodyStr(Ljava/lang/String;)J

    move-result-wide p1

    .line 132
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;J)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 148
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 155
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Not isAttachedToWindow"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
