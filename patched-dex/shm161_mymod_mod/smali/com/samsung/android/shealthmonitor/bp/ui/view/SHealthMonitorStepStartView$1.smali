.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepStartView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;-><init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v0, "mNext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->access$goToNextState(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;Landroid/view/View;)V

    return-void
.end method
