.class Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;
.super Ljava/lang/Object;
.source "SAlertDlgFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->showVerticalButtonLayout(I)V
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

    .line 575
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$600(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;->onClick(Landroid/view/View;)V

    .line 580
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$11;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method
