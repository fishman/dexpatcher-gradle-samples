.class final Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;
.super Ljava/lang/Object;
.source "DialogUtils.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic $okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;->$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->launchWearableManager(Landroid/support/v4/app/FragmentActivity;)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils$showNoConnectionDialog$1;->$okListener:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
