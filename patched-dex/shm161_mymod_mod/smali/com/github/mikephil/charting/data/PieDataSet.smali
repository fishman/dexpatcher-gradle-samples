.class public final Lcom/github/mikephil/charting/data/PieDataSet;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "PieDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/DataSet<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;"
    }
.end annotation


# instance fields
.field private mAutomaticallyDisableSliceSpacing:Z

.field private mShift:F

.field private mSliceSpace:F

.field private mUsingSliceColorAsValueLineColor:Z

.field private mValueLineColor:I

.field private mValueLinePart1Length:F

.field private mValueLinePart1OffsetPercentage:F

.field private mValueLinePart2Length:F

.field private mValueLineVariableLength:Z

.field private mValueLineWidth:F

.field private mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field private mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;


# virtual methods
.method protected final bridge synthetic calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    :cond_0
    return-void
.end method

.method public final getSelectionShift()F
    .locals 0

    .line 116
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    return p0
.end method

.method public final getSliceSpace()F
    .locals 0

    .line 80
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    return p0
.end method

.method public final getValueLineColor()I
    .locals 0

    .line 154
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineColor:I

    return p0
.end method

.method public final getValueLinePart1Length()F
    .locals 0

    .line 190
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1Length:F

    return p0
.end method

.method public final getValueLinePart1OffsetPercentage()F
    .locals 0

    .line 178
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart1OffsetPercentage:F

    return p0
.end method

.method public final getValueLinePart2Length()F
    .locals 0

    .line 202
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLinePart2Length:F

    return p0
.end method

.method public final getValueLineWidth()F
    .locals 0

    .line 166
    iget p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineWidth:F

    return p0
.end method

.method public final getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mXValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object p0
.end method

.method public final getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mYValuePosition:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object p0
.end method

.method public final isAutomaticallyDisableSliceSpacingEnabled()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mAutomaticallyDisableSliceSpacing:Z

    return p0
.end method

.method public final isUsingSliceColorAsValueLineColor()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mUsingSliceColorAsValueLineColor:Z

    return p0
.end method

.method public final isValueLineVariableLength()Z
    .locals 0

    .line 214
    iget-boolean p0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mValueLineVariableLength:Z

    return p0
.end method
