.class Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;
.super Ljava/lang/Object;
.source "SAlertDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$isAutoDismiss:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Z)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->val$isAutoDismiss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$800(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;->onClick(Landroid/view/View;)V

    .line 483
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->val$isAutoDismiss:Z

    if-eqz p1, :cond_0

    .line 484
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$9;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
