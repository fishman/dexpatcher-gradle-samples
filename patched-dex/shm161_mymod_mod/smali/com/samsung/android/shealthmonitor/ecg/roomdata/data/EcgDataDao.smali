.class public abstract Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
.super Ljava/lang/Object;
.source "EcgDataDao.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface",
        "<",
        "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I
.end method

.method public abstract delete(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract deleteByUuid(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAllData()Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDataSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData(JJ)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataCount(J)I
.end method

.method public abstract getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
.end method

.method public abstract getDataSync(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSync(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSync(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSync(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestDataSync()Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    const-wide/16 v6, 0x0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "arrayList":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->insert(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    .local v2, "valueOf":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_2e

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 52
    :cond_2e
    const-string v3, "EcgData"

    const-string v4, "BP06"

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2b

    .line 56
    .end local v2    # "valueOf":Ljava/lang/Long;
    :cond_39
    return-object v0
.end method

.method public abstract update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 10
    check-cast p1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I

    move-result v0

    return v0
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)I"
        }
    .end annotation
.end method
