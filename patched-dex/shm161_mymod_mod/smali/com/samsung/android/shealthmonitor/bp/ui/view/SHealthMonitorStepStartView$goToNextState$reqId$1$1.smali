.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepStartView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success sendPreCalibrationRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getMMainNextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    iget-object v1, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;->$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;->$view:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
