.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;
.super Ljava/lang/Object;
.source "SHealthMonitorProfileEditActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/helper/EditTextValidationChecker$EditActionDone;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorProfileEditActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorProfileEditActivity.kt\ncom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4\n*L\n1#1,578:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doDoneAction()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v1, "mEditTextGender"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->requestFocus()Z

    .line 136
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$openGenderPickerDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$initView$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditYear:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    const-string v2, "mEditYear"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$checkBirthDay(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;Lcom/samsung/android/shealthmonitor/widget/HEditText;Z)Z

    return-void
.end method
