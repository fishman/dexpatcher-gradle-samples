.class Lorg/simpleframework/xml/core/MethodDetail;
.super Ljava/lang/Object;
.source "MethodDetail.java"


# instance fields
.field private final list:[Ljava/lang/annotation/Annotation;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodDetail;->list:[Ljava/lang/annotation/Annotation;

    .line 58
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodDetail;->name:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodDetail;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodDetail;->list:[Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 0

    .line 82
    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodDetail;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodDetail;->name:Ljava/lang/String;

    return-object p0
.end method
