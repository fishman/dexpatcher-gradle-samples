.class public Lcom/samsung/android/shealthmonitor/data/HealthSyncData;
.super Ljava/lang/Object;
.source "HealthSyncData.kt"


# instance fields
.field private healthData:Lcom/samsung/android/sdk/healthdata/HealthData;

.field private id:J

.field private samsungDataStoreUuid:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 1

    const-string v0, "uuid"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samsungDataStoreUuid"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->id:J

    .line 7
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->uuid:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->samsungDataStoreUuid:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->healthData:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-void
.end method


# virtual methods
.method public final getHealthData()Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->healthData:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->id:J

    return-wide v0
.end method

.method public final getSamsungDataStoreUuid()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->samsungDataStoreUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public final setHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->healthData:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-void
.end method

.method public final setId(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->id:J

    return-void
.end method

.method public final setSamsungDataStoreUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->samsungDataStoreUuid:Ljava/lang/String;

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->uuid:Ljava/lang/String;

    return-void
.end method
