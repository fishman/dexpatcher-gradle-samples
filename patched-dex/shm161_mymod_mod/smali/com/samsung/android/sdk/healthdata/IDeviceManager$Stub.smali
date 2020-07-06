.class public abstract Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/IDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/IDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sdk.healthdata.IDeviceManager"

.field static final TRANSACTION_changeDeviceName:I = 0x6

.field static final TRANSACTION_getAllRegisteredDevices:I = 0x2

.field static final TRANSACTION_getDeviceByUuid:I = 0x7

.field static final TRANSACTION_getDeviceUuidsBy:I = 0x8

.field static final TRANSACTION_getLocalDevice:I = 0x1

.field static final TRANSACTION_getRegisteredDevice:I = 0x3

.field static final TRANSACTION_getRegisteredDeviceByUuid:I = 0x4

.field static final TRANSACTION_registerDevice:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IDeviceManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 145
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 129
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_2
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 117
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 102
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    sget-object p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 110
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_4
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 86
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    :pswitch_5
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 70
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    :pswitch_6
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getAllRegisteredDevices()Ljava/util/List;

    move-result-object p0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_7
    const-string p1, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager$Stub;->getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 56
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    :cond_5
    const-string p0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
