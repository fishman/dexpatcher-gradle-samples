.class public Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.super Ljava/lang/Object;
.source "HealthResultHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseResult"
.end annotation


# static fields
.field private static final CACHE_STATUS_NO:I = 0x0

.field private static final CACHE_STATUS_YES:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_FAILED:I = 0x4

.field public static final STATUS_INVALID_INPUT_DATA:I = 0x8

.field public static final STATUS_OUT_OF_SPACE:I = 0x10

.field public static final STATUS_SUCCESSFUL:I = 0x1

.field public static final STATUS_UNKNOWN:I


# instance fields
.field final mCached:Z

.field final mCount:I

.field final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 172
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 181
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    .line 182
    iput-boolean p3, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 205
    iget p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget p2, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean p0, p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->mCached:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
