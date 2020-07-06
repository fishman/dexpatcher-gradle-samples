.class final synthetic Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->lambda$subscribeNodeMonitor$0$SHealthMonitorMainActivity(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method
