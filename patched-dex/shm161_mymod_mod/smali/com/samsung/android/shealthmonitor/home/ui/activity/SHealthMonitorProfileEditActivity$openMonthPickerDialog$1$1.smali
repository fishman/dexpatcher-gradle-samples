.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1$1;
.super Ljava/lang/Object;
.source "SHealthMonitorProfileEditActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity$openMonthPickerDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditDate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorProfileEditActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HEditText;

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/SoftInputUtils;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method
