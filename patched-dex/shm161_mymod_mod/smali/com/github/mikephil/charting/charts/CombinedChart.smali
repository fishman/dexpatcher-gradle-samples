.class public Lcom/github/mikephil/charting/charts/CombinedChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CombinedChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lcom/github/mikephil/charting/data/CombinedData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;"
    }
.end annotation


# instance fields
.field private mDrawBarShadow:Z

.field protected mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

.field private mDrawValueAboveBar:Z

.field protected mHighlightFullBarEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 46
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    .line 46
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return-void
.end method


# virtual methods
.method protected drawMarkers(Landroid/graphics/Canvas;)V
    .locals 6

    .line 239
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mMarker:Lcom/github/mikephil/charting/components/IMarker;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->isDrawMarkersEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->valuesToHighlight()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v1, v1, v0

    .line 246
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/CombinedData;

    .line 1208
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 1211
    :cond_1
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/CombinedData;->getDataByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v2

    .line 1213
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 1217
    :cond_2
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    .line 248
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/CombinedData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 252
    invoke-interface {v5, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    int-to-float v2, v2

    .line 255
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 258
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/CombinedChart;->getMarkerPosition(Lcom/github/mikephil/charting/highlight/Highlight;)[F

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v3, v1, p1

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBounds(FF)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public getBarData()Lcom/github/mikephil/charting/data/BarData;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object p0

    return-object p0
.end method

.method public getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object p0

    return-object p0
.end method

.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object p0

    return-object p0
.end method

.method public getCombinedData()Lcom/github/mikephil/charting/data/CombinedData;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    return-object p0
.end method

.method public getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    return-object p0
.end method

.method public getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const-string p0, "MPAndroidChart"

    const-string p1, "Can\'t select by touch. No data set."

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getHighlighter()Lcom/github/mikephil/charting/highlight/IHighlighter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/github/mikephil/charting/highlight/IHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1207
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    if-nez p0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance p0, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    .line 121
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getXPx()F

    move-result v3

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getYPx()F

    move-result v4

    .line 122
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getLineData()Lcom/github/mikephil/charting/data/LineData;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object p0

    return-object p0
.end method

.method public getScatterData()Lcom/github/mikephil/charting/data/ScatterData;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CombinedData;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object p0

    return-object p0
.end method

.method protected init()V
    .locals 4

    .line 72
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    const/4 v0, 0x5

    .line 75
    new-array v0, v0, [Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BAR:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->BUBBLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->LINE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->CANDLE:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->SCATTER:Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    .line 79
    new-instance v0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;

    invoke-direct {v0, p0, p0}, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    .line 84
    new-instance v0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    return-void
.end method

.method public final isDrawBarShadowEnabled()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return p0
.end method

.method public final isDrawValueAboveBarEnabled()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    return p0
.end method

.method public final isHighlightFullBarEnabled()Z
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    return p0
.end method

.method public bridge synthetic setData(Lcom/github/mikephil/charting/data/ChartData;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lcom/github/mikephil/charting/data/CombinedData;)V

    return-void
.end method

.method public setData(Lcom/github/mikephil/charting/data/CombinedData;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 95
    new-instance p1, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;

    invoke-direct {p1, p0, p0}, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 96
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast p1, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->createRenderers()V

    .line 97
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    return-void
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawBarShadow:Z

    return-void
.end method

.method public setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 228
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawOrder:[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mDrawValueAboveBar:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/CombinedChart;->mHighlightFullBarEnabled:Z

    return-void
.end method
