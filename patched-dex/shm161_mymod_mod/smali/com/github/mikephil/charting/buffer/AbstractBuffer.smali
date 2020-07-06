.class public abstract Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final buffer:[F

.field protected index:I

.field protected mFrom:I

.field protected mTo:I

.field protected phaseX:F

.field protected phaseY:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    iput v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseX:F

    .line 25
    iput v1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseY:F

    .line 28
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mFrom:I

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->mTo:I

    .line 39
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    .line 40
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->buffer:[F

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->index:I

    return-void
.end method

.method public final setPhases(FF)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseX:F

    .line 81
    iput p2, p0, Lcom/github/mikephil/charting/buffer/AbstractBuffer;->phaseY:F

    return-void
.end method
