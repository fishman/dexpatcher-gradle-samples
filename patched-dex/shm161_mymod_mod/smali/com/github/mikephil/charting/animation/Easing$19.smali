.class final Lcom/github/mikephil/charting/animation/Easing$19;
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

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p0, -0x41000000    # -0.5f

    mul-float/2addr p1, p1

    sub-float p1, v0, p1

    float-to-double v1, p1

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    sub-float p0, v0, p1

    float-to-double p0, p0

    .line 186
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr p0, v0

    mul-float/2addr p0, v1

    return p0
.end method
