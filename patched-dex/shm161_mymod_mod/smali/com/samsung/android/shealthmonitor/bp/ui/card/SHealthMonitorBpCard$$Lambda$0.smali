.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->lambda$getDeviceInfo$0$SHealthMonitorBpCard(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method
