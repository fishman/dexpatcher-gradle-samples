.class Lorg/simpleframework/xml/strategy/ArrayValue;
.super Ljava/lang/Object;
.source "ArrayValue.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private size:I

.field private type:Ljava/lang/Class;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    .line 59
    iput p2, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->size:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    .line 103
    iget p0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->size:I

    return p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 92
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public isReference()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->value:Ljava/lang/Object;

    return-void
.end method
