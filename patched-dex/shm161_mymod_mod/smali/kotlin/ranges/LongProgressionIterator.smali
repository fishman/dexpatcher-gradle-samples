.class public final Lkotlin/ranges/LongProgressionIterator;
.super Lkotlin/collections/LongIterator;
.source "ProgressionIterators.kt"


# instance fields
.field private final finalElement:J

.field private hasNext:Z

.field private next:J

.field private final step:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lkotlin/collections/LongIterator;-><init>()V

    iput-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    .line 63
    iput-wide p3, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    .line 64
    iget-wide p5, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    const-wide/16 v0, 0x0

    cmp-long p5, p5, v0

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-lez p5, :cond_0

    cmp-long p3, p1, p3

    if-gtz p3, :cond_1

    :goto_0
    move p6, v0

    goto :goto_1

    :cond_0
    cmp-long p3, p1, p3

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p6, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    .line 65
    iget-boolean p3, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    iget-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    :goto_2
    iput-wide p1, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    return p0
.end method

.method public final nextLong()J
    .locals 6

    .line 70
    iget-wide v0, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    .line 71
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->finalElement:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 72
    iget-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    if-nez v2, :cond_0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_0
    const/4 v2, 0x0

    .line 73
    iput-boolean v2, p0, Lkotlin/ranges/LongProgressionIterator;->hasNext:Z

    goto :goto_0

    .line 76
    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    iget-wide v4, p0, Lkotlin/ranges/LongProgressionIterator;->step:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lkotlin/ranges/LongProgressionIterator;->next:J

    :goto_0
    return-wide v0
.end method
