.class final Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;
.super Ljava/lang/Object;
.source "DialogUtils$showNoConnectionDialog$1.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# instance fields
.field final $activity:Landroid/support/v4/app/FragmentActivity;

.field final $okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .registers 3
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "onPositiveButtonClickListener"    # Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    .line 15
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;->launchWearableManager(Landroid/support/v4/app/FragmentActivity;)V

    .line 19
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    if-eqz v0, :cond_10

    .line 20
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;->onClick(Landroid/view/View;)V

    .line 22
    :cond_10
    return-void
.end method
