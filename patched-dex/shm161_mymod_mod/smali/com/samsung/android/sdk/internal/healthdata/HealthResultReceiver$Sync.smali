.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sync"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mCode:I

.field private final mType:I


# direct methods
.method private constructor <init>(IILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 137
    iput p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mCode:I

    .line 138
    iput p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mType:I

    .line 139
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/os/Bundle;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mCode:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mType:I

    .line 152
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mType:I

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->access$600(I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public isSync()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 158
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p2, 0x0

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 170
    invoke-virtual {p1, p2, p0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
