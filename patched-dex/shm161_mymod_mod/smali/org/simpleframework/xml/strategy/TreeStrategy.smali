.class public Lorg/simpleframework/xml/strategy/TreeStrategy;
.super Ljava/lang/Object;
.source "TreeStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "class"

    const-string v1, "length"

    .line 68
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/Loader;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    .line 82
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    return-void
.end method

.method private readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-interface {p2, p0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 136
    :goto_0
    new-instance p2, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {p2, p1, p0}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object p2
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object p2

    .line 156
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 162
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 1

    .line 208
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    .line 210
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->length:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p0, p2}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readValue(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object p3

    .line 103
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p3, p2}, Lorg/simpleframework/xml/strategy/TreeStrategy;->readArray(Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p0

    return-object p0

    :cond_0
    if-eq p1, p3, :cond_1

    .line 109
    new-instance p0, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {p0, p3}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 1

    .line 183
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 184
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 187
    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/TreeStrategy;->writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    if-eq p4, p1, :cond_1

    .line 191
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/TreeStrategy;->label:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
