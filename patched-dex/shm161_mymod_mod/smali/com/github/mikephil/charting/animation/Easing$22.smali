.class final Lcom/github/mikephil/charting/animation/Easing$22;
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

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 8

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    cmpl-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    return v0

    :cond_1
    const p0, 0x3d92ad5c

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p0

    cmpg-float p0, p1, v0

    const v2, 0x400e38e4

    const v3, 0x40c90fdb

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-gez p0, :cond_2

    const/high16 p0, -0x41000000    # -0.5f

    const/high16 v6, 0x41200000    # 10.0f

    sub-float/2addr p1, v0

    mul-float/2addr v6, p1

    float-to-double v6, v6

    .line 239
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-double v0, p1

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr v4, p1

    mul-float/2addr v4, p0

    return v4

    :cond_2
    const/high16 p0, 0x3f000000    # 0.5f

    const/high16 v6, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v0

    mul-float/2addr v6, p1

    float-to-double v6, v6

    .line 243
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, p0

    mul-float/2addr p1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-double p0, p1

    .line 244
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    mul-float/2addr v4, p0

    add-float/2addr v4, v0

    return v4
.end method
