.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;
.super Ljava/lang/Object;
.source "PrerequisiteStep3.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->getMActivity()Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "Fail to initiate, Try again!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 75
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContinueButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v0, "mContinueButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    return-void
.end method
