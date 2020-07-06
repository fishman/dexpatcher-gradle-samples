.class final Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;
.super Ljava/lang/Object;
.source "HealthResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 p0, 0x0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid result parcel type : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    return-object v0

    .line 95
    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Sync;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    return-object v0

    .line 97
    :pswitch_2
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 0

    .line 106
    new-array p0, p1, [Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;->newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object p0

    return-object p0
.end method
