.class Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;
.super Ljava/lang/Object;
.source "SAlertDlgFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$500(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 437
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 438
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mNeutralButton is ellipsized."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$6;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$300(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;I)V

    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mNeutralButton.getLayout is null."

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
