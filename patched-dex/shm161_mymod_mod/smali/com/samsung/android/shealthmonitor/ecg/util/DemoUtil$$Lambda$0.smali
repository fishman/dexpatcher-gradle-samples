.class final Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$$Lambda$0;
.super Ljava/lang/Object;
.source "DemoUtil$$Lambda$0.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;


# instance fields
.field private final arg$1:[Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>([Landroid/widget/RadioGroup;)V
    .registers 2
    .param p1, "radioGroupArr"    # [Landroid/widget/RadioGroup;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$$Lambda$0;->arg$1:[Landroid/widget/RadioGroup;

    .line 16
    return-void
.end method


# virtual methods
.method public final onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "dialog"    # Landroid/app/Dialog;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "oKButtonHandler"    # Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil$$Lambda$0;->arg$1:[Landroid/widget/RadioGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/ecg/util/DemoUtil;->lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V

    .line 20
    return-void
.end method
