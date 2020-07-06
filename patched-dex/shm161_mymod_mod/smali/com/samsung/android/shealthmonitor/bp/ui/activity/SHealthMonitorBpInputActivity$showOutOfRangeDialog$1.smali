.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpInputActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->showOutOfRangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .locals 0

    .line 648
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mLearnMoreButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
