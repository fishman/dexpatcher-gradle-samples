.class public Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
.super Ljava/lang/Object;
.source "HealthPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;,
        Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;,
        Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Health.Permission"


# instance fields
.field private final mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    return-void
.end method

.method static synthetic access$100(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 0

    .line 217
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->convertBundleToPermissionMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static convertBundleToPermissionMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 446
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_0

    .line 452
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->values()[Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 453
    invoke-virtual {v7}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result v8

    aget v8, v3, v8

    if-nez v8, :cond_1

    .line 455
    new-instance v8, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    invoke-direct {v8, v2, v7}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 457
    new-instance v8, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    invoke-direct {v8, v2, v7}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static convertKeySetToBundle(Ljava/util/Set;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    .line 407
    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->getDataType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 409
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input argument includes null as a dataType of PermissionKey"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->getPermissionType()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 424
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 430
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    move v4, v6

    goto :goto_2

    .line 432
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    :cond_4
    return-object p0
.end method


# virtual methods
.method public isPermissionAcquired(Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 371
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input argument has no items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object v0

    .line 381
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->convertKeySetToBundle(Ljava/util/Set;)Landroid/os/Bundle;

    move-result-object p1

    :try_start_0
    const-string v1, "Health.Permission"

    const-string v2, "Checking the health data permissions are acquired..."

    .line 385
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/healthdata/IHealth;->isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 391
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Binder error occurs during getting the result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->convertBundleToPermissionMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 395
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPermissions(Ljava/util/Set;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p0

    return-object p0
.end method

.method public requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 266
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input argument has no items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object v0

    .line 276
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->convertKeySetToBundle(Ljava/util/Set;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "Health.Permission"

    const-string v2, "Trying to acquire the health data permissions..."

    .line 279
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, p1}, Lcom/samsung/android/sdk/healthdata/IHealth;->requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    .line 289
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 293
    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid instance of Activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 291
    throw p0

    .line 296
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 297
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_3

    const/high16 p2, 0x10000000

    .line 298
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_0
    return-object v2

    :catch_2
    move-exception p0

    .line 307
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
