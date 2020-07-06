.class public abstract Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;
.super Ljava/lang/Object;
.source "BloodPressureDataDao.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I
.end method

.method public abstract delete(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)I"
        }
    .end annotation
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
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDataSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
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
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
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
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataCount(J)I
.end method

.method public abstract getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
.end method

.method public abstract getDataSync(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSync(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
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
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
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
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestDataSync()Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->insert(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v3, "BloodPressureData"

    const-string v4, "BP06"

    .line 36
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I

    move-result p0

    return p0
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)I"
        }
    .end annotation
.end method
