.class final Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl$1;
.super Ljava/lang/Object;
.source "UpdateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;
    .locals 0

    .line 76
    new-instance p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;
    .locals 0

    .line 81
    new-array p0, p1, [Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl$1;->newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    move-result-object p0

    return-object p0
.end method
