.class final enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$4;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3593
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V

    return-void
.end method


# virtual methods
.method final createFilter(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 3596
    new-instance p0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method
