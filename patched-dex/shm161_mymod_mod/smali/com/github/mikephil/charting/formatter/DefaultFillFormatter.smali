.class public final Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;
.super Ljava/lang/Object;
.source "DefaultFillFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 3

    .line 20
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getYChartMax()F

    move-result p0

    .line 21
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getYChartMin()F

    move-result v0

    .line 23
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object p2

    .line 25
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMax()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMin()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move p0, v2

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineData;->getYMax()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move p0, v2

    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/LineData;->getYMin()F

    move-result p2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    move v0, v2

    .line 40
    :cond_2
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMin()F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    move p0, v0

    :cond_3
    :goto_0
    return p0
.end method
