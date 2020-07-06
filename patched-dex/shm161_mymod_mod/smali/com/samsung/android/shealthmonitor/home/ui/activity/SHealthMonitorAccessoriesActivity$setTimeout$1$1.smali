.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;
.super Ljava/lang/Object;
.source "SHealthMonitorAccessoriesActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgressBar:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "mSyncProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncData:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mSyncData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->access$updateLastSyncTime(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    return-void
.end method
