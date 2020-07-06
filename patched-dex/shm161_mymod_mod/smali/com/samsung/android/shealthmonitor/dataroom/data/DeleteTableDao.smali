.class public interface abstract Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;
.super Ljava/lang/Object;
.source "DeleteTableDao.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I
.end method

.method public abstract deleteByUuid(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAllData()Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDataSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData(JJ)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataSync(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSync(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)J
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I

    move-result p0

    return p0
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;)I"
        }
    .end annotation
.end method
