.class Lorg/simpleframework/xml/core/SessionManager$Reference;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reference"
.end annotation


# instance fields
.field private count:I

.field private session:Lorg/simpleframework/xml/core/Session;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lorg/simpleframework/xml/core/Session;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Session;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    return-void
.end method


# virtual methods
.method public clear()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    return v0
.end method

.method public get()Lorg/simpleframework/xml/core/Session;
    .locals 1

    .line 165
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    if-ltz v0, :cond_0

    .line 166
    iget v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->count:I

    .line 168
    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/SessionManager$Reference;->session:Lorg/simpleframework/xml/core/Session;

    return-object p0
.end method
