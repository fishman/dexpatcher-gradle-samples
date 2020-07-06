.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;
.super Ljava/lang/Object;
.source "SHealthMonitorAccessoriesActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->startSyncData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgressBar:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "mSyncProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncData:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mSyncData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->access$updateLastSyncTime(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->access$showSyncErrorDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    :cond_0
    return-void
.end method
