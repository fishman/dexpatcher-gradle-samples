.class public Lcom/github/mikephil/charting/data/BarData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "BarData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mBarWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 18
    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return-void
.end method


# virtual methods
.method public final getBarWidth()F
    .locals 0

    .line 43
    iget p0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return p0
.end method
