.class public abstract Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;
.super Ljava/lang/Object;
.source "DeviceProfileDao.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DeviceProfileDao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I
.end method

.method public abstract delete(Ljava/lang/String;)I
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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllDataSync()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataByDeviceId(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDataSync(JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
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
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;
.end method

.method public abstract getDataSyncByDeviceId(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I
.end method

.method public bridge synthetic update(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I

    move-result p0

    return p0
.end method

.method public abstract update(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;)I"
        }
    .end annotation
.end method

.method public upsert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J
    .locals 5

    const-string v0, "S HealthMonitor - DeviceProfileDao"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [DeviceProfileDao] upsert : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J

    move-result-wide v0

    const-string v2, "S HealthMonitor - DeviceProfileDao"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [DeviceProfileDao] insert ret : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    move-result-object v0

    const-string v1, "S HealthMonitor - DeviceProfileDao"

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [DeviceProfileDao] insertedData : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x1

    const-string p0, "S HealthMonitor - DeviceProfileDao"

    const-string p1, " [DeviceProfileDao] is SAME : "

    .line 39
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->updateData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I

    move-result p0

    int-to-long v0, p0

    const-string p0, "S HealthMonitor - DeviceProfileDao"

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " [DeviceProfileDao] is updated : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-wide v0
.end method
