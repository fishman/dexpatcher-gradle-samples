.class Lorg/simpleframework/xml/stream/PullReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "PullReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/PullReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Text"
.end annotation


# instance fields
.field private final source:Lorg/xmlpull/v1/XmlPullParser;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 463
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    .line 464
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .locals 0

    .line 498
    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 487
    iget-object p0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    return-object p0
.end method

.method public isText()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
