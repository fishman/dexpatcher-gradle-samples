.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "SHealthMonitorValueRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    return-void
.end method


# virtual methods
.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v6, p0

    .line 26
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v6, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    .line 29
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    .line 30
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 31
    invoke-virtual {v6, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 32
    invoke-virtual {v6, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 33
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    .line 34
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 35
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    div-int/lit8 v0, v0, 0x2

    :cond_0
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1

    .line 40
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_1
    move v3, v0

    .line 43
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v1, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v0, v1, v5}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 44
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v12

    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v14, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v15, v0, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;FFII)[F

    move-result-object v10

    .line 45
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v11

    .line 46
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v12

    .line 47
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 48
    iget v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    const/4 v13, 0x0

    .line 50
    :goto_1
    array-length v0, v10

    if-ge v13, v0, :cond_6

    .line 51
    aget v14, v10, v13

    add-int/lit8 v0, v13, 0x1

    .line 52
    aget v15, v10, v0

    .line 53
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    div-int/lit8 v0, v13, 0x2

    iget-object v1, v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v1, v1, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v1, v0

    invoke-interface {v5, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 59
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawValuesEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v9, v4, :cond_2

    .line 61
    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getPointLabel(Lcom/github/mikephil/charting/data/Entry;)Ljava/lang/String;

    move-result-object v16

    int-to-float v1, v3

    add-float v17, v15, v1

    invoke-interface {v5, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueTextColor(I)I

    move-result v18

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v8, v2

    move-object/from16 v2, v16

    move-object/from16 v19, v7

    move v7, v3

    move v3, v14

    move/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v20, v10

    move-object v10, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_2
    move-object v8, v2

    move/from16 v16, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move v7, v3

    move-object v10, v5

    .line 63
    invoke-virtual {v11, v8}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getPointLabel(Lcom/github/mikephil/charting/data/Entry;)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v7

    sub-float v1, v15, v1

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v4, v1, v3

    invoke-interface {v10, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueTextColor(I)I

    move-result v5

    move-object v0, v6

    move-object/from16 v1, p1

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_2

    :cond_3
    move-object v8, v2

    move/from16 v16, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move v7, v3

    move-object v10, v5

    .line 67
    :goto_2
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    iget v1, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v14, v1

    float-to-int v1, v14

    iget v2, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v15, v2

    float-to-int v2, v15

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    move-object/from16 v21, p1

    move-object/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    invoke-static/range {v21 .. v26}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_3

    :cond_4
    move/from16 v16, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move v7, v3

    move-object v10, v5

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x2

    move v3, v7

    move-object v5, v10

    move/from16 v4, v16

    move-object/from16 v7, v19

    move-object/from16 v10, v20

    goto/16 :goto_1

    :cond_6
    move-object/from16 v19, v7

    .line 74
    invoke-static {v12}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_4

    :cond_7
    move-object/from16 v19, v7

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_8
    return-void
.end method
