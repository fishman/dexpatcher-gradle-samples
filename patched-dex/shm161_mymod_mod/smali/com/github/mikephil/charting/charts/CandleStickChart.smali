.class public Lcom/github/mikephil/charting/charts/CandleStickChart;
.super Lcom/github/mikephil/charting/charts/BarLineChartBase;
.source "CandleStickChart.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "Lcom/github/mikephil/charting/data/CandleData;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCandleData()Lcom/github/mikephil/charting/data/CandleData;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p0, Lcom/github/mikephil/charting/data/CandleData;

    return-object p0
.end method

.method protected init()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->init()V

    .line 34
    new-instance v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/CandleStickChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 36
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setSpaceMin(F)V

    .line 37
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/CandleStickChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setSpaceMax(F)V

    return-void
.end method
