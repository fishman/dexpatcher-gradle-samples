.class Lorg/simpleframework/xml/core/ClassInstantiator;
.super Ljava/lang/Object;
.source "ClassInstantiator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instantiator;


# instance fields
.field private final creators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end field

.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final primary:Lorg/simpleframework/xml/core/Creator;

.field private final registry:Lorg/simpleframework/xml/core/ParameterMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/Creator;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Detail;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;",
            "Lorg/simpleframework/xml/core/Creator;",
            "Lorg/simpleframework/xml/core/ParameterMap;",
            "Lorg/simpleframework/xml/core/Detail;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    .line 67
    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    .line 68
    iput-object p4, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method

.method private getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    .line 130
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Creator;

    .line 131
    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Creator;->getScore(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_0

    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCreators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/Creator;->getInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassInstantiator;->getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance p1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v0, "Constructor not matched for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object p0, v1, v2

    invoke-direct {p1, v0, v1}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 114
    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Creator;->getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .locals 0

    .line 152
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/Parameter;

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isDefault()Z
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 82
    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "creator for %s"

    const/4 v1, 0x1

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
