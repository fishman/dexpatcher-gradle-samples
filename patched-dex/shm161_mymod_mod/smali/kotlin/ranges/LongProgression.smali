.class public Lkotlin/ranges/LongProgression;
.super Ljava/lang/Object;
.source "Progressions.kt"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/LongProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/ranges/LongProgression$Companion;


# instance fields
.field private final first:J

.field private final last:J

.field private final step:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ranges/LongProgression$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/LongProgression$Companion;-><init>(B)V

    sput-object v0, Lkotlin/ranges/LongProgression;->Companion:Lkotlin/ranges/LongProgression$Companion;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 6

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->first:J

    const-wide/16 v4, 0x1

    move-wide v0, p1

    move-wide v2, p3

    .line 149
    invoke-static/range {v0 .. v5}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->last:J

    const-wide/16 p1, 0x1

    .line 154
    iput-wide p1, p0, Lkotlin/ranges/LongProgression;->step:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 162
    instance-of v0, p1, Lkotlin/ranges/LongProgression;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/LongProgression;

    invoke-virtual {v0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    check-cast p1, Lkotlin/ranges/LongProgression;

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->first:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v2, p1, Lkotlin/ranges/LongProgression;->last:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    iget-wide p0, p1, Lkotlin/ranges/LongProgression;->step:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getFirst()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    return-wide v0
.end method

.method public final getLast()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->last:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .line 166
    invoke-virtual {p0}, Lkotlin/ranges/LongProgression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->first:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    const-wide/16 v2, 0x1f

    mul-long/2addr v0, v2

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v7, p0, Lkotlin/ranges/LongProgression;->last:J

    ushr-long/2addr v7, v4

    xor-long/2addr v5, v7

    add-long/2addr v0, v5

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->step:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->step:J

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public isEmpty()Z
    .locals 7

    .line 159
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v3, v5

    if-gez p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 8

    .line 1156
    new-instance v7, Lkotlin/ranges/LongProgressionIterator;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v3, p0, Lkotlin/ranges/LongProgression;->last:J

    iget-wide v5, p0, Lkotlin/ranges/LongProgression;->step:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/ranges/LongProgressionIterator;-><init>(JJJ)V

    check-cast v7, Lkotlin/collections/LongIterator;

    .line 129
    check-cast v7, Ljava/util/Iterator;

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 168
    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->step:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->step:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " downTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->step:J

    neg-long v1, v1

    goto :goto_0
.end method
