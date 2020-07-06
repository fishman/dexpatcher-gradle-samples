.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;
.super Ljava/lang/Object;
.source "HealthResultHolderImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
.implements Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder<",
        "TT;>;",
        "Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Health.ResultHolder"


# instance fields
.field private mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field private volatile mConsumed:Z

.field private mFinished:Z

.field private final mHandler:Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mLock:Ljava/lang/Object;

.field private volatile mResult:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mHandler:Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mConsumed:Z

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mResult:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 131
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    return-void
.end method

.method private confirmResultNotConsumed()V
    .locals 1

    .line 172
    iget-boolean p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mConsumed:Z

    if-eqz p0, :cond_0

    .line 173
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Result has already been processed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private confirmResultReady()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->isReady()Z

    move-result p0

    if-nez p0, :cond_0

    .line 179
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Result is not ready"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private isCanceled()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-boolean p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCanceled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isReady()Z
    .locals 4

    .line 54
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private processInterrupt()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mFinished:Z

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private processResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mResult:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 165
    iget-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCanceled:Z

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mHandler:Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->acquireResult()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;->send(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected acquireResult()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultReady()V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultNotConsumed()V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mResult:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->clearStatus()V

    .line 64
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 71
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "await() must not be called on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultNotConsumed()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->processInterrupt()V

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultReady()V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->acquireResult()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p0

    return-object p0
.end method

.method public final cancel()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCanceled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mConsumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->cancelResult()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Health.ResultHolder"

    .line 120
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCanceled:Z

    .line 125
    monitor-exit v0

    return-void

    .line 114
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected cancelResult()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->setResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    return-void
.end method

.method public final setResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mFinished:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCanceled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Result have been set already"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultNotConsumed()V

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->processResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 160
    monitor-exit v0

    return-void

    .line 150
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setResultListener(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->confirmResultNotConsumed()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mHandler:Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->acquireResult()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;->send(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;->mCallback:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    .line 101
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
