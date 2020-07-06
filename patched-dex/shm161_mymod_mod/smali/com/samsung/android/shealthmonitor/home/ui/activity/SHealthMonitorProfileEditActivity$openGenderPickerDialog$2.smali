.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;
.super Ljava/lang/Object;
.source "SHealthMonitorProfileEditActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->openGenderPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 553
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditTextGender:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$getMGender$p(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HEditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openGenderPickerDialog$2;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->access$updateEmptyField(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;)V

    return-void
.end method
