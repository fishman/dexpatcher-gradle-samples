.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;
.super Ljava/lang/Object;
.source "PrerequisiteStep3.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const-string p2, "SUCCESS_REQUEST"

    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->access$sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V

    return-void

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    iget-object p1, p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    iget-object p2, p2, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_something_went_wrong_try_again:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 45
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContinueButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string p1, "mContinueButton"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    return-void
.end method
