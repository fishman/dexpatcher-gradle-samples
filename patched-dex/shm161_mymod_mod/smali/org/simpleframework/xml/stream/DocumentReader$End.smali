.class Lorg/simpleframework/xml/stream/DocumentReader$End;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "DocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/DocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "End"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/stream/DocumentReader$1;)V
    .locals 0

    .line 523
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/DocumentReader$End;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
