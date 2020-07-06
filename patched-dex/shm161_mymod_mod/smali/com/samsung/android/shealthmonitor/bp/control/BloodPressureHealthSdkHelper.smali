.class public Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;
.super Ljava/lang/Object;
.source "BloodPressureHealthSdkHelper.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkPermissionSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 38
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    const-string v2, "com.samsung.health.blood_pressure"

    sget-object v3, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private makeBpHealthData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 3

    .line 69
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>()V

    .line 71
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getAppUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->setSourceDevice(Ljava/lang/String;)V

    const-string v0, "systolic"

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    const-string v0, "diastolic"

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    const-string v0, "pulse"

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->putInt(Ljava/lang/String;I)V

    const-string v0, "mean"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->putFloat(Ljava/lang/String;F)V

    const-string v0, "start_time"

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    const-string v0, "time_offset"

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getTimeOffset()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public getDbDataType()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.health.bp"

    return-object p0
.end method

.method public getLastSyncedId()J
    .locals 2

    .line 94
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastSyncedIdForDataStore()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSdkDataType()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.health.blood_pressure"

    return-object p0
.end method

.method public getSdkPermission()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;->getSdkPermissionSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSyncableDataCount(J)I
    .locals 0

    .line 84
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBpSyncableDataCount(J)I

    move-result p0

    return p0
.end method

.method public makeHealthSyncData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSyncData;
    .locals 6

    .line 61
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBpDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;->makeBpHealthData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v5

    .line 64
    new-instance p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/samsung/android/sdk/healthdata/HealthData;->getUuid()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;)V

    return-object p0
.end method

.method public makeHealthSyncData(JI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBpDataSync(JI)Ljava/util/List;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 50
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureHealthSdkHelper;->makeBpHealthData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v6

    .line 51
    new-instance p3, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v6}, Lcom/samsung/android/sdk/healthdata/HealthData;->getUuid()Ljava/lang/String;

    move-result-object v5

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;)V

    .line 53
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setLastSyncedId(J)V
    .locals 0

    .line 89
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setLastSyncedIdForDataStore(J)V

    return-void
.end method
