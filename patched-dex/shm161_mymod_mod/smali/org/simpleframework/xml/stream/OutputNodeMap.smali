.class Lorg/simpleframework/xml/stream/OutputNodeMap;
.super Ljava/util/LinkedHashMap;
.source "OutputNodeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/NodeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;",
        "Lorg/simpleframework/xml/stream/NodeMap<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputNodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    .line 115
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNode()Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->getNode()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public getNode()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .line 82
    new-instance v0, Lorg/simpleframework/xml/stream/OutputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-direct {v0, v1, p1, p2}, Lorg/simpleframework/xml/stream/OutputAttribute;-><init>(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputNodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    .line 101
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method
