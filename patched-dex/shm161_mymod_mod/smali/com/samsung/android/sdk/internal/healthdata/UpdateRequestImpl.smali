.class public final Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;
.super Ljava/lang/Object;
.source "UpdateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Lcom/samsung/android/sdk/healthdata/HealthData;

.field private final mDataType:Ljava/lang/String;

.field private mDeviceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDataType:Ljava/lang/String;

    .line 50
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 51
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 53
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthData;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDataType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDataObject()Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    return-object p0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceUuids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 63
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mData:Lcom/samsung/android/sdk/healthdata/HealthData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
