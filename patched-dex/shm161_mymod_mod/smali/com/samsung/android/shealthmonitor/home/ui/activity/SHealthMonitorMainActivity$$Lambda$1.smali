.class final synthetic Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->lambda$startSyncData$1$SHealthMonitorMainActivity(I)V

    return-void
.end method
