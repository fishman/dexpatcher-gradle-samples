.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

.field private final arg$2:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;->arg$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$15;->arg$2:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->lambda$null$3$SHealthMonitorHistoryActivity(Ljava/util/List;)V

    return-void
.end method
