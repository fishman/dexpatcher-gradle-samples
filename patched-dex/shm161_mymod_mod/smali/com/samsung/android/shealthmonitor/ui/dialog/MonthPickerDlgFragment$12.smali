.class Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;
.super Ljava/lang/Object;
.source "MonthPickerDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->showVerticalButtonLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$900(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;->onClick(Landroid/view/View;)V

    .line 601
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$12;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
