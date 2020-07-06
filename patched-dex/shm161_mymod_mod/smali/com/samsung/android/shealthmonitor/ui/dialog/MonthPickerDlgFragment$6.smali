.class Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;
.super Ljava/lang/Object;
.source "MonthPickerDlgFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 438
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 445
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mNeutralButton is ellipsized."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;I)V

    :cond_0
    return-void

    .line 451
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/MonthPickerDlgFragment;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mNeutralButton.getLayout is null."

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
