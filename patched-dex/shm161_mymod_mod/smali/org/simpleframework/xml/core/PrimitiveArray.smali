.class Lorg/simpleframework/xml/core/PrimitiveArray;
.super Ljava/lang/Object;
.source "PrimitiveArray.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final entry:Lorg/simpleframework/xml/strategy/Type;

.field private final factory:Lorg/simpleframework/xml/core/ArrayFactory;

.field private final parent:Ljava/lang/String;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/ArrayFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    .line 95
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 96
    iput-object p4, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->entry:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, p0, p2, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result p0

    return p0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    goto :goto_0
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 231
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PrimitiveArray;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 232
    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    :cond_0
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

    .line 112
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 115
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveArray;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 136
    :goto_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    .line 137
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    if-nez v4, :cond_0

    return-object p2

    :cond_0
    if-lt v2, v0, :cond_1

    .line 143
    new-instance p1, Lorg/simpleframework/xml/core/ElementException;

    const-string p2, "Array length missing or incorrect for %s at %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object v3, v0, p0

    invoke-direct {p1, p2, v0}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 145
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, v4}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->factory:Lorg/simpleframework/xml/core/ArrayFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 163
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 166
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PrimitiveArray;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveArray;->parent:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    invoke-direct {p0, v2, p2, v1}, Lorg/simpleframework/xml/core/PrimitiveArray;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
