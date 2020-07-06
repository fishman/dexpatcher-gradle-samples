.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

.field private final arg$2:Ljava/util/List;

.field private final arg$3:I


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$2:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$2:Ljava/util/List;

    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;->arg$3:I

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->lambda$setData$0$SHealthMonitorLineChart(Ljava/util/List;I)V

    return-void
.end method
