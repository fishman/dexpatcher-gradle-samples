.class public abstract Lcom/samsung/android/sdk/healthdata/HealthDataObserver;
.super Ljava/lang/Object;
.source "HealthDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Health.Observer"

.field private static final sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mIObserver:Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mIObserver:Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mHandler:Landroid/os/Handler;

    return-void

    .line 190
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)Landroid/os/Handler;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static addObserver(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V
    .locals 2

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Data type is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->checkForValidObserver(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V

    .line 220
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 221
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    invoke-interface {v1}, Lcom/samsung/android/sdk/healthdata/IHealth;->getIDataWatcher()Lcom/samsung/android/sdk/healthdata/IDataWatcher;

    move-result-object v1

    if-nez v1, :cond_2

    .line 230
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "IDataWatcher is null"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mIObserver:Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDataWatcher;->registerDataObserver2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p2, "Health.Observer"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registration failed: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 238
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static checkForValidObserver(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V
    .locals 1

    if-nez p0, :cond_0

    .line 275
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid observer instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 278
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This thread has no looper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeObserver(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V
    .locals 3

    .line 252
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->checkForValidObserver(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V

    .line 254
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->sCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    invoke-interface {v1}, Lcom/samsung/android/sdk/healthdata/IHealth;->getIDataWatcher()Lcom/samsung/android/sdk/healthdata/IDataWatcher;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IDataWatcher is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->mIObserver:Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/sdk/healthdata/IDataWatcher;->unregisterDataObserver2(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/IHealthDataObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Health.Observer"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object unregistration failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 270
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract onChange(Ljava/lang/String;)V
.end method
