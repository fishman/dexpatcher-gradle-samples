.class Lorg/simpleframework/xml/stream/Indenter;
.super Ljava/lang/Object;
.source "Indenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/Indenter$Cache;
    }
.end annotation


# instance fields
.field private cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

.field private count:I

.field private indent:I

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    const/16 v0, 0x10

    .line 76
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/stream/Indenter;-><init>(Lorg/simpleframework/xml/stream/Format;I)V

    return-void
.end method

.method private constructor <init>(Lorg/simpleframework/xml/stream/Format;I)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/Format;->getIndent()I

    move-result p1

    iput p1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    .line 90
    new-instance p1, Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/stream/Indenter$Cache;-><init>(I)V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    return-void
.end method

.method private create()Ljava/lang/String;
    .locals 4

    .line 173
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 175
    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 176
    aput-char v3, v0, v2

    .line 178
    :goto_0
    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    if-gt v1, v2, :cond_0

    const/16 v2, 0x20

    .line 179
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_1
    const-string p0, "\n"

    return-object p0
.end method

.method private indent(I)Ljava/lang/String;
    .locals 2

    .line 151
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Indenter$Cache;->get(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Indenter;->create()Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->set(ILjava/lang/String;)V

    .line 158
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/Indenter;->cache:Lorg/simpleframework/xml/stream/Indenter$Cache;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Indenter$Cache;->size()I

    move-result p0

    if-lez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public pop()Ljava/lang/String;
    .locals 3

    .line 132
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_0

    .line 135
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_0
    return-object v0
.end method

.method public push()Ljava/lang/String;
    .locals 3

    .line 114
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    if-lez v1, :cond_0

    .line 117
    iget v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    iget v2, p0, Lorg/simpleframework/xml/stream/Indenter;->indent:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/simpleframework/xml/stream/Indenter;->count:I

    :cond_0
    return-object v0
.end method

.method public top()Ljava/lang/String;
    .locals 1

    .line 101
    iget v0, p0, Lorg/simpleframework/xml/stream/Indenter;->index:I

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Indenter;->indent(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
