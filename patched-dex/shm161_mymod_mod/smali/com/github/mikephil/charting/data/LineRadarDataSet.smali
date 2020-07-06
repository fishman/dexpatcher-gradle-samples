.class public abstract Lcom/github/mikephil/charting/data/LineRadarDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "LineRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet<",
        "TT;>;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineRadarDataSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mDrawFilled:Z

.field private mFillAlpha:I

.field private mFillColor:I

.field protected mFillDrawable:Landroid/graphics/drawable/Drawable;

.field private mLineWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    .line 23
    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    const/16 p1, 0x55

    .line 33
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    const/high16 p1, 0x40200000    # 2.5f

    .line 38
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    return-void
.end method


# virtual methods
.method public final getFillAlpha()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    return p0
.end method

.method public final getFillColor()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    return p0
.end method

.method public final getFillDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getLineWidth()F
    .locals 0

    .line 113
    iget p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    return p0
.end method

.method public final isDrawFilledEnabled()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mDrawFilled:Z

    return p0
.end method

.method public final setFillAlpha(I)V
    .locals 0

    const/16 p1, 0x41

    .line 93
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillAlpha:I

    return-void
.end method

.method public final setFillColor(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillColor:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mFillDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setLineWidth(F)V
    .locals 0

    const/4 p1, 0x0

    .line 108
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/LineRadarDataSet;->mLineWidth:F

    return-void
.end method
