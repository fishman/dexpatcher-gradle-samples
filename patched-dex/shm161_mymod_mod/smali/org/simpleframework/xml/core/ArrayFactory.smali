.class Lorg/simpleframework/xml/core/ArrayFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "ArrayFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method private getComponentType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v2, "The %s not an array for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object p0, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getInstance(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance p1, Lorg/simpleframework/xml/core/InstantiationException;

    const-string v1, "Array of type %s cannot hold %s for %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 p2, 0x2

    iget-object p0, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object p0, v2, p2

    invoke-direct {p1, v1, v2}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 109
    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/ArrayInstance;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ArrayInstance;-><init>(Lorg/simpleframework/xml/strategy/Value;)V

    return-object p0
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ArrayFactory;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 82
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ArrayFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lorg/simpleframework/xml/core/ElementException;

    const-string v1, "Array length required for %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ArrayFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    invoke-direct {p1, v1, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 87
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 89
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/ArrayFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p0

    return-object p0
.end method
