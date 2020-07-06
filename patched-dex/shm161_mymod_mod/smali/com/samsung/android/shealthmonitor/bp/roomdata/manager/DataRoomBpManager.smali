.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;
.super Ljava/lang/Object;
.source "DataRoomBpManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DataRoomBpManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;


# instance fields
.field private mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "S HealthMonitor - DataRoomBpManager"

    const-string v1, " [DataRoomBpManager] constructor "

    .line 45
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    const-string v1, "RoomSHealthMonitorBp.db"

    invoke-static {p1, v0, v1}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;

    .line 54
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/util/KeyUtil;->getSecureKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->openHelperFactory(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    .line 59
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object p1

    const-string v0, "com.samsung.health.bp"

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V

    .line 60
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object p1

    const-string v0, "com.samsung.health.bp.configuration"

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;
    .locals 4

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "S HealthMonitor - DataRoomBpManager"

    const-string v2, " [DataRoomBpManager] getInstance start "

    .line 36
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    :cond_0
    const-string v1, "S HealthMonitor - DataRoomBpManager"

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [DataRoomBpManager] getInstance done! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mInstance:Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deleteBpData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I
    .locals 2

    .line 105
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSyncedData(Ljava/lang/String;)Z

    .line 106
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->delete(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I

    move-result p0

    return p0
.end method

.method public deleteBpData(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)I"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->delete(Ljava/util/List;)I

    move-result v0

    .line 112
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public deleteBpData(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->deleteByUuid(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public getAllBloodPressureData()Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllBloodPressureData(Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getAllBloodPressureData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getAllBloodPressureDataSync()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getAllDataSync()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllCalibrationConfigData()Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;>;"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllCalibrationConfigData(Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getAllCalibrationConfigData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getAllCalibrationConfigDataSync()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->getAllDataSync()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBloodPressureData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getBloodPressureData(JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBloodPressureData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p5}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getBloodPressureDataSync(JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getDataSync(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBloodPressureDataSync(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM BloodPressureData where start_time >= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " and start_time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " order by "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    new-instance p2, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {p2, p1}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getDataSync(Landroid/arch/persistence/db/SupportSQLiteQuery;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBloodPressureLatestData()Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getLatestDataSync()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getBpDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    return-object p0
.end method

.method public getBpDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    move-result-object p0

    return-object p0
.end method

.method public getBpDataSync(JI)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getDataSync(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBpSyncableDataCount(J)I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->getDataCount(J)I

    move-result p0

    return p0
.end method

.method public getCalibrationConfigData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;>;"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->getData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getCalibrationConfigData(Ljava/util/List;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getCalibrationConfigData(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getCalibrationConfigDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->getDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    move-result-object p0

    return-object p0
.end method

.method public getCalibrationConfigDataSync(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->getDataSync(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertBpData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->insert(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertBpData(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertCalibrationConfigData(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->calibrationConfigDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateBpData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J
    .locals 3

    .line 130
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSyncedData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->mBpDatabase:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/SHealthMonitorBpDatabase;->bloodPressureDataDao()Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao;->update(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
