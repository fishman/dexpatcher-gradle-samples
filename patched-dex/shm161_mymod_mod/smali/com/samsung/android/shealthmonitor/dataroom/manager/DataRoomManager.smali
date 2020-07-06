.class public Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;
.super Ljava/lang/Object;
.source "DataRoomManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DataRoomManager"

.field private static mInstance:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;


# instance fields
.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "S HealthMonitor - DataRoomManager"

    const-string v1, " [DataManager] constructor "

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    .line 66
    const-class v0, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    const-string v1, "RoomSHealthMonitor.db"

    invoke-static {p1, v0, v1}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;

    .line 67
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/util/KeyUtil;->getSecureKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/secureroom/SecureHelperFactory;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->openHelperFactory(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    const-string p1, "com.samsung.health.DeleteTable"

    .line 73
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V

    const-string p1, "com.samsung.health.DeviceProfile"

    .line 74
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V

    return-void
.end method

.method private doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;",
            ")V"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;)V

    .line 95
    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    invoke-virtual {p1, v0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;
    .locals 4

    const-class v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "S HealthMonitor - DataRoomManager"

    const-string v2, " [DataManager] getInstance start "

    .line 45
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mInstance:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mInstance:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    :cond_0
    const-string v1, "S HealthMonitor - DataRoomManager"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [DataManager] getInstance done! : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mInstance:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mInstance:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deleteData(Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 276
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->delete(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public deleteDeleteTableData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)I

    move-result p0

    return p0
.end method

.method public deleteDeleteTableData(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->deleteByUuid(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public deleteDeviceProfileData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->delete(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)I

    move-result p0

    return p0
.end method

.method public deleteDeviceProfileData(Ljava/lang/String;)I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->delete(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteDeviceProfileData(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->deleteByUuid(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public deleteSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->delete(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V

    return-void
.end method

.method public getAllData(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 220
    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getAllData(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllDataSync(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getAllDataSync(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAllDeleteTableData()Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDeleteTableData(Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getAllDeleteTableData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getAllDeleteTableDataSync()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getAllDataSync()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllDeviceProfileData()Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getAllData()Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getAllDeviceProfileData(Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getAllDeviceProfileData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getAllDeviceProfileDataSync()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getAllDataSync()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getData(Ljava/lang/String;JJ)Landroid/arch/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 242
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getData(Ljava/lang/String;JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getData(Ljava/lang/String;Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 264
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getData(Ljava/lang/String;Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .locals 0
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

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataByDeviceId(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .locals 0
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

    .line 133
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getDataByDeviceId(Ljava/util/List;)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDataSync(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 231
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getDataSync(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getDataSync(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [getAllDataSync] type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->getDataSync(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 256
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getDataSyncByDeviceId(Ljava/util/List;)Ljava/util/List;
    .locals 0
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

    .line 129
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->getDataSyncByDeviceId(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteTableData(JJ)Landroid/arch/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;>;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteTableData(JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getDeleteTableData(JJ)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method public getDeleteTableDataSync(JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->getDataSync(JJ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeletedSyncedData(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 327
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getDeletedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExistUuidInSyncData(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    .line 340
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->hasDataUuid(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSyncedData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getAllData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUpdatedSyncedData(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    .line 319
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->getUpdatedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertData(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
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

    const-string v0, "S HealthMonitor - DataRoomManager"

    .line 193
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

    .line 194
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;->insert(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 201
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public insertDeleteTableData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)J
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->insert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertDeleteTableData(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deleteTableDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertDeviceProfileData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->upsert(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertDeviceProfileData(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->deviceProfileDao()Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertHealthSyncData(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->insert(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - DataRoomManager"

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertAndGetNeedToSyncData has failed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public registerDatabase(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDeleted(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->setDeleted(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p0

    return-object p0
.end method

.method public setUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->setUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p0

    return-object p0
.end method

.method public unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->unSetUpdated(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    move-result-object p0

    return-object p0
.end method

.method public updateSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->mDatabase:Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/SHealthMonitorDatabase;->healthSdkSyncDataDao()Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao;->update(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)I

    move-result p0

    return p0
.end method
