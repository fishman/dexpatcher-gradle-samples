.class Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;
.super Landroid/app/Dialog;
.source "SAlertDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;Landroid/content/Context;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$000(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;->this$0:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->access$000(Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;->onBackPressed()V

    return-void

    .line 163
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$1;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    const/4 v0, -0x2

    .line 150
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 152
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x10

    .line 153
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v0, 0x50

    .line 154
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
