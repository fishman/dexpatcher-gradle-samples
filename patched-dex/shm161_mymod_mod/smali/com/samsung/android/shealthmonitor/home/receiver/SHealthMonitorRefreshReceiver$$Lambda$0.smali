.class final synthetic Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->lambda$onReceive$0$SHealthMonitorRefreshReceiver()V

    return-void
.end method
