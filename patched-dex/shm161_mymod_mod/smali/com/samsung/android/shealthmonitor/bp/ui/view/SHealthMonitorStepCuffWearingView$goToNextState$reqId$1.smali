.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepCuffWearingView.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->goToNextState(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
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

    .line 68
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string p2, "SUCCESS_REQUEST"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 61
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 75
    :cond_3
    :goto_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 82
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Not isAttachedToWindow"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
