.class public abstract Lcom/github/mikephil/charting/data/DataSet;
.super Lcom/github/mikephil/charting/data/BaseDataSet;
.source "DataSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/DataSet$Rounding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/BaseDataSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mXMax:F

.field protected mXMin:F

.field protected mYMax:F

.field protected mYMin:F


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

    .line 52
    invoke-direct {p0, p2}, Lcom/github/mikephil/charting/data/BaseDataSet;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    const p2, -0x800001

    .line 25
    iput p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 35
    iput p2, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMax:F

    .line 40
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMin:F

    .line 53
    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    .line 55
    iget-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax()V

    return-void
.end method

.method private calcMinMax()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, -0x800001

    .line 67
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 68
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 69
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMax:F

    .line 70
    iput v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMin:F

    .line 72
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 73
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I
    .locals 10

    .line 300
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    .line 304
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_0
    if-ge v0, v2, :cond_5

    add-int v3, v0, v2

    .line 308
    div-int/lit8 v3, v3, 0x2

    .line 310
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    sub-float/2addr v4, p1

    .line 311
    iget-object v5, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    sub-float/2addr v5, p1

    .line 312
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_2
    cmpg-float v5, v7, v5

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    float-to-double v4, v4

    const-wide/16 v7, 0x0

    cmpl-double v9, v4, v7

    if-ltz v9, :cond_4

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_4
    cmpg-double v3, v4, v7

    if-gez v3, :cond_1

    goto :goto_1

    :cond_5
    if-eq v2, v1, :cond_b

    .line 338
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    .line 339
    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v1, :cond_6

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    .line 341
    iget-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 344
    :cond_6
    sget-object v1, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    if-ne p3, v1, :cond_7

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    if-lez v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 352
    :cond_7
    :goto_3
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_4
    if-lez v2, :cond_8

    .line 353
    iget-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    add-int/lit8 p3, v2, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 356
    :cond_8
    iget-object p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1

    move p3, p1

    :goto_5
    move p1, v2

    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 361
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 364
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 366
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_a

    .line 369
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v3, p3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    move p3, p2

    goto :goto_5

    :cond_a
    move v2, p1

    :cond_b
    return v2

    :cond_c
    :goto_6
    return v1
.end method


# virtual methods
.method protected calcMinMax(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1113
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1114
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMin:F

    .line 1116
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1117
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMax:F

    .line 108
    :cond_2
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    return-void
.end method

.method public final calcMinMaxY(FF)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, -0x800001

    .line 83
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 84
    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 86
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {p0, p1, v1, v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result p1

    .line 87
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-direct {p0, p2, v1, v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result p2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/DataSet;->calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method protected final calcMinMaxY(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    :cond_1
    return-void
.end method

.method public final getEntriesForXValue(F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v3, v1, v2

    .line 391
    div-int/lit8 v3, v3, 0x2

    .line 392
    iget-object v4, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/Entry;

    .line 395
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    cmpl-float v5, p1, v5

    if-nez v5, :cond_1

    :goto_1
    if-lez v3, :cond_0

    .line 396
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_3

    .line 403
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 404
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    cmpl-float v4, v4, p1

    if-nez v4, :cond_3

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 413
    :cond_1
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getEntryCount()I
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/Entry;

    return-object p0
.end method

.method public final getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/mikephil/charting/data/DataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p0

    return-object p0
.end method

.method public final getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")TT;"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/DataSet;->getEntryIndex(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 283
    iget-object p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/data/Entry;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getXMax()F
    .locals 0

    .line 208
    iget p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMax:F

    return p0
.end method

.method public final getXMin()F
    .locals 0

    .line 203
    iget p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mXMin:F

    return p0
.end method

.method public final getYMax()F
    .locals 0

    .line 198
    iget p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMax:F

    return p0
.end method

.method public final getYMin()F
    .locals 0

    .line 193
    iget p0, p0, Lcom/github/mikephil/charting/data/DataSet;->mYMin:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1185
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DataSet, label: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/DataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", entries: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/mikephil/charting/data/DataSet;->mValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
