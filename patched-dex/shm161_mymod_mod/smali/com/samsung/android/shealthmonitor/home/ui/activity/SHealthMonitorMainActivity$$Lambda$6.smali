.class final synthetic Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$6;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$6;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->lambda$showLockScreenDialog$7$SHealthMonitorMainActivity(Landroid/view/View;)V

    return-void
.end method
