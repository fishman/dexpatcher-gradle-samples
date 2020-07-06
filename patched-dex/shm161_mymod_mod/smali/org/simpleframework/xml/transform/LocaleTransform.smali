.class Lorg/simpleframework/xml/transform/LocaleTransform;
.super Ljava/lang/Object;
.source "LocaleTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private read([Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, ""

    const-string v0, ""

    const-string v1, ""

    .line 92
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 95
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 96
    aget-object v2, p1, v1

    aput-object v2, p0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance p1, Ljava/util/Locale;

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {p1, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->read(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    array-length v1, v0

    if-gtz v1, :cond_0

    .line 76
    new-instance p0, Lorg/simpleframework/xml/transform/InvalidFormatException;

    const-string v0, "Invalid locale %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/transform/InvalidFormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/LocaleTransform;->read([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->write(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
