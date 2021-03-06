.class Lorg/simpleframework/xml/stream/OutputDocument;
.super Ljava/lang/Object;
.source "OutputDocument.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private comment:Ljava/lang/String;

.field private mode:Lorg/simpleframework/xml/stream/Mode;

.field private name:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private stack:Lorg/simpleframework/xml/stream/OutputStack;

.field private table:Lorg/simpleframework/xml/stream/OutputNodeMap;

.field private value:Ljava/lang/String;

.field private writer:Lorg/simpleframework/xml/stream/NodeWriter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/NodeWriter;Lorg/simpleframework/xml/stream/OutputStack;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;-><init>(Lorg/simpleframework/xml/stream/OutputNode;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    .line 82
    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    .line 83
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    .line 84
    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance p0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v0, "No root node"

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 351
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->commit()V

    return-void
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    return-object p0
.end method

.method public getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->writer:Lorg/simpleframework/xml/stream/NodeWriter;

    invoke-virtual {v0, p0, p1}, Lorg/simpleframework/xml/stream/NodeWriter;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    .line 191
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()Lorg/simpleframework/xml/stream/Mode;
    .locals 0

    .line 217
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputDocument;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    return-object p0
.end method

.method public isCommitted()Z
    .locals 0

    .line 362
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isRoot()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/OutputStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    new-instance p0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v0, "No root node"

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 335
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->stack:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->bottom()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 0

    .line 245
    iget-object p0, p0, Lorg/simpleframework/xml/stream/OutputDocument;->table:Lorg/simpleframework/xml/stream/OutputNodeMap;

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p0

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->comment:Ljava/lang/String;

    return-void
.end method

.method public setData(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 304
    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-void

    .line 306
    :cond_0
    sget-object p1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method public setMode(Lorg/simpleframework/xml/stream/Mode;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->mode:Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->name:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->reference:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputDocument;->value:Ljava/lang/String;

    return-void
.end method
