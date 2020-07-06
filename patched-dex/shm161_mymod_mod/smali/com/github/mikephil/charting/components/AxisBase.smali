.class public abstract Lcom/github/mikephil/charting/components/AxisBase;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "AxisBase.java"


# instance fields
.field private mAxisLineColor:I

.field private mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mAxisLineWidth:F

.field public mAxisMaximum:F

.field public mAxisMinimum:F

.field public mAxisRange:F

.field protected mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field protected mCenterAxisLabels:Z

.field public mCenteredEntries:[F

.field protected mCustomAxisMax:Z

.field protected mCustomAxisMin:Z

.field public mDecimals:I

.field protected mDrawAxisLine:Z

.field protected mDrawGridLines:Z

.field protected mDrawGridLinesBehindData:Z

.field protected mDrawLabels:Z

.field protected mDrawLimitLineBehindData:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mForceLabels:Z

.field protected mGranularity:F

.field protected mGranularityEnabled:Z

.field private mGridColor:I

.field private mGridDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mGridLineWidth:F

.field private mLabelCount:I

.field protected mLimitLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpaceMax:F

.field protected mSpaceMin:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const v0, -0x777778

    .line 26
    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    .line 30
    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    .line 32
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    const/4 v0, 0x0

    .line 37
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 42
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    const/4 v2, 0x6

    .line 57
    iput v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    .line 62
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    .line 70
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    .line 85
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    .line 90
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    .line 92
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    const/4 v2, 0x0

    .line 97
    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 102
    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 112
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    .line 117
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    .line 127
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    .line 132
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    .line 137
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    .line 142
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 147
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 152
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 158
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mTextSize:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 159
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mXOffset:F

    .line 160
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mYOffset:F

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x6

    if-le p0, p1, :cond_0

    const-string p0, "MPAndroiChart"

    const-string p1, "Warning! You have more than 6 LimitLines on your axis, do you really want that?"

    .line 406
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public calculate(FF)V
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    sub-float/2addr p1, v0

    .line 733
    :goto_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    .line 736
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    .line 744
    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 745
    iput p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr p2, p1

    .line 748
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final getAxisLineColor()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    return p0
.end method

.method public final getAxisLineDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 623
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public final getAxisLineWidth()F
    .locals 0

    .line 249
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    return p0
.end method

.method public final getFormattedLabel(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget p1, v1, p1

    invoke-virtual {v0, p1, p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getAxisLabel(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final getGranularity()F
    .locals 0

    .line 382
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    return p0
.end method

.method public final getGridColor()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    return p0
.end method

.method public final getGridDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public final getGridLineWidth()F
    .locals 0

    .line 269
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    return p0
.end method

.method public final getLabelCount()I
    .locals 0

    .line 358
    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    return p0
.end method

.method public final getLimitLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-object p0
.end method

.method public final getLongestLabel()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 473
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 474
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    instance-of v0, v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    check-cast v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    .line 517
    invoke-virtual {v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->getDecimalDigits()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    if-eq v0, v1, :cond_1

    .line 518
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-object p0
.end method

.method public final isCenterAxisLabelsEnabled()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDrawAxisLineEnabled()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return p0
.end method

.method public final isDrawGridLinesBehindDataEnabled()Z
    .locals 0

    .line 460
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    return p0
.end method

.method public final isDrawGridLinesEnabled()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return p0
.end method

.method public final isDrawLabelsEnabled()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return p0
.end method

.method public final isDrawLimitLinesBehindDataEnabled()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    return p0
.end method

.method public final isForceLabelsEnabled()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return p0
.end method

.method public final isGranularityEnabled()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return p0
.end method

.method public final removeAllLimitLines()V
    .locals 0

    .line 425
    iget-object p0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final setAxisMaximum(F)V
    .locals 1

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    .line 708
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 709
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final setAxisMinimum(F)V
    .locals 1

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    .line 685
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 686
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public final setDrawAxisLine(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return-void
.end method

.method public final setDrawGridLines(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return-void
.end method

.method public final setDrawLabels(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return-void
.end method

.method public final setGranularity(F)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 392
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public final setGranularityEnabled(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public final setSpaceMax(F)V
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 780
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    return-void
.end method

.method public final setSpaceMin(F)V
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 764
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    return-void
.end method

.method public final setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 503
    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    return-void
.end method
