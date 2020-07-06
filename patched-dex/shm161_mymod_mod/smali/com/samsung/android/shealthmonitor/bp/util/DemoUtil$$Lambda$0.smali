.class final synthetic Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;


# instance fields
.field private final arg$1:[Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>([Landroid/widget/RadioGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$$Lambda$0;->arg$1:[Landroid/widget/RadioGroup;

    return-void
.end method


# virtual methods
.method public final onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil$$Lambda$0;->arg$1:[Landroid/widget/RadioGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->lambda$showSelectErrortypeDialog$0$DemoUtil([Landroid/widget/RadioGroup;Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V

    return-void
.end method
