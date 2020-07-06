.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/sdk/healthdata/HealthData;

.field private mDataType:Ljava/lang/String;

.field private mDeviceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;
    .locals 4

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDataType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1097
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Null device uuid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1101
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDataType:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;)V

    return-object v0

    .line 1092
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "at least valid one of data type or health data object is not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public setHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-object p0
.end method

.method public setSourceDevices(Ljava/util/List;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;"
        }
    .end annotation

    .line 1070
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method
