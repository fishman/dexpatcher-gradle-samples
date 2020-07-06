.class public final Lio/reactivex/internal/util/OpenHashSet;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


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
.field keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field mask:I

.field maxSize:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    .line 37
    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f400000    # 0.75f

    .line 50
    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    const/16 p2, 0x10

    .line 51
    invoke-static {p2}, Lio/reactivex/internal/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    .line 52
    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 53
    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    .line 54
    new-array p1, p2, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-void
.end method

.method private static mix(I)I
    .locals 1

    const v0, -0x61c88647

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private removeEntry(I[Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .line 108
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    :goto_0
    add-int/lit8 p0, p1, 0x1

    and-int/2addr p0, p3

    .line 117
    :goto_1
    aget-object v0, p2, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 119
    aput-object p0, p2, p1

    return v1

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, p3

    if-gt p1, p0, :cond_1

    if-ge p1, v2, :cond_2

    if-le v2, p0, :cond_3

    goto :goto_2

    :cond_1
    if-lt p1, v2, :cond_3

    if-gt v2, p0, :cond_2

    goto :goto_3

    .line 130
    :cond_2
    :goto_2
    aput-object v0, p2, p1

    move p1, p0

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 p0, p0, 0x1

    and-int/2addr p0, p3

    goto :goto_1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 59
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 62
    aget-object v3, v0, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    return v5

    :cond_0
    add-int/2addr v2, v4

    and-int/2addr v2, v1

    .line 69
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    .line 78
    :cond_1
    aput-object p1, v0, v2

    .line 79
    iget p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    add-int/2addr p1, v4

    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    if-lt p1, v0, :cond_6

    .line 1136
    iget-object p1, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 1137
    array-length v0, p1

    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v1, -0x1

    .line 1141
    new-array v3, v1, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 1143
    iget v5, p0, Lio/reactivex/internal/util/OpenHashSet;->size:I

    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_5

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1144
    aget-object v5, p1, v0

    if-eqz v5, :cond_2

    .line 1145
    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v5

    and-int/2addr v5, v2

    .line 1146
    aget-object v7, v3, v5

    if-eqz v7, :cond_4

    :cond_3
    add-int/2addr v5, v4

    and-int/2addr v5, v2

    .line 1149
    aget-object v7, v3, v5

    if-nez v7, :cond_3

    .line 1154
    :cond_4
    aget-object v7, p1, v0

    aput-object v7, v3, v5

    move v5, v6

    goto :goto_0

    .line 1157
    :cond_5
    iput v2, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    int-to-float p1, v1

    .line 1158
    iget v0, p0, Lio/reactivex/internal/util/OpenHashSet;->loadFactor:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lio/reactivex/internal/util/OpenHashSet;->maxSize:I

    .line 1159
    iput-object v3, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    :cond_6
    return v4
.end method

.method public final keys()[Ljava/lang/Object;
    .locals 0

    .line 168
    iget-object p0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/util/OpenHashSet;->keys:[Ljava/lang/Object;

    .line 86
    iget v1, p0, Lio/reactivex/internal/util/OpenHashSet;->mask:I

    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/OpenHashSet;->mix(I)I

    move-result v2

    and-int/2addr v2, v1

    .line 88
    aget-object v3, v0, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 92
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-direct {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v1

    .line 97
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return v4

    .line 101
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-direct {p0, v2, v0, v1}, Lio/reactivex/internal/util/OpenHashSet;->removeEntry(I[Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method
