.class Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "SHealthMonitorLineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 0

    float-to-int p0, p1

    .line 373
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
