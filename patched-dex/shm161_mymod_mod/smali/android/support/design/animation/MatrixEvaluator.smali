.class public Landroid/support/design/animation/MatrixEvaluator;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempEndValues:[F

.field private final tempMatrix:Landroid/graphics/Matrix;

.field private final tempStartValues:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 26
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/design/animation/MatrixEvaluator;->tempStartValues:[F

    .line 27
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempEndValues:[F

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .line 32
    iget-object v0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempStartValues:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 33
    iget-object p2, p0, Landroid/support/design/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x9

    if-ge p2, p3, :cond_0

    .line 35
    iget-object p3, p0, Landroid/support/design/animation/MatrixEvaluator;->tempEndValues:[F

    aget p3, p3, p2

    iget-object v0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempStartValues:[F

    aget v0, v0, p2

    sub-float/2addr p3, v0

    .line 36
    iget-object v0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempEndValues:[F

    iget-object v1, p0, Landroid/support/design/animation/MatrixEvaluator;->tempStartValues:[F

    aget v1, v1, p2

    mul-float/2addr p3, p1

    add-float/2addr v1, p3

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Landroid/support/design/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Landroid/support/design/animation/MatrixEvaluator;->tempEndValues:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 39
    iget-object p0, p0, Landroid/support/design/animation/MatrixEvaluator;->tempMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/animation/MatrixEvaluator;->evaluate(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
