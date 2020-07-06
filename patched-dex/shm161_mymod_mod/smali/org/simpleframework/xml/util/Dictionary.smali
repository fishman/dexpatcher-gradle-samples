.class public Lorg/simpleframework/xml/util/Dictionary;
.super Ljava/util/AbstractSet;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/Dictionary$Table;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/simpleframework/xml/util/Entry;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final map:Lorg/simpleframework/xml/util/Dictionary$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Dictionary$Table<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 67
    new-instance v0, Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 53
    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary;->add(Lorg/simpleframework/xml/util/Entry;)Z

    move-result p0

    return p0
.end method

.method public add(Lorg/simpleframework/xml/util/Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-interface {p1}, Lorg/simpleframework/xml/util/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 113
    iget-object p0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/util/Entry;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Dictionary$Table;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/util/Entry;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Dictionary$Table;->size()I

    move-result p0

    return p0
.end method
