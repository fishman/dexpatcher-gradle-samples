.class abstract Lorg/simpleframework/xml/core/TemplateLabel;
.super Ljava/lang/Object;
.source "TemplateLabel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private final builder:Lorg/simpleframework/xml/core/KeyBuilder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/simpleframework/xml/core/KeyBuilder;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/KeyBuilder;-><init>(Lorg/simpleframework/xml/core/Label;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TemplateLabel;->builder:Lorg/simpleframework/xml/core/KeyBuilder;

    return-void
.end method


# virtual methods
.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lorg/simpleframework/xml/core/TemplateLabel;->builder:Lorg/simpleframework/xml/core/KeyBuilder;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 89
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TemplateLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object p0

    return-object p0
.end method

.method public isAttribute()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCollection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTextList()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isUnion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
