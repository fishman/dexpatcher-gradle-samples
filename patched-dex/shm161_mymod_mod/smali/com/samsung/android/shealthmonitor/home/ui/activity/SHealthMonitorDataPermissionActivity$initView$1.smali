.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$initView$1;
.super Ljava/lang/Object;
.source "SHealthMonitorDataPermissionActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$launchPermissionScreen(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;)V

    return-void
.end method
