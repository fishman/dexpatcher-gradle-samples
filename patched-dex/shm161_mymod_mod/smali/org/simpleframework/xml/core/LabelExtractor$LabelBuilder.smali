.class Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;
.super Ljava/lang/Object;
.source "LabelExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/LabelExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelBuilder"
.end annotation


# instance fields
.field private final entry:Ljava/lang/Class;

.field private final label:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p3, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->entry:Ljava/lang/Class;

    .line 400
    iput-object p2, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->label:Ljava/lang/Class;

    .line 401
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->type:Ljava/lang/Class;

    return-void
.end method

.method private getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/simpleframework/xml/core/Contact;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-class p1, Lorg/simpleframework/xml/stream/Format;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method private getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 440
    iget-object p0, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->type:Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/simpleframework/xml/core/Contact;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-class p1, Lorg/simpleframework/xml/stream/Format;

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->entry:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->label:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->entry:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->label:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelExtractor$LabelBuilder;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method
