.class public final Lcom/github/mikephil/charting/data/LineDataSet;
.super Lcom/github/mikephil/charting/data/LineRadarDataSet;
.source "LineDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineRadarDataSet<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;"
    }
.end annotation


# instance fields
.field private mCircleColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleHoleColor:I

.field private mCircleHoleRadius:F

.field private mCircleRadius:F

.field private mCubicIntensity:F

.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDrawCircleHole:Z

.field private mDrawCircles:Z

.field private mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

.field private mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleColor:I

    const/high16 p2, 0x41000000    # 8.0f

    .line 38
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    const/high16 p2, 0x40800000    # 4.0f

    .line 43
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleRadius:F

    const p2, 0x3e4ccccd    # 0.2f

    .line 48
    iput p2, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    .line 53
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 58
    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;

    invoke-direct {p1}, Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    .line 65
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    .line 74
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 82
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getCircleColor(I)I
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getCircleColorCount()I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getCircleHoleColor()I
    .locals 0

    .line 375
    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleColor:I

    return p0
.end method

.method public final getCircleHoleRadius()F
    .locals 0

    .line 188
    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleRadius:F

    return p0
.end method

.method public final getCircleRadius()F
    .locals 0

    .line 168
    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    return p0
.end method

.method public final getCubicIntensity()F
    .locals 0

    .line 147
    iget p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCubicIntensity:F

    return p0
.end method

.method public final getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public final getFillFormatter()Lcom/github/mikephil/charting/formatter/IFillFormatter;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mFillFormatter:Lcom/github/mikephil/charting/formatter/IFillFormatter;

    return-object p0
.end method

.method public final getMode()Lcom/github/mikephil/charting/data/LineDataSet$Mode;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mMode:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    return-object p0
.end method

.method public final isDashedLineEnabled()Z
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isDrawCircleHoleEnabled()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    return p0
.end method

.method public final isDrawCirclesEnabled()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    return p0
.end method

.method public final setCircleColor(I)V
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 351
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCircleHoleRadius(F)V
    .locals 0

    const/high16 p1, 0x40600000    # 3.5f

    .line 180
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleHoleRadius:F

    return-void
.end method

.method public final setCircleRadius(F)V
    .locals 0

    const/high16 p1, 0x40a00000    # 5.0f

    .line 160
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mCircleRadius:F

    return-void
.end method

.method public final setDrawCircleHole(Z)V
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircleHole:Z

    return-void
.end method
