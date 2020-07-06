.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorNotificationActivity$initView$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 42
    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setCalibrationReminderSetting(Z)V

    .line 43
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->setEnableNotification(Ljava/lang/String;Z)V

    return-void
.end method
