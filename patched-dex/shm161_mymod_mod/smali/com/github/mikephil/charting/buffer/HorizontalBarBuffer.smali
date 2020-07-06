.class public final Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;
.super Lcom/github/mikephil/charting/buffer/BarBuffer;
.source "HorizontalBarBuffer.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public final feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 19

    move-object/from16 v0, p0

    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseX:F

    mul-float/2addr v1, v2

    .line 17
    iget v2, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mBarWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    :goto_0
    int-to-float v5, v4

    cmpg-float v5, v5, v1

    if-gez v5, :cond_f

    move-object/from16 v5, p1

    .line 21
    invoke-interface {v5, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v6, :cond_e

    .line 26
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v7

    .line 27
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v8

    .line 28
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v9

    .line 30
    iget-boolean v10, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mContainsStacks:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_7

    if-nez v9, :cond_0

    goto/16 :goto_6

    .line 54
    :cond_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v6

    neg-float v6, v6

    move v10, v6

    move v8, v11

    const/4 v6, 0x0

    .line 58
    :goto_1
    array-length v12, v9

    if-ge v6, v12, :cond_e

    .line 60
    aget v12, v9, v6

    cmpl-float v13, v12, v11

    if-ltz v13, :cond_1

    add-float/2addr v12, v8

    move v13, v10

    move v10, v12

    goto :goto_2

    .line 68
    :cond_1
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    add-float/2addr v13, v10

    .line 69
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v12, v10

    move/from16 v17, v10

    move v10, v8

    move/from16 v8, v17

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v18

    :goto_2
    sub-float v14, v7, v2

    add-float v15, v7, v2

    .line 75
    iget-boolean v3, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    if-eqz v3, :cond_3

    cmpl-float v3, v8, v12

    if-ltz v3, :cond_2

    move v3, v8

    goto :goto_3

    :cond_2
    move v3, v12

    :goto_3
    cmpg-float v16, v8, v12

    if-gtz v16, :cond_6

    move v12, v8

    goto :goto_5

    :cond_3
    cmpl-float v3, v8, v12

    if-ltz v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v12

    :goto_4
    cmpg-float v16, v8, v12

    if-gtz v16, :cond_5

    move v12, v8

    :cond_5
    move/from16 v17, v12

    move v12, v3

    move/from16 v3, v17

    .line 84
    :cond_6
    :goto_5
    iget v8, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    mul-float/2addr v12, v8

    .line 85
    iget v8, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    mul-float/2addr v3, v8

    .line 87
    invoke-virtual {v0, v3, v15, v12, v14}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    move v10, v13

    goto :goto_1

    :cond_7
    :goto_6
    sub-float v3, v7, v2

    add-float/2addr v7, v2

    .line 35
    iget-boolean v6, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    if-eqz v6, :cond_a

    cmpl-float v6, v8, v11

    if-ltz v6, :cond_8

    move v6, v8

    goto :goto_7

    :cond_8
    move v6, v11

    :goto_7
    cmpg-float v9, v8, v11

    if-gtz v9, :cond_9

    goto :goto_8

    :cond_9
    move v8, v11

    :goto_8
    move/from16 v17, v8

    move v8, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_a
    cmpl-float v6, v8, v11

    if-ltz v6, :cond_b

    move v6, v8

    goto :goto_9

    :cond_b
    move v6, v11

    :goto_9
    cmpg-float v9, v8, v11

    if-gtz v9, :cond_c

    goto :goto_a

    :cond_c
    move v8, v11

    :goto_a
    cmpl-float v9, v6, v11

    if-lez v9, :cond_d

    .line 45
    iget v9, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    mul-float/2addr v6, v9

    goto :goto_b

    .line 47
    :cond_d
    iget v9, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    mul-float/2addr v8, v9

    .line 49
    :goto_b
    invoke-virtual {v0, v8, v7, v6, v3}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 92
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->reset()V

    return-void
.end method
