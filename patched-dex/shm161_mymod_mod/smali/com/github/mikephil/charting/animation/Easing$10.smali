.class final Lcom/github/mikephil/charting/animation/Easing$10;
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

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 5

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    if-gez v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    float-to-double v3, p1

    .line 105
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p1, p0

    return p1

    :cond_0
    sub-float/2addr p1, p0

    const/high16 v0, -0x41000000    # -0.5f

    float-to-double v3, p1

    .line 108
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    return p1
.end method
