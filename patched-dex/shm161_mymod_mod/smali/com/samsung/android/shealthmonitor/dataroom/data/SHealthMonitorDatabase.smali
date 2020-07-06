.class public abstract Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SHealthMonitorDatabase.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DataRoomBpManager"


# instance fields
.field private mDaoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    const-string v0, "S HealthMonitor - DataRoomBpManager"

    const-string v1, " [SHealthMonitorBpDatabase] constructor "

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.health.DeleteTable"

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.health.DeviceProfile"

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->deleteByUuid(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;
.end method

.method public abstract deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;
.end method

.method public getAllData(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllData(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 1

    const-string v0, "com.samsung.health.DeleteTable"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.health.DeviceProfile"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    :cond_1
    return-void
.end method

.method public getAllDataSync(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 53
    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getAllDataSync()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getData(Ljava/lang/String;JJ)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getData(Ljava/lang/String;Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getData(Ljava/lang/String;JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 1

    const-string v0, "com.samsung.health.DeleteTable"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.health.DeviceProfile"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    :cond_1
    return-void
.end method

.method public getData(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;",
            ")V"
        }
    .end annotation

    const-string v0, "com.samsung.health.DeleteTable"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void

    :cond_0
    const-string v0, "com.samsung.health.DeviceProfile"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    :cond_1
    return-void
.end method

.method public getDataSync(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 74
    invoke-interface {p0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getDataSync(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataSync(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getDataSync(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;
.end method

.method public insert(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomBpManager"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [insertData] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.health.DeleteTable"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-class p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->makeObject(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.health.DeviceProfile"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    const-class p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->makeObject(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 47
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public update(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    const-string v0, "com.samsung.health.DeleteTable"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.samsung.health.DeviceProfile"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public update(Ljava/lang/String;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    if-eqz p0, :cond_0

    .line 132
    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->update(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
