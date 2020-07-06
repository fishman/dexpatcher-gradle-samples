.class Lorg/simpleframework/xml/core/MethodPartFactory;
.super Ljava/lang/Object;
.source "MethodPartFactory.java"


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    return-void
.end method

.method private getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    .line 177
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object p0

    .line 198
    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 199
    invoke-static {p1, p0}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 201
    :cond_0
    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne p0, v0, :cond_1

    .line 202
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 204
    :cond_1
    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne p0, v0, :cond_2

    .line 205
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;
    .locals 0

    .line 148
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "get"

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    sget-object p0, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    return-object p0

    :cond_0
    const-string p1, "is"

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    sget-object p0, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    return-object p0

    :cond_1
    const-string p1, "set"

    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 157
    sget-object p0, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    return-object p0

    .line 159
    :cond_2
    sget-object p0, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    return-object p0
.end method

.method private getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 124
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p0

    return-object p0

    .line 133
    :cond_2
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    const-string p1, "Annotation %s must mark a set or get method"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 248
    array-length p0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 290
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    const-string p2, "Get method %s is not a valid property"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-direct {p0, p2, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 292
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 295
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    const-string p2, "Could not get name for %s"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-direct {p0, p2, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 297
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v0, p1, p2, p0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v0
.end method

.method private getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 267
    array-length p0, p0

    if-nez p0, :cond_0

    .line 268
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;
    .locals 0

    .line 339
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/MethodType;->getPrefix()I

    move-result p0

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, p0, :cond_0

    .line 343
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 345
    :cond_0
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 316
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 317
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    const-string p2, "Set method %s is not a valid property"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-direct {p0, p2, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 319
    :cond_0
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 322
    new-instance p0, Lorg/simpleframework/xml/core/MethodException;

    const-string p2, "Could not get name for %s"

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-direct {p0, p2, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 324
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v0, p1, p2, p0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object p1

    .line 102
    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne p1, v0, :cond_0

    .line 103
    new-instance p1, Lorg/simpleframework/xml/core/SetPart;

    invoke-direct {p1, p0, p2, p3}, Lorg/simpleframework/xml/core/SetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object p1

    .line 105
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/GetPart;

    invoke-direct {p1, p0, p2, p3}, Lorg/simpleframework/xml/core/GetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public getInstance(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 223
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 227
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 229
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
