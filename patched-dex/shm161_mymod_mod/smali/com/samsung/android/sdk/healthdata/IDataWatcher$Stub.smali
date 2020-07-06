.class public abstract Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;
.super Landroid/os/Binder;
.source "IDataWatcher.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/IDataWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/IDataWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sdk.healthdata.IDataWatcher"

.field static final TRANSACTION_registerDataObserver:I = 0x1

.field static final TRANSACTION_registerDataObserver2:I = 0x3

.field static final TRANSACTION_unregisterDataObserver:I = 0x2

.field static final TRANSACTION_unregisterDataObserver2:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IDataWatcher;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/IDataWatcher;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/IDataWatcher;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;->unregisterDataObserver2(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 68
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p4, p2}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;->registerDataObserver2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 59
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;->unregisterDataObserver(Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDataWatcher$Stub;->registerDataObserver(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    const-string p0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
