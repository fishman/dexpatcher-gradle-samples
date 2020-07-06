.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->lambda$onCreate$0$SHealthMonitorHistoryItemActivity(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V

    return-void
.end method
