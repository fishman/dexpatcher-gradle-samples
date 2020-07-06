.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field private mYVals:[F


# virtual methods
.method public final getNegativeSum()F
    .locals 0

    .line 239
    iget p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return p0
.end method

.method public final getPositiveSum()F
    .locals 0

    .line 230
    iget p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return p0
.end method

.method public final getRanges()[Lcom/github/mikephil/charting/highlight/Range;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    return-object p0
.end method

.method public final getY()F
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p0

    return p0
.end method

.method public final getYVals()[F
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    return-object p0
.end method

.method public final isStacked()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
