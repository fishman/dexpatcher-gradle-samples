.class public Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "AndFilter.java"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    .line 31
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 32
    invoke-static {v2}, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->mFilters:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->mFilters:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;->mFilters:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
