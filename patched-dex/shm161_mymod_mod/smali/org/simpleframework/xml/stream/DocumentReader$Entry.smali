.class Lorg/simpleframework/xml/stream/DocumentReader$Entry;
.super Lorg/simpleframework/xml/stream/EventAttribute;
.source "DocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/DocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final node:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventAttribute;-><init>()V

    .line 289
    iput-object p1, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 301
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    .line 324
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .locals 0

    .line 336
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 0

    .line 365
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 312
    iget-object p0, p0, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->node:Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isReserved()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/DocumentReader$Entry;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string p0, "xml"

    .line 352
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "xml"

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
