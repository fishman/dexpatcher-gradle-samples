.class public abstract Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "SHealthMonitorEcgDatabase.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DataRoomEcgManager"


# instance fields
.field private mDaoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    .line 23
    const-string v0, "S HealthMonitor - DataRoomEcgManager"

    const-string v1, " [SHealthMonitorEcgDatabase] constructor "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.health.ecg"

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 104
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 105
    invoke-interface {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->deleteByUuid(Ljava/util/List;)I

    move-result v1

    .line 107
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public abstract ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
.end method

.method public getAllData(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 46
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 47
    invoke-interface {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 49
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getAllData(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dataRoomResultListener"    # Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    .prologue
    .line 53
    const-string v0, "com.samsung.health.ecg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    .line 56
    :cond_13
    return-void
.end method

.method public getAllDataSync(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 38
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 39
    invoke-interface {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getAllDataSync()Ljava/util/List;

    move-result-object v1

    .line 41
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getData(Ljava/lang/String;JJ)Landroid/arch/lifecycle/LiveData;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "j"    # J
    .param p4, "j2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 68
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 69
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 71
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getData(Ljava/lang/String;Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 90
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 91
    invoke-interface {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 93
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getData(Ljava/lang/String;JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "j"    # J
    .param p4, "j2"    # J
    .param p6, "dataRoomResultListener"    # Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    .prologue
    .line 75
    const-string v0, "com.samsung.health.ecg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    .line 78
    :cond_13
    return-void
.end method

.method public getData(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p3, "dataRoomResultListener"    # Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "com.samsung.health.ecg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    .line 100
    :cond_13
    return-void
.end method

.method public getDataSync(Ljava/lang/String;JJ)Ljava/util/List;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "j"    # J
    .param p4, "j2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 60
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 61
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getDataSync(JJ)Ljava/util/List;

    move-result-object v1

    .line 63
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getDataSync(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 82
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 83
    invoke-interface {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->getDataSync(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 85
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public insert(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "jSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 28
    const-string v0, "S HealthMonitor - DataRoomEcgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [insertData] type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "com.samsung.health.ecg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 33
    :cond_2f
    return-object v3
.end method

.method public update(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "com.samsung.health.ecg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    check-cast p2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .end local p2    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I

    move-result v0

    .line 114
    :goto_12
    return v0

    .restart local p2    # "t":Ljava/lang/Object;, "TT;"
    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public update(Ljava/lang/String;Ljava/util/List;)I
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->mDaoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;

    .line 119
    .local v0, "dataRoomDaoInterface":Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;
    if-eqz v0, :cond_f

    .line 120
    invoke-interface {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomDaoInterface;->update(Ljava/util/List;)I

    move-result v1

    .line 122
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method
