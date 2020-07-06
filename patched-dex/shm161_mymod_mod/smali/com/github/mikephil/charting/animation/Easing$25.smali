.class final Lcom/github/mikephil/charting/animation/Easing$25;
.super Ljava/lang/Object;
.source "Easing.java"

# interfaces
.implements Lcom/github/mikephil/charting/animation/Easing$EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const v1, 0x402612ff

    const v2, 0x406612ff

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    mul-float p0, p1, p1

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr p0, p1

    mul-float/2addr p0, v3

    return p0

    :cond_0
    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    mul-float/2addr v0, v3

    return v0
.end method
