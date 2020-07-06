.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$5;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$5;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->lambda$delayedDismissProgressBar$6$SHealthMonitorHistoryActivity()V

    return-void
.end method
