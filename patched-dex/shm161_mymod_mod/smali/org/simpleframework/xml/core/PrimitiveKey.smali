.class Lorg/simpleframework/xml/core/PrimitiveKey;
.super Ljava/lang/Object;
.source "PrimitiveKey.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    .line 95
    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 96
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, p0, p2, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result p0

    return p0
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 178
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 183
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 222
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 227
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result p0

    return p0
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 248
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result p0

    return p0
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/PrimitiveFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 304
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {p0, v1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 312
    invoke-interface {p1, p0, p2}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    :cond_1
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 287
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 139
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p2, "Can not read key of %s for %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object p0, v1, v0

    invoke-direct {p1, p2, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveKey;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 206
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveKey;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveKey;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 264
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveKey;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
