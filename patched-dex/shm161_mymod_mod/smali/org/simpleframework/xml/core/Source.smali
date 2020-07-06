.class Lorg/simpleframework/xml/core/Source;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Context;


# instance fields
.field private engine:Lorg/simpleframework/xml/core/TemplateEngine;

.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private session:Lorg/simpleframework/xml/core/Session;

.field private strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/TemplateFilter;

    invoke-direct {v0, p0, p2}, Lorg/simpleframework/xml/core/TemplateFilter;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/filter/Filter;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Source;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/TemplateEngine;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Source;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/TemplateEngine;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    .line 93
    iput-object p1, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 94
    iput-object p2, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    .line 95
    iput-object p3, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    return-void
.end method

.method private getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Session;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/simpleframework/xml/core/Scanner;->getCaller(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Caller;

    move-result-object p0

    return-object p0
.end method

.method public getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Scanner;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;
    .locals 0

    .line 212
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 0

    .line 225
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOverride(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 358
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "No attributes for %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 360
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-interface {p2, p1, v0, p0}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 417
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->engine:Lorg/simpleframework/xml/core/TemplateEngine;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TemplateEngine;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v0, "Invalid schema class %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 322
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/ClassSchema;

    invoke-direct {p1, v0, p0}, Lorg/simpleframework/xml/core/ClassSchema;-><init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Context;)V

    return-object p1
.end method

.method public getSession()Lorg/simpleframework/xml/core/Session;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    return-object p0
.end method

.method public getStyle()Lorg/simpleframework/xml/stream/Style;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Support;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object p0

    return-object p0
.end method

.method public getSupport()Lorg/simpleframework/xml/core/Support;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    return-object p0
.end method

.method public getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    if-eqz p2, :cond_0

    .line 400
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 402
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Source;->getScanner(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Scanner;

    move-result-object p0

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Scanner;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object p0

    return-object p0
.end method

.method public isFloat(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-static {p1}, Lorg/simpleframework/xml/core/Support;->isFloat(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isFloat(Lorg/simpleframework/xml/strategy/Type;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Source;->isFloat(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Support;->isPrimitive(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Source;->isPrimitive(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public isStrict()Z
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Session;->isStrict()Z

    move-result p0

    return p0
.end method

.method public setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/OutputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    new-instance p0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string p1, "No attributes for %s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 384
    :cond_0
    iget-object p3, p0, Lorg/simpleframework/xml/core/Source;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object p0, p0, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
