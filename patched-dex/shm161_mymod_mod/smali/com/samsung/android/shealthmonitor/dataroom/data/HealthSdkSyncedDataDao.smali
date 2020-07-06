.class public abstract Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;
.super Ljava/lang/Object;
.source "HealthSdkSyncedDataDao.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
.end method

.method public abstract delete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
.end method

.method public abstract getData(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeletedList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatedList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDataUuid(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public setDeleted(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setDeleted(I)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I

    return-object p1
.end method

.method public setUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I

    return-object p1
.end method

.method public unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 1

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->setUpdated(I)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I

    return-object p1
.end method

.method public abstract update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)I"
        }
    .end annotation
.end method
