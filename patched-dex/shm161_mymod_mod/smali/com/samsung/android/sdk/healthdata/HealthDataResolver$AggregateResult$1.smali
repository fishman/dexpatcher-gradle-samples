.class final Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult$1;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;
    .locals 1

    .line 3046
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3042
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;
    .locals 0

    .line 3051
    new-array p0, p1, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3042
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult$1;->newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    move-result-object p0

    return-object p0
.end method
