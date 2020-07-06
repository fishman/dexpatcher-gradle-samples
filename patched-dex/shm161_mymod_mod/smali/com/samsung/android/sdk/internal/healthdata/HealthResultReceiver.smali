.class public abstract Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.super Ljava/lang/Object;
.source "HealthResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;,
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;,
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_TYPE_ASYNC:I = 0x0

.field private static final SYNC_TYPE_FORWARD_ASYNC:I = 0x2

.field private static final SYNC_TYPE_SYNC:I = 0x1


# instance fields
.field protected final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->mVersion:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$600(I)Ljava/lang/ClassLoader;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->getBundleClassLoader(I)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public static createSyncResult(IILandroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 2

    .line 72
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(IILandroid/os/Bundle;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    return-object v0
.end method

.method private static getBundleClassLoader(I)Ljava/lang/ClassLoader;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 122
    const-class p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 120
    :pswitch_0
    const-class p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_1
    const-class p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 116
    :pswitch_2
    const-class p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSync()Z
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->mVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
