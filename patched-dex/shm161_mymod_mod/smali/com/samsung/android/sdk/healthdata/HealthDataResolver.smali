.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;,
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Landroid/os/Handler;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    .line 291
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;
    .locals 1

    .line 296
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/sdk/healthdata/IHealth;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object p0

    if-nez p0, :cond_0

    .line 298
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IDataResolver is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLooper()Landroid/os/Looper;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 666
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This thread has no looper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public aggregate(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;",
            ">;"
        }
    .end annotation

    .line 644
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    if-nez v0, :cond_0

    .line 645
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid aggregate request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 649
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 650
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    .line 653
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 654
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 655
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->aggregateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 659
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .line 487
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    if-nez v0, :cond_0

    .line 488
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 493
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    .line 496
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 497
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 498
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->deleteData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 502
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteWithPermission(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .line 523
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    if-nez v0, :cond_0

    .line 524
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 528
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid activity instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 531
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 533
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    .line 536
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 537
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 539
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->deleteDataWithPermission(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)Landroid/content/Intent;

    move-result-object p0

    .line 540
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 543
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insert(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .line 325
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    if-nez v0, :cond_0

    .line 326
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 331
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->createAndSetResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p0

    return-object p0

    .line 338
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    new-instance v3, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-static {v3, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v4

    .line 343
    iget-object v5, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->insertData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)V

    .line 345
    new-instance v3, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver;Lcom/samsung/android/sdk/healthdata/IDataResolver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->getItems()Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 345
    invoke-static {v3, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamIfPresent(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/util/List;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 357
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 355
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/os/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertWithPermission(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .line 379
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    if-nez v0, :cond_0

    .line 380
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 384
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid activity instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 389
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 391
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->createAndSetResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p0

    return-object p0

    .line 396
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    new-instance v3, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {v3, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v4

    .line 400
    iget-object v5, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->insertDataWithPermission(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)Landroid/content/Intent;

    move-result-object v3

    .line 401
    invoke-virtual {p2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 403
    new-instance p2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$2;

    invoke-direct {p2, p0, v0, p1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$2;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver;Lcom/samsung/android/sdk/healthdata/IDataResolver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->getItems()Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 403
    invoke-static {p2, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamIfPresent(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/util/List;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 415
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/os/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;",
            ">;"
        }
    .end annotation

    .line 565
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    if-nez v0, :cond_0

    .line 566
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 571
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 574
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 575
    invoke-static {v2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeReadResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;Lcom/samsung/android/sdk/healthdata/IDataResolver;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 576
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->readData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 580
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readWithPermission(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;",
            ">;"
        }
    .end annotation

    .line 601
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    if-nez v0, :cond_0

    .line 602
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 606
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid activity instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 610
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 611
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 614
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 615
    invoke-static {v2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeReadResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;Lcom/samsung/android/sdk/healthdata/IDataResolver;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 617
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->readDataWithPermission(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)Landroid/content/Intent;

    move-result-object p0

    .line 618
    invoke-virtual {p2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 621
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .line 437
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    if-nez v0, :cond_0

    .line 438
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid request instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/IDataResolver;

    move-result-object v0

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 443
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    .line 446
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    new-instance v3, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-static {v3, v1}, Lcom/samsung/android/sdk/internal/healthdata/IpcUtil;->makeResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v4

    .line 451
    iget-object v5, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v3, p1}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->updateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)V

    .line 453
    new-instance v3, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$3;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$3;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver;Lcom/samsung/android/sdk/healthdata/IDataResolver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->getDataObject()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 453
    invoke-static {v3, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamIfPresent(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/util/List;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 465
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 463
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/os/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
