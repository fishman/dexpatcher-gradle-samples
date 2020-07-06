.class public Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;
.super Ljava/lang/Object;
.source "EcgHealthSdkHelper.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkPermissionSet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    .local v0, "hashSet":Ljava/util/HashSet;
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    const-string v2, "com.samsung.health.blood_pressure"

    sget-object v3, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method private makeBpHealthData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)Lcom/samsung/android/sdk/healthdata/HealthData;
    .registers 6
    .param p1, "ecgData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 52
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>()V

    .line 53
    .local v0, "healthData":Lcom/samsung/android/sdk/healthdata/HealthData;
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getAppUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->setSourceDevice(Ljava/lang/String;)V

    .line 54
    const-string v1, "systolic"

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getSystolic()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    .line 55
    const-string v1, "diastolic"

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDiastole()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    .line 58
    const-string v1, "start_time"

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    .line 59
    const-string v1, "time_offset"

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getTimeOffset()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public getDbDataType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string v0, "com.samsung.health.ecg"

    return-object v0
.end method

.method public getLastSyncedId()J
    .registers 3

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->getLastSyncedIdForDataStore()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSdkDataType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, "com.samsung.health.blood_pressure"

    return-object v0
.end method

.method public getSdkPermission()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;->getSdkPermissionSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSyncableDataCount(J)I
    .registers 4
    .param p1, "j"    # J

    .prologue
    .line 64
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getEcgSyncableDataCount(J)I

    move-result v0

    return v0
.end method

.method public makeHealthSyncData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSyncData;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getEcgDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    move-result-object v0

    .line 47
    .local v0, "bpDataSync":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;->makeBpHealthData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v6

    .line 48
    .local v6, "makeBpHealthData":Lcom/samsung/android/sdk/healthdata/HealthData;
    new-instance v1, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/samsung/android/sdk/healthdata/HealthData;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;)V

    return-object v1
.end method

.method public makeHealthSyncData(JI)Ljava/util/List;
    .registers 13
    .param p1, "j"    # J
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "arrayList":Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getInstance()Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/manager/DataRoomEcgManager;->getEcgDataSync(JI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .line 39
    .local v7, "next":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    invoke-direct {p0, v7}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgHealthSdkHelper;->makeBpHealthData(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v6

    .line 40
    .local v6, "makeBpHealthData":Lcom/samsung/android/sdk/healthdata/HealthData;
    new-instance v1, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    invoke-virtual {v7}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/samsung/android/sdk/healthdata/HealthData;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 42
    .end local v6    # "makeBpHealthData":Lcom/samsung/android/sdk/healthdata/HealthData;
    .end local v7    # "next":Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
    :cond_36
    return-object v0
.end method

.method public setLastSyncedId(J)V
    .registers 4
    .param p1, "j"    # J

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgSharedPreferenceHelper;->setLastSyncedIdForDataStore(J)V

    .line 69
    return-void
.end method
