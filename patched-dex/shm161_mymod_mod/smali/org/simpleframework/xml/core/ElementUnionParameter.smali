.class Lorg/simpleframework/xml/core/ElementUnionParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementUnionParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/ElementUnion;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateParameter;-><init>()V

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

    invoke-direct {v0, p3, p1, p5}, Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;-><init>(Lorg/simpleframework/xml/Element;Ljava/lang/reflect/Constructor;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

    .line 93
    new-instance p1, Lorg/simpleframework/xml/core/ElementUnionLabel;

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

    invoke-direct {p1, v0, p2, p3, p4}, Lorg/simpleframework/xml/core/ElementUnionLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementUnion;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    .line 94
    iget-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    .line 95
    iget-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->path:Ljava/lang/String;

    .line 96
    iget-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->type:Ljava/lang/Class;

    .line 97
    iget-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->name:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->key:Ljava/lang/Object;

    .line 99
    iput p5, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->index:I

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    .line 168
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    .line 145
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    .line 179
    iget p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->index:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0

    .line 110
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 156
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public isPrimitive()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->type:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public isRequired()Z
    .locals 0

    .line 191
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/simpleframework/xml/core/ElementUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionParameter$Contact;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
