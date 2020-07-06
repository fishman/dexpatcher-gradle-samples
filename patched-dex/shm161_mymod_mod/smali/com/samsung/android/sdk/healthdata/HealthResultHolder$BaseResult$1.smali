.class final Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult$1;
.super Ljava/lang/Object;
.source "HealthResultHolder.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 0

    .line 217
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 0

    .line 222
    new-array p0, p1, [Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult$1;->newArray(I)[Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p0

    return-object p0
.end method
