.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
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

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;
    .locals 3

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDataType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDeviceUuids:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDeviceUuids:Ljava/util/List;

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

    .line 1245
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Null device uuid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1250
    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDataType:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDeviceUuids:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;)V

    return-object v0

    .line 1239
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No data type or invalid data type is specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;
    .locals 0

    .line 1211
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public setSourceDevices(Ljava/util/List;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;"
        }
    .end annotation

    .line 1224
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method
