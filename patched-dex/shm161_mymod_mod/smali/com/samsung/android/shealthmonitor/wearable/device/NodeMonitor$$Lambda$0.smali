.class final synthetic Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$NodeListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->lambda$new$0$NodeMonitor(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method
