.class Lorg/simpleframework/xml/stream/InputPosition;
.super Ljava/lang/Object;
.source "InputPosition.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Position;


# instance fields
.field private source:Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventNode;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/simpleframework/xml/stream/InputPosition;->source:Lorg/simpleframework/xml/stream/EventNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/EventNode;->getLine()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "line %s"

    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputPosition;->getLine()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
