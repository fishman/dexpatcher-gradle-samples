.class public Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;
.super Ljava/lang/Object;
.source "HealthDeviceManager.java"


# instance fields
.field private final mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    return-void
.end method

.method private checkForValidDeviceManagerState()V
    .locals 1

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 432
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal store connection state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private checkForValidString(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 425
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getNullArgumentMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;
    .locals 1

    .line 163
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IHealth;->getIDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 165
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IDeviceManager is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public changeCustomName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 417
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 419
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthDevice;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 211
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getAllRegisteredDevices()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeviceBySeed(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 263
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 265
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 287
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 289
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceUuidsByCustomName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 341
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 343
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceUuidsByGroup(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 317
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceUuidsByManufacturer(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 386
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    const/4 v0, 0x3

    .line 389
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeviceUuidsByModel(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidString(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 362
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    const/4 v0, 0x2

    .line 365
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 367
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object p0

    .line 187
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 189
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 231
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getNullArgumentMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->getDeviceManager()Lcom/samsung/android/sdk/healthdata/IDeviceManager;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDeviceManager;->checkForValidDeviceManagerState()V

    .line 238
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/healthdata/IDeviceManager;->registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
