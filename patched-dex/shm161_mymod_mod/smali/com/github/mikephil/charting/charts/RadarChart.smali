.class public Lcom/github/mikephil/charting/charts/RadarChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source "RadarChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase<",
        "Lcom/github/mikephil/charting/data/RadarData;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawWeb:Z

.field private mInnerWebLineWidth:F

.field private mSkipWebLineCount:I

.field private mWebAlpha:I

.field private mWebColor:I

.field private mWebColorInner:I

.field private mWebLineWidth:F

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

.field private mYAxis:Lcom/github/mikephil/charting/components/YAxis;

.field protected mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 30
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebLineWidth:F

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 35
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mInnerWebLineWidth:F

    const/16 p1, 0x7a

    .line 40
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColor:I

    .line 45
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColorInner:I

    const/16 p1, 0x96

    .line 50
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebAlpha:I

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mDrawWeb:Z

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mSkipWebLineCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 30
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebLineWidth:F

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 35
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mInnerWebLineWidth:F

    const/16 p1, 0x7a

    .line 40
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    iput p2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColor:I

    .line 45
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColorInner:I

    const/16 p1, 0x96

    .line 50
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebAlpha:I

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mDrawWeb:Z

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mSkipWebLineCount:I

    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 4

    .line 100
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 102
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/RadarData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/RadarData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/RadarData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 103
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {p0}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    return-void
.end method

.method public getFactor()F
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    div-float/2addr v0, p0

    return v0
.end method

.method public final getIndexForAngle(F)I
    .locals 6

    .line 185
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result p1

    .line 187
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v0

    .line 189
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {p0}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x1

    int-to-float v4, v3

    mul-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public getRadius()F
    .locals 2

    .line 335
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    int-to-float p0, p0

    return p0

    :cond_0
    const/high16 p0, 0x41200000    # 10.0f

    .line 330
    invoke-static {p0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p0

    return p0
.end method

.method protected getRequiredLegendOffset()F
    .locals 1

    .line 323
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public getSkipWebLineCount()I
    .locals 0

    .line 318
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mSkipWebLineCount:I

    return p0
.end method

.method public getSliceAngle()F
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {p0}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public getWebAlpha()I
    .locals 0

    .line 258
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebAlpha:I

    return p0
.end method

.method public getWebColor()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColor:I

    return p0
.end method

.method public getWebColorInner()I
    .locals 0

    .line 288
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColorInner:I

    return p0
.end method

.method public getWebLineWidth()F
    .locals 0

    .line 225
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebLineWidth:F

    return p0
.end method

.method public getWebLineWidthInner()F
    .locals 0

    .line 239
    iget p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mInnerWebLineWidth:F

    return p0
.end method

.method public getYAxis()Lcom/github/mikephil/charting/components/YAxis;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    return-object p0
.end method

.method public getYChartMax()F
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    return p0
.end method

.method public getYChartMin()F
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    return p0
.end method

.method public getYRange()F
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget p0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    return p0
.end method

.method protected init()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->init()V

    .line 86
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 88
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebLineWidth:F

    const/high16 v0, 0x3f400000    # 0.75f

    .line 89
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mInnerWebLineWidth:F

    .line 91
    new-instance v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 92
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-direct {v0, v1, v2, p0}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    .line 93
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-direct {v0, v1, v2, p0}, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

    .line 95
    new-instance v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/RadarHighlighter;-><init>(Lcom/github/mikephil/charting/charts/RadarChart;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mHighlighter:Lcom/github/mikephil/charting/highlight/IHighlighter;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->calcMinMax()V

    .line 113
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->computeAxis(FFZ)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->computeAxis(FFZ)V

    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isLegendCustom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->calculateOffsets()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 124
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->computeAxis(FFZ)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/XAxisRendererRadarChart;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 137
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mDrawWeb:Z

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/RadarChart;->valuesToHighlight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mYAxisRenderer:Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 153
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/RadarChart;->drawDescription(Landroid/graphics/Canvas;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/RadarChart;->drawMarkers(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDrawWeb(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mDrawWeb:Z

    return-void
.end method

.method public setSkipWebLineCount(I)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mSkipWebLineCount:I

    return-void
.end method

.method public setWebAlpha(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebAlpha:I

    return-void
.end method

.method public setWebColor(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColor:I

    return-void
.end method

.method public setWebColorInner(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebColorInner:I

    return-void
.end method

.method public setWebLineWidth(F)V
    .locals 0

    .line 221
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mWebLineWidth:F

    return-void
.end method

.method public setWebLineWidthInner(F)V
    .locals 0

    .line 235
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/charts/RadarChart;->mInnerWebLineWidth:F

    return-void
.end method
