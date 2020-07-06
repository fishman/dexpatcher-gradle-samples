.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;
.super Landroid/app/Dialog;
.source "TransparentProgressDialog.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$style;->TransparentProgressDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 13
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->setCancelable(Z)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->requestWindowFeature(I)Z

    .line 19
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->progress_dialog:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 0

    .line 23
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
