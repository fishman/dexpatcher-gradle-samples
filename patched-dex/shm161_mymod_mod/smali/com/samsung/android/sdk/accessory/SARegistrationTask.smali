.class Lcom/samsung/android/sdk/accessory/SARegistrationTask;
.super Ljava/lang/Object;
.source "SARegistrationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SARegistrationTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFutureTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRunning:Z

.field private mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid context:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SARegistrationTask;)Landroid/content/Context;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z

    return p1
.end method


# virtual methods
.method declared-synchronized prepare()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;-><init>(Lcom/samsung/android/sdk/accessory/SARegistrationTask;Lcom/samsung/android/sdk/accessory/SARegistrationTask$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    .line 31
    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    .line 32
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 34
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SARegistrationTask instance cannot be reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mRegistrationTask:Lcom/samsung/android/sdk/accessory/SARegistrationTask$TaskRunner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "[SA_SDK]SARegistrationTask"

    const-string v1, "Registration task has already started"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Registration task is already running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    const-string v2, "RegistreationThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SARegistrationTask;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 40
    :cond_2
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    throw v0
.end method
