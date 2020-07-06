.class public Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;
.super Ljava/lang/Object;
.source "DataRoomEcgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DataRoomEcgManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;


# instance fields
.field private mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "S HealthMonitor - DataRoomEcgManager"

    const-string v1, " [DataRoomEcgManager] constructor "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-class v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    const-string v1, "RoomSHealthMonitorEcg.db"

    invoke-static {p1, v0, v1}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/util/KeyUtil;->getSecureKey()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->openHelperFactory(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    .line 46
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    const-string v1, "com.samsung.health.ecg"

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V

    .line 47
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;
    .registers 6

    .prologue
    .line 32
    const-class v2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    monitor-enter v2

    :try_start_3
    const-class v3, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3e

    .line 33
    :try_start_6
    const-string v1, "S HealthMonitor - DataRoomEcgManager"

    const-string v4, " [DataRoomEcgManager] getInstance start "

    invoke-static {v1, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    if-nez v1, :cond_1c

    .line 35
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    .line 37
    :cond_1c
    const-string v1, "S HealthMonitor - DataRoomEcgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " [DataRoomEcgManager] getInstance done! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mInstance:Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    .line 39
    .local v0, "dataRoomEcgManager":Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_3b

    .line 40
    monitor-exit v2

    return-object v0

    .line 39
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 32
    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public deleteEcgData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I
    .registers 4
    .param p1, "ecgData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSyncedData(Ljava/lang/String;)Z

    .line 91
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->delete(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I

    move-result v0

    return v0
.end method

.method public deleteEcgData(Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->delete(Ljava/util/List;)I

    move-result v0

    .line 96
    .local v0, "delete":I
    new-instance v1, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager$1;-><init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return v0
.end method

.method public deleteEcgData(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->deleteByUuid(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getAllEcgData()Landroid/arch/lifecycle/LiveData;
    .registers 2
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

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getAllEcgData(Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .registers 3
    .param p1, "dataRoomResultListener"    # Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getAllEcgData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    .line 59
    return-void
.end method

.method public getAllEcgDataSync()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getAllDataSync()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEcgData(JJ)Landroid/arch/lifecycle/LiveData;
    .registers 6
    .param p1, "j"    # J
    .param p3, "j2"    # J
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

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEcgData(JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .registers 7
    .param p1, "j"    # J
    .param p3, "j2"    # J
    .param p5, "dataRoomResultListener"    # Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getEcgData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    .line 79
    return-void
.end method

.method public getEcgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    return-object v0
.end method

.method public getEcgDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    move-result-object v0

    return-object v0
.end method

.method public getEcgDataSync(JI)Ljava/util/List;
    .registers 5
    .param p1, "j"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getDataSync(JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEcgDataSync(JJ)Ljava/util/List;
    .registers 6
    .param p1, "j"    # J
    .param p3, "j2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getDataSync(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEcgDataSync(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "j"    # J
    .param p3, "j2"    # J
    .param p5, "str"    # Ljava/lang/String;
    .param p6, "str2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM EcgData where start_time >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and start_time < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " order by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getDataSync(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEcgLatestData()Landroid/arch/lifecycle/LiveData;
    .registers 2
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

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getLatestDataSync()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getEcgSyncableDataCount(J)I
    .registers 4
    .param p1, "j"    # J

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->getDataCount(J)I

    move-result v0

    return v0
.end method

.method public insertEcgData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J
    .registers 4
    .param p1, "ecgData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->insert(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertEcgData(Ljava/util/ArrayList;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
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
    .line 86
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;>;"
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateEcgData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)J
    .registers 5
    .param p1, "ecgData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSyncedData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->mEcgDatabase:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/SHealthMonitorEcgDatabase;->ecgDataDao()Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao;->update(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
