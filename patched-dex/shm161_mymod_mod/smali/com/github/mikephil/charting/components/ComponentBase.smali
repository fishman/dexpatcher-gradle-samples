.class public abstract Lcom/github/mikephil/charting/components/ComponentBase;
.super Ljava/lang/Object;
.source "ComponentBase.java"


# instance fields
.field protected mEnabled:Z

.field protected mTextColor:I

.field protected mTextSize:F

.field protected mTypeface:Landroid/graphics/Typeface;

.field protected mXOffset:F

.field protected mYOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 24
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    .line 29
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    const/high16 v0, 0x41200000    # 10.0f

    .line 39
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    const/high16 v0, -0x1000000

    .line 44
    iput v0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return-void
.end method


# virtual methods
.method public final getTextColor()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return p0
.end method

.method public final getTextSize()F
    .locals 0

    .line 131
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return p0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final getXOffset()F
    .locals 0

    .line 58
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mXOffset:F

    return p0
.end method

.method public final getYOffset()F
    .locals 0

    .line 77
    iget p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    return p0
.end method

.method public final setEnabled(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mEnabled:Z

    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    return-void
.end method

.method public final setTextSize(F)V
    .locals 2

    const/high16 v0, 0x41c00000    # 24.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextSize:F

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public final setYOffset(F)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    .line 88
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/ComponentBase;->mYOffset:F

    return-void
.end method
