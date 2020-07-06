.class public final Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;
.super Ljava/lang/Object;
.source "InsertRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mDataType:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mDataType:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    return-void
.end method

.method private checkValidDeviceSource(Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 0

    if-nez p1, :cond_0

    .line 77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthData;->getSourceDevice()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source device is not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final addHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->checkValidDeviceSource(Lcom/samsung/android/sdk/healthdata/HealthData;)V

    .line 90
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addHealthData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data list is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 102
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->checkValidDeviceSource(Lcom/samsung/android/sdk/healthdata/HealthData;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->mItems:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
