.class public final Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 60
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    const/4 p2, 0x3

    .line 61
    new-array p2, p2, [Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x2

    aput-object p3, p2, v1

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 153
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 154
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 673
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 716
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 789
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 73
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 76
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 80
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 p3, 0x69

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 85
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 93
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 98
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 18

    move-object/from16 v0, p0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, p6, v6

    add-float v7, p5, v7

    .line 167
    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, p5, p6

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float v4, v4, p1

    add-float/2addr v8, v4

    .line 168
    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p1

    add-float/2addr v4, v9

    .line 171
    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float/2addr v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float v5, v5, p1

    add-float/2addr v9, v5

    .line 172
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float v5, v5, p1

    add-float/2addr v0, v5

    sub-float v5, v8, p3

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 176
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-float v5, v4, p4

    float-to-double v14, v5

    .line 177
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v10, v12

    move/from16 v5, p2

    float-to-double v14, v5

    const-wide v16, 0x4066800000000000L    # 180.0

    sub-double v16, v16, v14

    div-double v16, v16, v12

    const-wide v14, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v14, v14, v16

    .line 183
    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-float v5, v10

    sub-float v1, p1, v5

    float-to-double v10, v1

    add-float v8, v8, p3

    div-float/2addr v8, v6

    sub-float/2addr v9, v8

    float-to-double v1, v9

    .line 190
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-float v4, v4, p4

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    float-to-double v3, v0

    .line 191
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 189
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v10, v0

    double-to-float v0, v10

    return v0
.end method

.method private drawDataSet$1577ed34(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 218
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    .line 220
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    .line 221
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 223
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v5

    .line 225
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v6

    .line 226
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 227
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v8

    .line 228
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v15

    .line 229
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v9

    const/16 v16, 0x0

    const/4 v14, 0x1

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    move/from16 v17, v14

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    const/high16 v9, 0x42c80000    # 100.0f

    const/16 v18, 0x0

    if-eqz v17, :cond_1

    .line 230
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 231
    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v10

    div-float/2addr v10, v9

    mul-float/2addr v10, v15

    move v13, v10

    goto :goto_1

    :cond_1
    move/from16 v13, v18

    .line 233
    :goto_1
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v10

    mul-float/2addr v10, v15

    div-float/2addr v10, v9

    sub-float v9, v15, v10

    const/high16 v19, 0x40000000    # 2.0f

    div-float v20, v9, v19

    .line 234
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    if-eqz v17, :cond_2

    .line 235
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    move/from16 v21, v14

    goto :goto_2

    :cond_2
    move/from16 v21, v16

    :goto_2
    move/from16 v9, v16

    move v11, v9

    :goto_3
    if-ge v9, v6, :cond_4

    .line 240
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sget v22, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v10, v10, v22

    if-lez v10, :cond_3

    add-int/lit8 v11, v11, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    if-gt v11, v14, :cond_5

    move/from16 v22, v18

    goto :goto_4

    .line 245
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v9

    move/from16 v22, v9

    :goto_4
    move/from16 v10, v16

    move/from16 v23, v18

    :goto_5
    if-ge v10, v6, :cond_1a

    .line 249
    aget v24, v7, v10

    .line 252
    invoke-interface {v1, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 255
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sget v25, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v9, v9, v25

    if-gtz v9, :cond_6

    mul-float v24, v24, v3

    add-float v23, v23, v24

    :goto_6
    move/from16 v31, v2

    move/from16 v33, v3

    move-object/from16 v34, v5

    move/from16 v27, v6

    move-object/from16 v32, v7

    move/from16 v35, v10

    move v5, v11

    move-object v6, v12

    move v3, v13

    move/from16 v25, v14

    move/from16 v26, v15

    goto/16 :goto_14

    .line 261
    :cond_6
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v21, :cond_7

    mul-float v24, v24, v3

    add-float v23, v23, v24

    goto :goto_6

    :cond_7
    cmpl-float v9, v22, v18

    const/high16 v14, 0x43340000    # 180.0f

    if-lez v9, :cond_8

    cmpg-float v9, v24, v14

    if-gtz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    move/from16 v9, v16

    .line 268
    :goto_7
    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v27, v6

    invoke-interface {v1, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v6

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setColor(I)V

    const v6, 0x3c8efa35

    const/4 v14, 0x1

    if-ne v11, v14, :cond_9

    move/from16 v25, v18

    goto :goto_8

    :cond_9
    mul-float v25, v15, v6

    div-float v25, v22, v25

    :goto_8
    div-float v26, v25, v19

    add-float v26, v23, v26

    mul-float v26, v26, v4

    add-float v14, v2, v26

    sub-float v25, v24, v25

    mul-float v25, v25, v4

    cmpg-float v26, v25, v18

    if-gez v26, :cond_a

    move/from16 v28, v18

    goto :goto_9

    :cond_a
    move/from16 v28, v25

    .line 279
    :goto_9
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    if-eqz v21, :cond_b

    .line 282
    iget v6, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v25, v15, v20

    const v26, 0x3c8efa35

    mul-float v1, v14, v26

    move/from16 v30, v10

    move/from16 v29, v11

    float-to-double v10, v1

    move/from16 v31, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v25

    add-float/2addr v6, v1

    .line 283
    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v2, v10

    mul-float v25, v25, v2

    add-float v1, v1, v25

    sub-float v2, v6, v20

    sub-float v10, v1, v20

    add-float v6, v6, v20

    add-float v1, v1, v20

    .line 284
    invoke-virtual {v12, v2, v10, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    :cond_b
    move/from16 v31, v2

    move/from16 v30, v10

    move/from16 v29, v11

    .line 287
    :goto_a
    iget v1, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v2, 0x3c8efa35

    mul-float v6, v14, v2

    float-to-double v10, v6

    move-object/from16 v32, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v15

    add-float/2addr v1, v2

    .line 288
    iget v2, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v15

    add-float/2addr v2, v6

    const/high16 v6, 0x43b40000    # 360.0f

    move/from16 v7, v28

    cmpl-float v25, v7, v6

    if-ltz v25, :cond_c

    rem-float v28, v7, v6

    .line 290
    sget v10, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v10, v28, v10

    if-gtz v10, :cond_c

    .line 292
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v11, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v33, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v11, v6, v15, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    const/high16 v6, 0x43340000    # 180.0f

    goto :goto_c

    :cond_c
    move/from16 v33, v3

    if-eqz v21, :cond_d

    .line 296
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    const/high16 v6, 0x43340000    # 180.0f

    add-float v10, v14, v6

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-virtual {v3, v12, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_b

    :cond_d
    const/high16 v6, 0x43340000    # 180.0f

    .line 299
    :goto_b
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v14, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 307
    :goto_c
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v10, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v10, v13

    iget v11, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v11, v13

    iget v6, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v6, v13

    move-object/from16 v34, v5

    iget v5, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v5, v13

    invoke-virtual {v3, v10, v11, v6, v5}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v17, :cond_17

    cmpl-float v3, v13, v18

    if-gtz v3, :cond_f

    if-eqz v9, :cond_e

    goto :goto_d

    :cond_e
    move-object v6, v12

    move v3, v13

    move/from16 v26, v15

    move/from16 v5, v29

    move/from16 v35, v30

    const/high16 v10, 0x43b40000    # 360.0f

    const/16 v25, 0x1

    goto/16 :goto_12

    :cond_f
    :goto_d
    if-eqz v9, :cond_11

    mul-float v11, v24, v4

    move-object v9, v8

    move/from16 v3, v30

    move v10, v15

    move/from16 v5, v29

    move-object v6, v12

    move v12, v1

    move v1, v13

    move v13, v2

    const/4 v2, 0x1

    move/from16 v26, v15

    move v15, v7

    .line 317
    invoke-static/range {v9 .. v15}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v9

    cmpg-float v10, v9, v18

    if-gez v10, :cond_10

    neg-float v9, v9

    .line 327
    :cond_10
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v13

    goto :goto_e

    :cond_11
    move-object v6, v12

    move v1, v13

    move/from16 v26, v15

    move/from16 v5, v29

    move/from16 v3, v30

    const/4 v2, 0x1

    :goto_e
    if-eq v5, v2, :cond_13

    cmpl-float v9, v13, v18

    if-nez v9, :cond_12

    goto :goto_f

    :cond_12
    const v9, 0x3c8efa35

    mul-float v10, v13, v9

    div-float v9, v22, v10

    goto :goto_10

    :cond_13
    :goto_f
    move/from16 v9, v18

    :goto_10
    div-float v10, v9, v19

    add-float v10, v23, v10

    mul-float/2addr v10, v4

    add-float v10, v31, v10

    sub-float v9, v24, v9

    mul-float/2addr v9, v4

    cmpg-float v11, v9, v18

    if-gez v11, :cond_14

    move/from16 v9, v18

    :cond_14
    add-float/2addr v10, v9

    if-ltz v25, :cond_15

    const/high16 v11, 0x43b40000    # 360.0f

    rem-float v28, v7, v11

    .line 340
    sget v7, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v7, v28, v7

    if-gtz v7, :cond_15

    .line 342
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v9, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v10, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v11, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v10, v13, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v25, v2

    move/from16 v35, v3

    move v3, v1

    goto/16 :goto_13

    :cond_15
    if-eqz v21, :cond_16

    .line 346
    iget v7, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float v15, v26, v20

    const v11, 0x3c8efa35

    mul-float/2addr v11, v10

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v15

    add-float/2addr v7, v13

    .line 347
    iget v13, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v15, v11

    add-float/2addr v13, v15

    sub-float v11, v7, v20

    sub-float v12, v13, v20

    add-float v7, v7, v20

    add-float v13, v13, v20

    .line 348
    invoke-virtual {v6, v11, v12, v7, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 349
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v7, v6, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    move/from16 v35, v3

    goto :goto_11

    .line 351
    :cond_16
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v11, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v12, 0x3c8efa35

    mul-float/2addr v12, v10

    float-to-double v14, v12

    move/from16 v35, v3

    .line 352
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v13

    add-float/2addr v11, v2

    iget v2, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 353
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v3, v14

    mul-float/2addr v13, v3

    add-float/2addr v2, v13

    .line 351
    invoke-virtual {v7, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    :goto_11
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v7, v9

    invoke-virtual {v2, v3, v10, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    move v3, v1

    const/16 v25, 0x1

    goto :goto_13

    :cond_17
    move-object v6, v12

    move v3, v13

    move/from16 v26, v15

    move/from16 v5, v29

    move/from16 v35, v30

    const/16 v25, 0x1

    const/high16 v10, 0x43b40000    # 360.0f

    :goto_12
    rem-float v28, v7, v10

    .line 363
    sget v10, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v10, v28, v10

    if-lez v10, :cond_19

    if-eqz v9, :cond_18

    div-float v28, v7, v19

    add-float v28, v14, v28

    mul-float v11, v24, v4

    move-object v9, v8

    move/from16 v10, v26

    move v12, v1

    move v13, v2

    move v15, v7

    .line 369
    invoke-static/range {v9 .. v15}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v1

    .line 378
    iget v2, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v7, 0x3c8efa35

    mul-float v7, v7, v28

    float-to-double v9, v7

    .line 379
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v7, v11

    mul-float/2addr v7, v1

    add-float/2addr v2, v7

    .line 380
    iget v7, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 381
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v1, v9

    add-float/2addr v7, v1

    .line 383
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_13

    .line 388
    :cond_18
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v2, v8, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v8, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    :cond_19
    :goto_13
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 398
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    mul-float v24, v24, v33

    add-float v23, v23, v24

    :goto_14
    add-int/lit8 v10, v35, 0x1

    move v13, v3

    move v11, v5

    move-object v12, v6

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v6, v27

    move/from16 v2, v31

    move-object/from16 v7, v32

    move/from16 v3, v33

    move-object/from16 v5, v34

    move-object/from16 v1, p1

    goto/16 :goto_5

    .line 403
    :cond_1a
    invoke-static {v8}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method private drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 2

    .line 204
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p0

    return p0

    .line 207
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    move-result v1

    div-float/2addr v0, v1

    .line 208
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYMin()F

    move-result v1

    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result p0

    div-float/2addr v1, p0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final drawData(Landroid/graphics/Canvas;)V
    .locals 3

    .line 125
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result p1

    float-to-int p1, p1

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v0

    float-to-int v0, v0

    .line 128
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_2

    :cond_1
    if-lez p1, :cond_5

    if-lez v0, :cond_5

    .line 135
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 137
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    :cond_2
    const/4 p1, 0x0

    .line 142
    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 144
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/PieData;

    .line 146
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 148
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 149
    invoke-direct {p0, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet$1577ed34(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method public final drawExtras(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1681
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_2

    .line 1683
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v2

    .line 1684
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    div-float/2addr v4, v3

    mul-float/2addr v4, v2

    .line 1685
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    .line 1687
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 1689
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v8, v4, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1695
    :cond_0
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 1696
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v6

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 1698
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 1699
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v7

    div-float/2addr v7, v3

    mul-float/2addr v2, v7

    .line 1701
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v8, v6

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1704
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 1705
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1706
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v7, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v7, v8, v4, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1707
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1710
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1712
    :cond_1
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 669
    :cond_2
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1723
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1725
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 1727
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 1728
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v14

    .line 1730
    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v14, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v4, v6

    .line 1731
    iget v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v7, v14, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v6, v7

    .line 1733
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 1734
    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v7

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v8

    div-float/2addr v8, v3

    mul-float/2addr v7, v8

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 1735
    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v7

    .line 1737
    :goto_0
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v9, 0x0

    aget-object v15, v8, v9

    sub-float v8, v4, v7

    .line 1738
    iput v8, v15, Landroid/graphics/RectF;->left:F

    sub-float v8, v6, v7

    .line 1739
    iput v8, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    .line 1740
    iput v4, v15, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    .line 1741
    iput v6, v15, Landroid/graphics/RectF;->bottom:F

    .line 1742
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v6, 0x1

    aget-object v13, v4, v6

    .line 1743
    invoke-virtual {v13, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1745
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v4

    div-float/2addr v4, v3

    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v3, v6, v8

    const/high16 v16, 0x40000000    # 2.0f

    if-lez v3, :cond_4

    .line 1748
    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v6, v4

    sub-float/2addr v3, v6

    div-float v3, v3, v16

    .line 1749
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    div-float v6, v6, v16

    .line 1747
    invoke-virtual {v13, v3, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1753
    :cond_4
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v13, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v13

    goto :goto_2

    .line 1756
    :cond_6
    :goto_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1757
    iput-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 1759
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 1762
    new-instance v12, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    float-to-double v3, v3

    .line 1764
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v9, v3

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v4, v12

    move-object/from16 v18, v12

    move v12, v3

    move-object v3, v13

    move/from16 v13, v17

    invoke-direct/range {v4 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v4, v18

    iput-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 1769
    :goto_2
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1771
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1772
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_7

    .line 1773
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 1774
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 1775
    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v15, v6}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1776
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1779
    :cond_7
    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v3, v4

    div-float v3, v3, v16

    add-float/2addr v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1780
    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1784
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 1785
    invoke-static {v14}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_8
    return-void
.end method

.method public final drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 798
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 799
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 802
    :cond_1
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    .line 803
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    .line 806
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v7

    .line 808
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v8

    .line 809
    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v9

    .line 810
    iget-object v10, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v10

    .line 811
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v18

    const/4 v15, 0x0

    if-eqz v2, :cond_2

    .line 812
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 813
    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    mul-float v11, v11, v18

    move v14, v11

    goto :goto_1

    :cond_2
    move v14, v15

    .line 816
    :goto_1
    iget-object v13, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 817
    invoke-virtual {v13, v15, v15, v15, v15}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v12, 0x0

    .line 819
    :goto_2
    array-length v11, v1

    if-ge v12, v11, :cond_1a

    .line 822
    aget-object v11, v1, v12

    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v11

    float-to-int v11, v11

    .line 824
    array-length v3, v8

    if-ge v11, v3, :cond_19

    .line 827
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/PieData;

    aget-object v15, v1, v12

    .line 829
    invoke-virtual {v15}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v15

    .line 828
    invoke-virtual {v3, v15}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 831
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 834
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v15

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v15, :cond_4

    .line 838
    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v16

    move/from16 v20, v12

    move-object/from16 v12, v16

    check-cast v12, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sget v16, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v12, v12, v16

    if-lez v12, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v20

    goto :goto_3

    :cond_4
    move/from16 v20, v12

    if-nez v11, :cond_5

    const/4 v4, 0x0

    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v11, -0x1

    .line 846
    aget v4, v9, v4

    mul-float v15, v4, v5

    move v4, v15

    goto :goto_4

    :goto_5
    if-gt v1, v12, :cond_6

    const/16 v21, 0x0

    goto :goto_6

    .line 848
    :cond_6
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v15

    move/from16 v21, v15

    .line 850
    :goto_6
    aget v22, v8, v11

    .line 853
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v12

    add-float v15, v18, v12

    move/from16 v23, v5

    .line 855
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float v5, v12

    .line 856
    invoke-virtual {v13, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v5, 0x0

    cmpl-float v12, v21, v5

    if-lez v12, :cond_7

    const/high16 v5, 0x43340000    # 180.0f

    cmpg-float v5, v22, v5

    if-gtz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    .line 860
    :goto_7
    iget-object v12, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v3, v11}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3c8efa35

    const/4 v11, 0x1

    if-ne v1, v11, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    mul-float v12, v18, v3

    div-float v12, v21, v12

    :goto_8
    if-ne v1, v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    mul-float v11, v15, v3

    div-float v11, v21, v11

    :goto_9
    const/high16 v24, 0x40000000    # 2.0f

    div-float v16, v12, v24

    add-float v16, v4, v16

    mul-float v16, v16, v6

    add-float v25, v7, v16

    sub-float v12, v22, v12

    mul-float/2addr v12, v6

    const/16 v16, 0x0

    cmpg-float v17, v12, v16

    if-gez v17, :cond_a

    move/from16 v19, v16

    goto :goto_a

    :cond_a
    move/from16 v19, v12

    :goto_a
    div-float v12, v11, v24

    add-float/2addr v12, v4

    mul-float/2addr v12, v6

    add-float/2addr v12, v7

    sub-float v11, v22, v11

    mul-float/2addr v11, v6

    cmpg-float v17, v11, v16

    if-gez v17, :cond_b

    move/from16 v11, v16

    .line 882
    :cond_b
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v26, v19, v3

    if-ltz v26, :cond_c

    rem-float v17, v19, v3

    .line 884
    sget v27, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v17, v17, v27

    if-gtz v17, :cond_c

    .line 886
    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v12, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move-object/from16 v28, v8

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v3, v15, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v31, v1

    move/from16 v30, v2

    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v29, v9

    goto :goto_b

    :cond_c
    move-object/from16 v28, v8

    .line 889
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v8, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move-object/from16 v29, v9

    const v17, 0x3c8efa35

    mul-float v9, v12, v17

    move/from16 v31, v1

    move/from16 v30, v2

    float-to-double v1, v9

    move/from16 v32, v6

    move/from16 v33, v7

    .line 890
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v15

    add-float/2addr v8, v6

    iget v6, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 891
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v15, v1

    add-float/2addr v6, v15

    .line 889
    invoke-virtual {v3, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 893
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v12, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_b
    if-eqz v5, :cond_d

    mul-float v1, v22, v32

    .line 902
    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v3, 0x3c8efa35

    mul-float v6, v25, v3

    float-to-double v6, v6

    .line 906
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    iget v3, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 907
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, v18

    add-float v15, v3, v6

    move-object v11, v10

    move/from16 v3, v20

    move/from16 v12, v18

    move-object v6, v13

    move v13, v1

    move v1, v14

    move v14, v2

    move/from16 v2, v16

    move/from16 v16, v25

    move/from16 v17, v19

    .line 903
    invoke-static/range {v11 .. v17}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v15

    goto :goto_c

    :cond_d
    move-object v6, v13

    move v1, v14

    move/from16 v2, v16

    move/from16 v3, v20

    move v15, v2

    .line 913
    :goto_c
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v8, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v8, v1

    iget v9, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v9, v1

    iget v11, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v11, v1

    iget v12, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v7, v8, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v30, :cond_16

    cmpl-float v7, v1, v2

    if-gtz v7, :cond_f

    if-eqz v5, :cond_e

    goto :goto_d

    :cond_e
    move/from16 v34, v3

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v7, 0x1

    goto/16 :goto_11

    :cond_f
    :goto_d
    if-eqz v5, :cond_11

    cmpg-float v5, v15, v2

    if-gez v5, :cond_10

    neg-float v15, v15

    .line 928
    :cond_10
    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_e

    :cond_11
    move v14, v1

    :goto_e
    move/from16 v5, v31

    const/4 v7, 0x1

    if-eq v5, v7, :cond_13

    cmpl-float v5, v14, v2

    if-nez v5, :cond_12

    goto :goto_f

    :cond_12
    const v5, 0x3c8efa35

    mul-float v8, v14, v5

    div-float v15, v21, v8

    goto :goto_10

    :cond_13
    :goto_f
    move v15, v2

    :goto_10
    div-float v5, v15, v24

    add-float/2addr v4, v5

    mul-float v4, v4, v32

    add-float v4, v33, v4

    sub-float v22, v22, v15

    mul-float v15, v22, v32

    cmpg-float v5, v15, v2

    if-gez v5, :cond_14

    move v15, v2

    :cond_14
    add-float/2addr v4, v15

    if-ltz v26, :cond_15

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float v19, v19, v5

    .line 941
    sget v5, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v5, v19, v5

    if-gtz v5, :cond_15

    .line 943
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v5, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v8, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v8, v14, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v34, v3

    goto :goto_12

    .line 946
    :cond_15
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v8, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v9, 0x3c8efa35

    mul-float/2addr v9, v4

    float-to-double v11, v9

    move/from16 v34, v3

    .line 947
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v8, v2

    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 948
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float/2addr v14, v3

    add-float/2addr v2, v14

    .line 946
    invoke-virtual {v5, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 950
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v5, v15

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_12

    :cond_16
    move/from16 v34, v3

    const/4 v7, 0x1

    const/high16 v2, 0x43b40000    # 360.0f

    :goto_11
    rem-float v2, v19, v2

    .line 958
    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    if-eqz v5, :cond_17

    div-float v19, v19, v24

    add-float v25, v25, v19

    .line 963
    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const v3, 0x3c8efa35

    mul-float v3, v3, v25

    float-to-double v3, v3

    .line 964
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v15

    add-float/2addr v2, v5

    .line 965
    iget v5, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 966
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v15, v3

    add-float/2addr v5, v15

    .line 968
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_12

    .line 974
    :cond_17
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 983
    :cond_18
    :goto_12
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 985
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_13

    :cond_19
    move/from16 v30, v2

    move/from16 v23, v5

    move/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move/from16 v34, v12

    move-object v6, v13

    move v1, v14

    const/4 v7, 0x1

    :goto_13
    add-int/lit8 v12, v34, 0x1

    move v14, v1

    move-object v13, v6

    move/from16 v5, v23

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move/from16 v2, v30

    move/from16 v6, v32

    move/from16 v7, v33

    move-object/from16 v1, p2

    const/4 v15, 0x0

    goto/16 :goto_2

    .line 988
    :cond_1a
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method public final drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 651
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawValues(Landroid/graphics/Canvas;)V
    .locals 58

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 409
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v8

    .line 412
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v9

    .line 413
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v0

    .line 414
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v10

    .line 415
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v11

    .line 417
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v12

    .line 418
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    .line 420
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v1

    mul-float/2addr v1, v9

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v1, v14

    sub-float v1, v9, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v1, v15

    .line 421
    iget-object v2, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v2

    div-float v16, v2, v14

    const/high16 v2, 0x41200000    # 10.0f

    div-float v2, v9, v2

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v2, v3

    .line 424
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    mul-float v2, v9, v16

    sub-float v2, v9, v2

    div-float/2addr v2, v15

    .line 427
    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    float-to-double v3, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v1, v0

    float-to-double v0, v1

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v14, v9

    mul-double v14, v14, v17

    div-double/2addr v0, v14

    add-double/2addr v3, v0

    double-to-float v0, v3

    :cond_0
    move v14, v0

    sub-float v15, v9, v2

    .line 435
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/github/mikephil/charting/data/PieData;

    .line 436
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v4

    .line 438
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v17

    .line 440
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v18

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 447
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move v3, v0

    .line 449
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_22

    .line 451
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 453
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v23

    if-nez v23, :cond_2

    if-eqz v18, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v49, v9

    move-object/from16 v38, v10

    move-object/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v45, v14

    move/from16 v56, v15

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v19, 0x42c80000    # 100.0f

    move-object v15, v5

    move-object v9, v7

    move-object v12, v8

    goto/16 :goto_15

    .line 458
    :cond_2
    :goto_1
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v1

    move-object/from16 v24, v5

    .line 459
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v5

    .line 462
    invoke-virtual {v6, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    move/from16 v25, v0

    .line 464
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v26, v3

    const-string v3, "Q"

    invoke-static {v0, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40800000    # 4.0f

    .line 465
    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    add-float v27, v0, v3

    .line 467
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v3

    .line 469
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v0

    move-object/from16 v28, v4

    .line 471
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v4, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v7

    invoke-static {v7}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    invoke-direct {v6, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v7

    .line 476
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    move-object/from16 v30, v8

    .line 477
    iget v8, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v8}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v8

    iput v8, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 478
    iget v8, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v8}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v8

    iput v8, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v8, v22

    :goto_2
    if-ge v8, v0, :cond_21

    .line 482
    invoke-interface {v2, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v31

    move-object/from16 v32, v4

    move-object/from16 v4, v31

    check-cast v4, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v25, :cond_3

    const/16 v31, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v31, v25, -0x1

    .line 487
    aget v31, v11, v31

    mul-float v31, v31, v12

    .line 489
    :goto_3
    aget v33, v10, v25

    const v34, 0x3c8efa35

    mul-float v35, v15, v34

    div-float v35, v7, v35

    const/high16 v20, 0x40000000    # 2.0f

    div-float v35, v35, v20

    sub-float v33, v33, v35

    div-float v33, v33, v20

    add-float v31, v31, v33

    mul-float v31, v31, v13

    move/from16 v36, v0

    add-float v0, v14, v31

    move/from16 v37, v7

    .line 499
    iget-object v7, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v7

    div-float v7, v7, v17

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v7, v7, v19

    goto :goto_4

    .line 500
    :cond_4
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v7

    .line 501
    :goto_4
    invoke-virtual {v3, v7, v4}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getPieLabel(FLcom/github/mikephil/charting/data/PieEntry;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v38, v10

    .line 502
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v39, v3

    mul-float v3, v0, v34

    move-object/from16 v40, v4

    float-to-double v3, v3

    move-object/from16 v41, v11

    move/from16 v42, v12

    .line 504
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    move/from16 v43, v13

    .line 505
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    if-eqz v18, :cond_5

    .line 507
    sget-object v13, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v1, v13, :cond_5

    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    move/from16 v13, v22

    :goto_5
    if-eqz v23, :cond_6

    move/from16 v45, v14

    .line 509
    sget-object v14, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v5, v14, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    move/from16 v45, v14

    :cond_7
    move/from16 v14, v22

    :goto_6
    if-eqz v18, :cond_8

    move-object/from16 v46, v10

    .line 511
    sget-object v10, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v1, v10, :cond_9

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v46, v10

    :cond_9
    move/from16 v10, v22

    :goto_7
    if-eqz v23, :cond_a

    move-object/from16 v47, v1

    .line 513
    sget-object v1, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v5, v1, :cond_b

    const/16 v44, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v47, v1

    :cond_b
    move/from16 v44, v22

    :goto_8
    if-nez v13, :cond_d

    if-eqz v14, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v49, v9

    move/from16 v52, v11

    move/from16 v50, v12

    move/from16 v56, v15

    move-object/from16 v15, v24

    move-object/from16 v55, v30

    move-object/from16 v53, v32

    move/from16 v29, v36

    move-object/from16 v34, v39

    move-object/from16 v54, v40

    move-object/from16 v13, v46

    move-object/from16 v30, v47

    move-object/from16 v9, p1

    const/high16 v19, 0x42c80000    # 100.0f

    move-object v11, v2

    move-object/from16 v24, v5

    goto/16 :goto_f

    .line 518
    :cond_d
    :goto_9
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    move-result v1

    .line 519
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    move-result v31

    .line 520
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    move-result v33

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v33, v33, v19

    move-object/from16 v48, v5

    .line 527
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    mul-float v5, v9, v16

    sub-float v34, v9, v5

    mul-float v34, v34, v33

    add-float v34, v34, v5

    goto :goto_a

    :cond_e
    mul-float v34, v9, v33

    .line 534
    :goto_a
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    move-result v5

    if-eqz v5, :cond_f

    mul-float v31, v31, v15

    .line 535
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v31, v31, v3

    goto :goto_b

    :cond_f
    mul-float v31, v31, v15

    :goto_b
    mul-float v3, v34, v11

    move-object/from16 v5, v30

    .line 539
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v4

    mul-float v34, v34, v12

    .line 540
    iget v4, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v4, v34, v4

    const/high16 v30, 0x3f800000    # 1.0f

    add-float v1, v1, v30

    mul-float/2addr v1, v15

    mul-float v30, v1, v11

    move/from16 v49, v9

    .line 542
    iget v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v9, v30, v9

    mul-float/2addr v1, v12

    move/from16 v50, v12

    .line 543
    iget v12, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v12, v1

    float-to-double v0, v0

    const-wide v33, 0x4076800000000000L    # 360.0

    rem-double v0, v0, v33

    const-wide v33, 0x4056800000000000L    # 90.0

    cmpl-double v30, v0, v33

    if-ltz v30, :cond_11

    const-wide v33, 0x4070e00000000000L    # 270.0

    cmpg-double v0, v0, v33

    if-gtz v0, :cond_11

    sub-float v0, v9, v31

    .line 549
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v51, v5

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v13, :cond_10

    .line 552
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_10
    sub-float v1, v0, v21

    move/from16 v31, v0

    move v5, v1

    goto :goto_c

    :cond_11
    move-object/from16 v51, v5

    add-float v31, v9, v31

    .line 559
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v13, :cond_12

    .line 562
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_12
    add-float v0, v31, v21

    move v5, v0

    .line 568
    :goto_c
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v0

    const v1, 0x112233

    if-eq v0, v1, :cond_14

    .line 570
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isUsingSliceColorAsValueLineColor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 571
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v2, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    :cond_13
    iget-object v1, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move/from16 v29, v36

    move-object/from16 v0, p1

    move-object/from16 v33, v1

    move-object/from16 v30, v47

    move v1, v3

    move-object v3, v2

    move v2, v4

    move-object v4, v3

    move-object/from16 v34, v39

    move v3, v9

    move/from16 v52, v11

    move-object/from16 v53, v32

    move-object/from16 v54, v40

    move-object v11, v4

    move v4, v12

    move/from16 v57, v5

    move/from16 v56, v15

    move-object/from16 v15, v24

    move-object/from16 v24, v48

    move-object/from16 v55, v51

    move-object/from16 v5, v33

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 575
    iget-object v5, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move v1, v9

    move v2, v12

    move/from16 v3, v31

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_14
    move/from16 v57, v5

    move/from16 v52, v11

    move/from16 v56, v15

    move-object/from16 v15, v24

    move-object/from16 v53, v32

    move/from16 v29, v36

    move-object/from16 v34, v39

    move-object/from16 v54, v40

    move-object/from16 v30, v47

    move-object/from16 v24, v48

    move-object/from16 v55, v51

    move-object v11, v2

    :goto_d
    if-eqz v13, :cond_16

    if-eqz v14, :cond_16

    .line 581
    invoke-interface {v11, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    move/from16 v3, v57

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 583
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v8, v0, :cond_15

    if-eqz v46, :cond_15

    add-float v12, v12, v27

    move-object/from16 v9, p1

    move-object/from16 v5, v46

    move/from16 v3, v57

    .line 584
    invoke-direct {v6, v9, v5, v3, v12}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_e

    :cond_15
    move-object/from16 v9, p1

    move-object/from16 v13, v46

    goto :goto_f

    :cond_16
    move-object/from16 v9, p1

    move-object/from16 v5, v46

    move/from16 v3, v57

    if-eqz v13, :cond_18

    .line 588
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v8, v0, :cond_17

    if-eqz v5, :cond_17

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v27, v0

    add-float/2addr v12, v1

    .line 589
    invoke-direct {v6, v9, v5, v3, v12}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_17
    :goto_e
    move-object v13, v5

    goto :goto_f

    :cond_18
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v14, :cond_17

    div-float v1, v27, v0

    add-float v4, v12, v1

    .line 593
    invoke-interface {v11, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v12

    move-object v0, v6

    move-object v1, v9

    move-object v2, v7

    move-object v13, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    :goto_f
    if-nez v10, :cond_1a

    if-eqz v44, :cond_19

    goto :goto_11

    :cond_19
    move-object/from16 v0, v54

    move-object/from16 v12, v55

    :goto_10
    const/high16 v10, 0x40000000    # 2.0f

    goto/16 :goto_13

    :cond_1a
    :goto_11
    mul-float v0, v56, v52

    move-object/from16 v12, v55

    .line 599
    iget v1, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v14, v0, v1

    mul-float v0, v56, v50

    .line 600
    iget v1, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v31, v0, v1

    .line 602
    iget-object v0, v6, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v10, :cond_1c

    if-eqz v44, :cond_1c

    .line 607
    invoke-interface {v11, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    move-object v0, v6

    move-object v1, v9

    move-object v2, v7

    move v3, v14

    move/from16 v4, v31

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 609
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v8, v0, :cond_1b

    if-eqz v13, :cond_1b

    add-float v0, v31, v27

    .line 610
    invoke-direct {v6, v9, v13, v14, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_1b
    move-object/from16 v0, v54

    goto :goto_10

    :cond_1c
    if-eqz v10, :cond_1f

    .line 614
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v8, v0, :cond_1d

    if-eqz v13, :cond_1d

    const/high16 v10, 0x40000000    # 2.0f

    div-float v0, v27, v10

    add-float v0, v31, v0

    .line 615
    invoke-direct {v6, v9, v13, v14, v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_12

    :cond_1d
    const/high16 v10, 0x40000000    # 2.0f

    :cond_1e
    :goto_12
    move-object/from16 v0, v54

    goto :goto_13

    :cond_1f
    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v44, :cond_1e

    div-float v0, v27, v10

    add-float v4, v31, v0

    .line 618
    invoke-interface {v11, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v5

    move-object v0, v6

    move-object v1, v9

    move-object v2, v7

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    goto :goto_12

    .line 622
    :goto_13
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-interface {v11}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawIconsEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 624
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v7, v53

    .line 626
    iget v0, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v0, v56, v0

    mul-float v0, v0, v52

    iget v2, v12, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v0, v2

    .line 627
    iget v2, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v56, v2

    mul-float v2, v2, v50

    iget v3, v12, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v2, v3

    .line 628
    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, v3

    float-to-int v3, v0

    float-to-int v4, v2

    .line 635
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 636
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move-object v0, v9

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v13

    .line 630
    invoke-static/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_14

    :cond_20
    move-object/from16 v7, v53

    :goto_14
    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v4, v7

    move-object v2, v11

    move-object/from16 v5, v24

    move/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v3, v34

    move/from16 v7, v37

    move-object/from16 v10, v38

    move-object/from16 v11, v41

    move/from16 v13, v43

    move/from16 v14, v45

    move/from16 v9, v49

    move-object/from16 v30, v12

    move-object/from16 v24, v15

    move/from16 v12, v42

    move/from16 v15, v56

    goto/16 :goto_2

    :cond_21
    move-object v7, v4

    move/from16 v49, v9

    move-object/from16 v38, v10

    move-object/from16 v41, v11

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v45, v14

    move/from16 v56, v15

    move-object/from16 v15, v24

    move-object/from16 v12, v30

    move-object/from16 v9, p1

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v19, 0x42c80000    # 100.0f

    .line 642
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    move/from16 v0, v25

    :goto_15
    add-int/lit8 v3, v26, 0x1

    move-object v7, v9

    move-object v8, v12

    move-object v5, v15

    move-object/from16 v4, v28

    move-object/from16 v10, v38

    move-object/from16 v11, v41

    move/from16 v12, v42

    move/from16 v13, v43

    move/from16 v14, v45

    move/from16 v9, v49

    move/from16 v15, v56

    goto/16 :goto_0

    :cond_22
    move-object v9, v7

    move-object v12, v8

    .line 644
    invoke-static {v12}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getPaintCenterText()Landroid/text/TextPaint;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPaintHole()Landroid/graphics/Paint;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final initBuffers()V
    .locals 0

    return-void
.end method

.method public final releaseBitmap()V
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1049
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1057
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
