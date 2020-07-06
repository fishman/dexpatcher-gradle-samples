.class public Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.source "NumberArrayFilter.java"


# instance fields
.field private mField:Ljava/lang/String;

.field private mValues:[Ljava/lang/Number;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Number;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;-><init>()V

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mField:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mValues:[Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mField:Ljava/lang/String;

    return-object p0
.end method

.method public getList()[Ljava/lang/Number;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mValues:[Ljava/lang/Number;

    return-object p0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mField:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [Ljava/lang/Number;

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mValues:[Ljava/lang/Number;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mField:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;->mValues:[Ljava/lang/Number;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
