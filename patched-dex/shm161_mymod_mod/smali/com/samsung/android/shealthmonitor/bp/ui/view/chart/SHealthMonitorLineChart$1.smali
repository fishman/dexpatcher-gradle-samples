.class Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;
.super Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;
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

    .line 53
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/util/List;

    move-result-object v0

    float-to-int p1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const-string p0, ""

    return-object p0

    .line 66
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$200(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$300(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->access$300(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0

    :cond_5
    :goto_1
    const-string p0, ""

    return-object p0
.end method
