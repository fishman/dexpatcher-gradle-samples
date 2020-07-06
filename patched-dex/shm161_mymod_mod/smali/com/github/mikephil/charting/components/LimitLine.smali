.class public final Lcom/github/mikephil/charting/components/LimitLine;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "LimitLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    }
.end annotation


# instance fields
.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mLabel:Ljava/lang/String;

.field private mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

.field private mLimit:F

.field private mLineColor:I

.field private mLineWidth:F

.field private mTextStyle:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    const/16 v0, 0x5b

    const/16 v1, 0xed

    .line 27
    invoke-static {v1, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    .line 30
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 39
    sget-object v0, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    .line 53
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    return-void
.end method


# virtual methods
.method public final enableDashedLine(FFF)V
    .locals 0

    .line 128
    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public final getDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLabelPosition:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    return-object p0
.end method

.method public final getLimit()F
    .locals 0

    .line 74
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLimit:F

    return p0
.end method

.method public final getLineColor()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    return p0
.end method

.method public final getLineWidth()F
    .locals 0

    .line 98
    iget p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    return p0
.end method

.method public final getTextStyle()Landroid/graphics/Paint$Style;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/github/mikephil/charting/components/LimitLine;->mTextStyle:Landroid/graphics/Paint$Style;

    return-object p0
.end method

.method public final setLineColor(I)V
    .locals 0

    const p1, -0x4c666667

    .line 108
    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineColor:I

    return-void
.end method

.method public final setLineWidth(F)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 89
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/LimitLine;->mLineWidth:F

    return-void
.end method
