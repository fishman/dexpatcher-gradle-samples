.class Lorg/simpleframework/xml/core/TextParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "TextParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/TextParameter$Contact;
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/Text;Lorg/simpleframework/xml/stream/Format;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 90
    new-instance v0, Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-direct {v0, p2, p1, p4}, Lorg/simpleframework/xml/core/TextParameter$Contact;-><init>(Lorg/simpleframework/xml/Text;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    .line 91
    new-instance p1, Lorg/simpleframework/xml/core/TextLabel;

    iget-object v0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-direct {p1, v0, p2, p3}, Lorg/simpleframework/xml/core/TextLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Text;Lorg/simpleframework/xml/stream/Format;)V

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 92
    iget-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 93
    iget-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->path:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->type:Ljava/lang/Class;

    .line 95
    iget-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->name:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/TextParameter;->key:Ljava/lang/Object;

    .line 97
    iput p4, p0, Lorg/simpleframework/xml/core/TextParameter;->index:I

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 193
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    .line 143
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 204
    iget p0, p0, Lorg/simpleframework/xml/core/TextParameter;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 181
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isPrimitive()Z
    .locals 0

    .line 228
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 216
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result p0

    return p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lorg/simpleframework/xml/core/TextParameter;->contact:Lorg/simpleframework/xml/core/TextParameter$Contact;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TextParameter$Contact;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
