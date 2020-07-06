.class public final Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
.super Ljava/lang/Object;
.source "SpscLinkedArrayQueue.java"

# interfaces
.implements Lio/reactivex/internal/fuseable/SimplePlainQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final HAS_NEXT:Ljava/lang/Object;

.field static final MAX_LOOK_AHEAD_STEP:I


# instance fields
.field consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field final consumerMask:I

.field producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field producerLookAhead:J

.field producerLookAheadStep:I

.field final producerMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x8

    .line 49
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 52
    iput-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 53
    iput v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    .line 1213
    div-int/lit8 p1, p1, 0x4

    sget v2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->MAX_LOOK_AHEAD_STEP:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    .line 55
    iput-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    iput v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 57
    iput-wide v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    return-void
.end method

.method private soConsumerIndex(J)V
    .locals 0

    .line 237
    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private soProducerIndex(J)V
    .locals 0

    .line 233
    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    return-void
.end method

.method private writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;TT;JI)Z"
        }
    .end annotation

    .line 7247
    invoke-virtual {p1, p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    .line 96
    invoke-direct {p0, p3, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final isEmpty()Z
    .locals 4

    .line 14217
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 14221
    iget-object p0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 69
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null is not a valid element"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1225
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 74
    iget v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerMask:I

    long-to-int v2, v3

    and-int v5, v2, v0

    .line 76
    iget-wide v6, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    cmp-long v2, v3, v6

    if-gez v2, :cond_1

    move-object v0, p0

    move-object v2, p1

    .line 77
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p0

    return p0

    .line 79
    :cond_1
    iget v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAheadStep:I

    int-to-long v6, v2

    add-long/2addr v6, v3

    long-to-int v2, v6

    and-int/2addr v2, v0

    .line 2251
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v8, 0x1

    if-nez v2, :cond_2

    sub-long/2addr v6, v8

    .line 83
    iput-wide v6, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    move-object v0, p0

    move-object v2, p1

    .line 84
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p0

    return p0

    :cond_2
    add-long v6, v3, v8

    long-to-int v2, v6

    and-int/2addr v2, v0

    .line 3251
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, p0

    move-object v2, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->writeToQueue(Ljava/util/concurrent/atomic/AtomicReferenceArray;Ljava/lang/Object;JI)Z

    move-result p0

    return p0

    :cond_3
    int-to-long v10, v0

    .line 4102
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    .line 4103
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 4104
    iput-object v2, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-long/2addr v3, v10

    sub-long/2addr v3, v8

    .line 4105
    iput-wide v3, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->producerLookAhead:J

    .line 4247
    invoke-virtual {v2, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 5114
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 5247
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 4108
    sget-object p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    .line 6247
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 4110
    invoke-direct {p0, v6, v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soProducerIndex(J)V

    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8229
    iget-object v1, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerIndex:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 136
    iget v3, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerMask:I

    long-to-int v4, v1

    and-int/2addr v4, v3

    .line 8251
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 139
    sget-object v6, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->HAS_NEXT:Ljava/lang/Object;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    .line 9247
    invoke-virtual {v0, v4, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v8

    .line 142
    invoke-direct {p0, v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    return-object v5

    :cond_1
    if-eqz v6, :cond_3

    add-int/2addr v3, v7

    .line 10251
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 10120
    check-cast v5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 11247
    invoke-virtual {v0, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 12153
    iput-object v5, p0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->consumerBuffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 12251
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13247
    invoke-virtual {v5, v4, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    add-long/2addr v1, v8

    .line 12158
    invoke-direct {p0, v1, v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->soConsumerIndex(J)V

    :cond_2
    return-object v0

    :cond_3
    return-object v10
.end method
