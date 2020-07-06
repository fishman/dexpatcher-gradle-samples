.class public abstract Lkotlin/random/Random;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Companion;,
        Lkotlin/random/Random$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n*L\n1#1,351:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/random/Random$Companion;

.field public static final Default:Lkotlin/random/Random$Default;

.field private static final defaultRandom:Lkotlin/random/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/Random$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/Random$Default;-><init>(B)V

    sput-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 242
    sget-object v0, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-static {}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v0

    sput-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    .line 268
    sget-object v0, Lkotlin/random/Random$Companion;->INSTANCE:Lkotlin/random/Random$Companion;

    sput-object v0, Lkotlin/random/Random;->Companion:Lkotlin/random/Random$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefaultRandom$cp()Lkotlin/random/Random;
    .locals 1

    .line 20
    sget-object v0, Lkotlin/random/Random;->defaultRandom:Lkotlin/random/Random;

    return-object v0
.end method


# virtual methods
.method public abstract nextBits(I)I
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBits(I)I

    move-result p0

    return p0
.end method

.method public nextInt(II)I
    .locals 4

    const/4 v0, 0x1

    if-le p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/random/RandomKt;->boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    sub-int v1, p2, p1

    if-gtz v1, :cond_4

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    if-le p1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-le p2, v0, :cond_2

    return v0

    :cond_4
    :goto_2
    neg-int p2, v1

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_5

    .line 2032
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x1f

    .line 62
    invoke-virtual {p0, p2}, Lkotlin/random/Random;->nextBits(I)I

    move-result p0

    goto :goto_3

    .line 66
    :cond_5
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p2

    ushr-int/2addr p2, v0

    .line 67
    rem-int v2, p2, v1

    sub-int/2addr p2, v2

    add-int/lit8 v3, v1, -0x1

    add-int/2addr p2, v3

    if-ltz p2, :cond_5

    move p0, v2

    :goto_3
    add-int/2addr p1, p0

    return p1
.end method

.method public nextLong()J
    .locals 4

    .line 85
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(JJ)J
    .locals 10

    cmp-long v0, p3, p1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2347
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/random/RandomKt;->boundsErrorMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    sub-long v2, p3, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    neg-long p3, v2

    and-long/2addr p3, v2

    cmp-long p3, p3, v2

    if-nez p3, :cond_4

    long-to-int p3, v2

    const/16 p4, 0x20

    ushr-long/2addr v2, p4

    long-to-int v0, v2

    const-wide v2, 0xffffffffL

    if-eqz p3, :cond_2

    .line 3032
    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1f

    .line 117
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    move-result p0

    int-to-long p3, p0

    and-long/2addr p3, v2

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 121
    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p0

    int-to-long p3, p0

    and-long/2addr p3, v2

    goto :goto_1

    .line 4032
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1f

    .line 124
    invoke-virtual {p0, p3}, Lkotlin/random/Random;->nextBits(I)I

    move-result p3

    int-to-long v0, p3

    shl-long p3, v0, p4

    invoke-virtual {p0}, Lkotlin/random/Random;->nextInt()I

    move-result p0

    int-to-long v0, p0

    add-long/2addr p3, v0

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide p3

    ushr-long/2addr p3, v1

    .line 131
    rem-long v6, p3, v2

    sub-long/2addr p3, v6

    const-wide/16 v8, 0x1

    sub-long v8, v2, v8

    add-long/2addr p3, v8

    cmp-long p3, p3, v4

    if-ltz p3, :cond_4

    move-wide p3, v6

    :goto_1
    add-long/2addr p1, p3

    return-wide p1

    .line 138
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_6

    goto :goto_2

    :cond_6
    cmp-long v2, p3, v0

    if-lez v2, :cond_5

    return-wide v0
.end method
