.class public final Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;
.super Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;
.source "AnimatedZoomJob.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool<",
            "Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mOnAnimationUpdateMatrixBuffer:Landroid/graphics/Matrix;

.field protected xAxisRange:F

.field protected yAxis:Lcom/github/mikephil/charting/components/YAxis;

.field protected zoomCenterX:F

.field protected zoomCenterY:F

.field protected zoomOriginX:F

.field protected zoomOriginY:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 24
    new-instance v14, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v0, v14

    move-object/from16 v17, v14

    move-wide v14, v15

    invoke-direct/range {v0 .. v15}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)V

    const/16 v0, 0x8

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    return-void
.end method

.method private constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p8, 0x0

    const-wide/16 p9, 0x0

    move-object p1, p0

    .line 55
    invoke-direct/range {p1 .. p10}, Lcom/github/mikephil/charting/jobs/AnimatedViewPortJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)V

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mOnAnimationUpdateMatrixBuffer:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomCenterX:F

    .line 58
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomCenterY:F

    .line 59
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginX:F

    .line 60
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginY:F

    .line 61
    iget-object p2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 63
    iput p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xAxisRange:F

    return-void
.end method

.method public static getInstance$61fb0eb7(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFJ)Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;
    .locals 1

    .line 28
    sget-object v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    .line 29
    iput-object p0, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 30
    iput p5, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xValue:F

    .line 31
    iput p6, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yValue:F

    .line 32
    iput-object p2, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 33
    iput-object p1, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->view:Landroid/view/View;

    .line 34
    iput p7, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xOrigin:F

    .line 35
    iput p8, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yOrigin:F

    .line 36
    iput-object p3, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yAxis:Lcom/github/mikephil/charting/components/YAxis;

    .line 37
    iput p4, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xAxisRange:F

    .line 38
    invoke-virtual {v0}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->resetAnimator()V

    .line 39
    iget-object p0, v0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p9, p10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method protected final instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 17

    .line 117
    new-instance v16, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)V

    return-object v16
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->view:Landroid/view/View;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 92
    iget-object p0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 70
    iget p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xOrigin:F

    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xValue:F

    iget v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xOrigin:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->phase:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    .line 71
    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yOrigin:F

    iget v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yValue:F

    iget v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yOrigin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->phase:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mOnAnimationUpdateMatrixBuffer:Landroid/graphics/Matrix;

    .line 74
    iget-object v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setZoom(FFLandroid/graphics/Matrix;)V

    .line 75
    iget-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 77
    iget-object p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->yAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v0

    div-float/2addr p1, v0

    .line 78
    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->xAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v3

    div-float/2addr v0, v3

    .line 80
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pts:[F

    iget v4, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginX:F

    iget v5, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomCenterX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginX:F

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->phase:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pts:[F

    iget v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginY:F

    iget v3, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomCenterY:F

    div-float/2addr p1, v6

    add-float/2addr v3, p1

    iget p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->zoomOriginY:F

    sub-float/2addr v3, p1

    iget p1, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->phase:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    const/4 p1, 0x1

    aput v2, v0, p1

    .line 83
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pts:[F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->pts:[F

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->translate([FLandroid/graphics/Matrix;)V

    .line 86
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p0, p0, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    return-void
.end method

.method public final recycleSelf()V
    .locals 0

    return-void
.end method
