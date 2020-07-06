.class Lorg/simpleframework/xml/core/Variable$Adapter;
.super Ljava/lang/Object;
.source "Variable.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/Variable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation


# instance fields
.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final reader:Lorg/simpleframework/xml/core/Converter;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Converter;Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 0

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    .line 447
    iput-object p3, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    .line 448
    iput-object p2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Variable$Adapter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 476
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 477
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 479
    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    instance-of v2, v2, Lorg/simpleframework/xml/core/Repeater;

    if-eqz v2, :cond_0

    .line 480
    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    check-cast p0, Lorg/simpleframework/xml/core/Repeater;

    .line 482
    invoke-interface {p0, p1, p2}, Lorg/simpleframework/xml/core/Repeater;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 484
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p2, "Element \'%s\' is already used with %s at %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->label:Lorg/simpleframework/xml/core/Label;

    aput-object p0, v2, v1

    const/4 p0, 0x2

    aput-object v0, v2, p0

    invoke-direct {p1, p2, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 498
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 499
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 501
    iget-object v2, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    instance-of v2, v2, Lorg/simpleframework/xml/core/Repeater;

    if-eqz v2, :cond_0

    .line 502
    iget-object p0, p0, Lorg/simpleframework/xml/core/Variable$Adapter;->reader:Lorg/simpleframework/xml/core/Converter;

    check-cast p0, Lorg/simpleframework/xml/core/Repeater;

    .line 504
    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Repeater;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result p0

    return p0

    .line 506
    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "Element \'%s\' declared twice at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/Variable$Adapter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    return-void
.end method
