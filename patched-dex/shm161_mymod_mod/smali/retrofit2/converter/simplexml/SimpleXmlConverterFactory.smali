.class public final Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "SimpleXmlConverterFactory.java"


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;

.field private final strict:Z


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/Serializer;Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 60
    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    return-void
.end method

.method public static createNonStrict(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 2

    .line 53
    new-instance v0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;-><init>(Lorg/simpleframework/xml/Serializer;Z)V

    return-object v0
.end method


# virtual methods
.method public final requestBodyConverter$1b5cabf3(Ljava/lang/reflect/Type;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 81
    instance-of p1, p1, Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_0
    new-instance p1, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;

    iget-object p0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-direct {p1, p0}, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;-><init>(Lorg/simpleframework/xml/Serializer;)V

    return-object p1
.end method

.method public final responseBodyConverter$60ba0ade(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 71
    instance-of p2, p1, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    check-cast p1, Ljava/lang/Class;

    .line 75
    new-instance p2, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;

    iget-object v0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    iget-boolean p0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    invoke-direct {p2, p1, v0, p0}, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/Serializer;Z)V

    return-object p2
.end method
