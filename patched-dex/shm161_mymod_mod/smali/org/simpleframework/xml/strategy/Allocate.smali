.class Lorg/simpleframework/xml/strategy/Allocate;
.super Ljava/lang/Object;
.source "Allocate.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private key:Ljava/lang/String;

.field private map:Ljava/util/Map;

.field private value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 60
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    .line 61
    iput-object p3, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    .line 109
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->getLength()I

    move-result p0

    return p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 97
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    iget-object p0, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isReference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/Allocate;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/Allocate;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/Allocate;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    return-void
.end method
