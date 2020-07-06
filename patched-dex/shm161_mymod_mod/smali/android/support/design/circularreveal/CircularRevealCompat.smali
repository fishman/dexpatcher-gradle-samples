.class public final Landroid/support/design/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 6

    .line 55
    sget-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 56
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_0
    iget v1, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 70
    check-cast p0, Landroid/view/View;

    float-to-int p1, p1

    float-to-int p2, p2

    .line 71
    invoke-static {p0, p1, p2, v1, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    .line 73
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x2

    .line 74
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v0, p2, v5

    aput-object p0, p2, v2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 118
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealCompat$1;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
