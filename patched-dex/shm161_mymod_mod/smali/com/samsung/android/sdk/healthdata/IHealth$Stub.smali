.class public abstract Lcom/samsung/android/sdk/healthdata/IHealth$Stub;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/IHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sdk.healthdata.IHealth"

.field static final TRANSACTION_getConnectionResult:I = 0x2

.field static final TRANSACTION_getConnectionResult2:I = 0xa

.field static final TRANSACTION_getIDataResolver:I = 0x5

.field static final TRANSACTION_getIDataWatcher:I = 0x6

.field static final TRANSACTION_getIDeviceManager:I = 0x4

.field static final TRANSACTION_getUserProfile:I = 0x1

.field static final TRANSACTION_getUserProfile2:I = 0xb

.field static final TRANSACTION_isHealthDataPermissionAcquired:I = 0x8

.field static final TRANSACTION_isHealthDataPermissionAcquired2:I = 0xe

.field static final TRANSACTION_isKeyAccessible:I = 0x9

.field static final TRANSACTION_requestHealthDataPermissions:I = 0x7

.field static final TRANSACTION_requestHealthDataPermissions2:I = 0xd

.field static final TRANSACTION_waitForInit:I = 0x3

.field static final TRANSACTION_waitForInit2:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/IHealth;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/IHealth;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/IHealth;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/IHealth$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 255
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 260
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 265
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_1
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 225
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 230
    sget-object p4, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    goto :goto_1

    :cond_2
    move-object p4, v2

    .line 236
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/os/Bundle;

    .line 242
    :cond_3
    invoke-virtual {p0, p1, p4, v2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 245
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    invoke-virtual {p0, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 249
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    :pswitch_2
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 207
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 212
    sget-object p4, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    .line 218
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 219
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 191
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getUserProfile2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 197
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 201
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    :pswitch_4
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 170
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 173
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 178
    :cond_7
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    .line 181
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 185
    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    :pswitch_5
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 162
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->isKeyAccessible()Z

    move-result p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 141
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 144
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 149
    :cond_9
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->isHealthDataPermissionAcquired(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_a

    .line 152
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 156
    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    :pswitch_7
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 123
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/os/Bundle;

    .line 128
    :cond_b
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->requestHealthDataPermissions(Landroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_c

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 135
    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    :pswitch_8
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 112
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getIDataWatcher()Lcom/samsung/android/sdk/healthdata/IDataWatcher;

    move-result-object p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_d

    .line 115
    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IDataWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_9
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 104
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object p0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e

    .line 107
    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_a
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getIDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_f

    .line 99
    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :pswitch_b
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 80
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->waitForInit(J)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object p0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_10

    .line 86
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 90
    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    :pswitch_c
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_11

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 74
    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    :pswitch_d
    const-string p1, "com.samsung.android.sdk.healthdata.IHealth"

    .line 48
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/IHealth$Stub;->getUserProfile()Landroid/os/Bundle;

    move-result-object p0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_12

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 56
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    :cond_13
    const-string p0, "com.samsung.android.sdk.healthdata.IHealth"

    .line 43
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
