.class public final Lcom/samsung/android/sdk/healthdata/HealthDevice;
.super Ljava/lang/Object;
.source "HealthDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_COMPANION:I = 0x57e43

.field public static final GROUP_EXTERNAL:I = 0x57e42

.field public static final GROUP_MOBILE:I = 0x57e41

.field public static final GROUP_UNKNOWN:I


# instance fields
.field private final mCustomName:Ljava/lang/String;

.field private final mGroup:I

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSeed:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mUuid:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mCustomName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mModel:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mManufacturer:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mGroup:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthDevice$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mUuid:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;->access$000(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mCustomName:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;->access$100(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mModel:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;->access$200(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mManufacturer:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;->access$300(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mGroup:I

    .line 97
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;->access$400(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;Lcom/samsung/android/sdk/healthdata/HealthDevice$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDevice$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mUuid:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mManufacturer:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mModel:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mCustomName:Ljava/lang/String;

    .line 88
    iput p6, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mGroup:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 163
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 167
    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    .line 170
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getCustomName()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mCustomName:Ljava/lang/String;

    return-object p0
.end method

.method public final getGroup()I
    .locals 0

    .line 249
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mGroup:I

    return p0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeed()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 124
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mCustomName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mModel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mGroup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->mSeed:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
