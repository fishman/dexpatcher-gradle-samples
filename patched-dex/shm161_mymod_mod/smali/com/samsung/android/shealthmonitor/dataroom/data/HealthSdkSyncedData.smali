.class public final Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;
.super Ljava/lang/Object;
.source "HealthSdkSyncedData.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dataUuid:Ljava/lang/String;

.field private deleted:I

.field private samsungHealthDataUuid:Ljava/lang/String;

.field private sdkDataType:Ljava/lang/String;

.field private updated:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->dataUuid:Ljava/lang/String;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->samsungHealthDataUuid:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->sdkDataType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->updated:I

    .line 37
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->deleted:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samsungHealthDataUuid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkDataType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->dataUuid:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->samsungHealthDataUuid:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->sdkDataType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->updated:I

    .line 46
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->deleted:I

    return-void
.end method


# virtual methods
.method public final getDataUuid()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->dataUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeleted()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->deleted:I

    return p0
.end method

.method public final getSamsungHealthDataUuid()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->samsungHealthDataUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getSdkDataType()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->sdkDataType:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdated()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->updated:I

    return p0
.end method

.method public final setDataUuid(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->dataUuid:Ljava/lang/String;

    return-void
.end method

.method public final setDeleted(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->deleted:I

    return-void
.end method

.method public final setSamsungHealthDataUuid(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->samsungHealthDataUuid:Ljava/lang/String;

    return-void
.end method

.method public final setSdkDataType(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->sdkDataType:Ljava/lang/String;

    return-void
.end method

.method public final setUpdated(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->updated:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HealthSdkSyncData{, dataUuid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->dataUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', samsungHealthDataUuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->samsungHealthDataUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', sdkDataType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->sdkDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->updated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->deleted:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
