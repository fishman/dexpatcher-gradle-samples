.class public Lcom/github/mikephil/charting/highlight/BarHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "BarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/ChartHighlighter<",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    return-void
.end method


# virtual methods
.method protected final getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast p0, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p0

    return-object p0
.end method

.method protected getDistance(FFFF)F
    .locals 0

    sub-float/2addr p1, p3

    .line 156
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 4

    .line 21
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getValsForTouch(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast p2, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p2

    .line 31
    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 32
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-wide v1, p1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v1, v1

    iget-wide v2, p1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p0

    return-object p0

    .line 40
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    return-object v0
.end method

.method public final getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 11

    .line 57
    invoke-interface {p2, p3, p4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p3

    check-cast p3, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v1

    if-nez v1, :cond_1

    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v1

    .line 68
    array-length v2, v1

    if-lez v2, :cond_7

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    .line 1103
    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 1108
    :cond_2
    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_5

    aget-object v6, v1, v3

    .line 2025
    iget v7, v6, Lcom/github/mikephil/charting/highlight/Range;->from:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_3

    iget v6, v6, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpg-float v6, p4, v6

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    if-eqz v5, :cond_4

    move v9, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1115
    :cond_5
    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1117
    aget-object v3, v1, v2

    iget v3, v3, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpl-float p4, p4, v3

    if-lez p4, :cond_6

    move v9, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v9, v0

    .line 71
    :goto_3
    iget-object p0, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast p0, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result p2

    aget-object p4, v1, v9

    iget p4, p4, Lcom/github/mikephil/charting/highlight/Range;->to:F

    invoke-virtual {p0, p2, p4}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p0

    .line 73
    new-instance p2, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 74
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v4

    .line 75
    invoke-virtual {p3}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v5

    iget-wide p3, p0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v6, p3

    iget-wide p3, p0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, p3

    .line 78
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v8

    .line 80
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    move-object v3, p2

    invoke-direct/range {v3 .. v10}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 83
    invoke-static {p0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    return-object p2

    :cond_7
    return-object v0
.end method
