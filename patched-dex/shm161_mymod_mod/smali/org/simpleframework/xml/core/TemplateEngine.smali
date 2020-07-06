.class Lorg/simpleframework/xml/core/TemplateEngine;
.super Ljava/lang/Object;
.source "TemplateEngine.java"


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private name:Lorg/simpleframework/xml/core/Template;

.field private off:I

.field private source:Lorg/simpleframework/xml/core/Template;

.field private text:Lorg/simpleframework/xml/core/Template;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    .line 77
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    .line 78
    new-instance v0, Lorg/simpleframework/xml/core/Template;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Template;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    .line 79
    iput-object p1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    return-void
.end method

.method private name()V
    .locals 3

    .line 137
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace()V

    goto :goto_1

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0

    .line 147
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p0}, Lorg/simpleframework/xml/core/Template;->append(Lorg/simpleframework/xml/core/Template;)V

    :cond_2
    return-void
.end method

.method private parse()V
    .locals 4

    .line 112
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v1, v1, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v0, v0, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 116
    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    iget-object v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget v2, v2, Lorg/simpleframework/xml/core/Template;->count:I

    if-ge v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    iget-object v1, v1, Lorg/simpleframework/xml/core/Template;->buf:[C

    iget v2, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    aget-char v1, v1, v2

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->name()V

    goto :goto_0

    .line 121
    :cond_0
    iget v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Template;->append(C)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private replace()V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Lorg/simpleframework/xml/core/Template;)V

    .line 163
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Template;->clear()V

    return-void
.end method

.method private replace(Ljava/lang/String;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string v1, "${"

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    return-void

    .line 194
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    return-void
.end method

.method private replace(Lorg/simpleframework/xml/core/Template;)V
    .locals 0

    .line 175
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TemplateEngine;->replace(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->name:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    .line 207
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Template;->clear()V

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->off:I

    return-void
.end method

.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateEngine;->source:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Template;->append(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->parse()V

    .line 99
    iget-object p1, p0, Lorg/simpleframework/xml/core/TemplateEngine;->text:Lorg/simpleframework/xml/core/Template;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Template;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateEngine;->clear()V

    throw p1
.end method
