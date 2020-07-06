.class Lorg/simpleframework/xml/core/VersionLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "VersionLabel.java"


# instance fields
.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Version;

.field private name:Ljava/lang/String;

.field private path:Lorg/simpleframework/xml/core/Expression;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Version;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 89
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0, p3}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 91
    invoke-interface {p2}, Lorg/simpleframework/xml/Version;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->required:Z

    .line 92
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/VersionLabel;->type:Ljava/lang/Class;

    .line 93
    invoke-interface {p2}, Lorg/simpleframework/xml/Version;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/VersionLabel;->name:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lorg/simpleframework/xml/core/VersionLabel;->format:Lorg/simpleframework/xml/stream/Format;

    .line 95
    iput-object p2, p0, Lorg/simpleframework/xml/core/VersionLabel;->label:Lorg/simpleframework/xml/Version;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 199
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->label:Lorg/simpleframework/xml/Version;

    return-object p0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    .line 225
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    return-object p0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/VersionLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 124
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/core/Context;->isFloat(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance p1, Lorg/simpleframework/xml/core/AttributeException;

    const-string v0, "Cannot use %s to represent %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->label:Lorg/simpleframework/xml/Version;

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v1, v2, p0

    invoke-direct {p1, v0, v2}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 127
    :cond_0
    new-instance p0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object p0
.end method

.method public bridge synthetic getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/VersionLabel;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    .line 187
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->path:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/simpleframework/xml/core/VersionLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 155
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-interface {v0, p0}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/VersionLabel;->getName()Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-interface {v0, p0}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 236
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isAttribute()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->required:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lorg/simpleframework/xml/core/VersionLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
