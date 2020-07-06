.class Lorg/simpleframework/xml/stream/OutputAttribute;
.super Ljava/lang/Object;
.source "OutputAttribute.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private name:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private scope:Lorg/simpleframework/xml/stream/NamespaceMap;

.field private source:Lorg/simpleframework/xml/stream/OutputNode;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    .line 67
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->source:Lorg/simpleframework/xml/stream/OutputNode;

    .line 68
    iput-object p3, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    return-void
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 0

    .line 189
    sget-object p0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 0

    .line 283
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object p0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputAttribute;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    .line 128
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    invoke-interface {v0, p0}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->scope:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    invoke-interface {p1, p0}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-object p0
.end method

.method public isCommitted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRoot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public remove()V
    .locals 0

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setData(Z)V
    .locals 0

    return-void
.end method

.method public setMode(Lorg/simpleframework/xml/stream/Mode;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->reference:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "attribute %s=\'%s\'"

    const/4 v1, 0x2

    .line 351
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->value:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
