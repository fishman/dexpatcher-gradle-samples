.class final Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$8;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 0

    .line 3631
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3628
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$8;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 0

    .line 3636
    new-array p0, p1, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3628
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$8;->newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    move-result-object p0

    return-object p0
.end method
