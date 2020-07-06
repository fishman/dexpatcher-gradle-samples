.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$1;
.super Ljava/lang/Object;
.source "SHealthMonitorSetupActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentInitialization(Landroid/view/View;Landroid/app/Activity;Landroid/app/Dialog;Landroid/os/Bundle;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$OKButtonHandler;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 196
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$id;->mCustomDescription:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->access$setAgreementLink(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Landroid/widget/TextView;)V

    return-void
.end method
