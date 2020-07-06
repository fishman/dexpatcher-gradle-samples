.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "CandleEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mClose:F

.field private mOpen:F

.field private mShadowHigh:F

.field private mShadowLow:F


# virtual methods
.method public final getClose()F
    .locals 0

    .line 174
    iget p0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    return p0
.end method

.method public final getHigh()F
    .locals 0

    .line 148
    iget p0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    return p0
.end method

.method public final getLow()F
    .locals 0

    .line 161
    iget p0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    return p0
.end method

.method public final getOpen()F
    .locals 0

    .line 187
    iget p0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    return p0
.end method

.method public final getY()F
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p0

    return p0
.end method
