.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$1;
.super Ljava/lang/Object;
.source "SHealthMonitorNotificationActivity.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 35
    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setNotificationSetting(Z)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;->access$updateNotificationSwitchColor(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;Z)V

    .line 37
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;

    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mCalibrationReminderSwitch:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HSwitch;

    const-string p1, "mCalibrationReminderSwitch"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/widget/HSwitch;->setEnabled(Z)V

    .line 38
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->setEnableNotification(Z)V

    return-void
.end method
