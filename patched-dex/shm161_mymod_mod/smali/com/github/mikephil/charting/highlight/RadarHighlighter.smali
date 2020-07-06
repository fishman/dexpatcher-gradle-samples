.class public final Lcom/github/mikephil/charting/highlight/RadarHighlighter;
.super Lcom/github/mikephil/charting/highlight/PieRadarHighlighter;
.source "RadarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/PieRadarHighlighter<",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/PieRadarHighlighter;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    return-void
.end method


# virtual methods
.method protected final getClosestHighlight(IFF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1054
    iget-object v2, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1056
    iget-object v2, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    .line 1057
    iget-object v3, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v3, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 1058
    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v4, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v4

    .line 1059
    iget-object v5, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v5, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v5

    const/4 v6, 0x0

    .line 1061
    invoke-static {v6, v6}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v6

    const/4 v15, 0x0

    .line 1062
    :goto_0
    iget-object v8, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v8, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetCount()I

    move-result v8

    if-ge v15, v8, :cond_0

    .line 1064
    iget-object v8, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v8, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v8, v15}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v8

    .line 1066
    invoke-interface {v8, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 1068
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v10

    iget-object v11, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v11, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    .line 1070
    iget-object v11, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v11, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 1071
    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v11

    mul-float/2addr v10, v5

    mul-float/2addr v10, v3

    int-to-float v12, v1

    mul-float v13, v4, v12

    mul-float/2addr v13, v2

    iget-object v14, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v14, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 1072
    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v14

    add-float/2addr v13, v14

    .line 1070
    invoke-static {v11, v10, v13, v6}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1074
    iget-object v14, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    new-instance v13, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v10

    iget v11, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v9, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v16

    move-object v8, v13

    move/from16 v17, v9

    move v9, v12

    move/from16 v12, v17

    move-object v7, v13

    move v13, v15

    move-object v1, v14

    move-object/from16 v14, v16

    invoke-direct/range {v8 .. v14}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    .line 25
    iget-object v2, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v2, Lcom/github/mikephil/charting/charts/RadarChart;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/charts/RadarChart;->distanceToCenter(FF)F

    move-result v2

    iget-object v0, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v0, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v0

    div-float/2addr v2, v0

    const/4 v0, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move-object v4, v0

    const/4 v0, 0x0

    .line 30
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 34
    invoke-virtual {v5}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v6

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v3

    if-gez v7, :cond_1

    move-object v4, v5

    move v3, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method
