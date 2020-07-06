.class public abstract Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;
.super Landroid/os/Binder;
.source "ICallbackRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

.field static final TRANSACTION_cancel:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    .line 58
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;->cancel(I)V

    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    move-result-object p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;->setCallback(ILcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;)V

    return v1

    :cond_0
    const-string p0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
