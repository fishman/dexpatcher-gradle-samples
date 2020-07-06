.class public abstract Landroid/databinding/ViewDataBinding;
.super Landroid/databinding/BaseObservable;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/ViewDataBinding$OnStartListener;,
        Landroid/databinding/ViewDataBinding$CreateWeakListener;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I = 0x8

.field private static final CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry$NotifierCallback<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroid/databinding/ViewDataBinding;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroid/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    .line 85
    sget v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    .line 90
    new-instance v0, Landroid/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 100
    new-instance v0, Landroid/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 110
    new-instance v0, Landroid/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 120
    new-instance v0, Landroid/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 128
    new-instance v0, Landroid/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;

    .line 148
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 154
    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-void

    .line 156
    :cond_1
    new-instance v0, Landroid/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method static synthetic access$002(Landroid/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private executeBindingsInternal()V
    .locals 4

    .line 419
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    const/4 v1, 0x0

    .line 427
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 428
    iget-object v2, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 429
    iget-object v2, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    invoke-virtual {v2, p0, v0, v3}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 432
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 436
    :cond_2
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-nez v0, :cond_3

    .line 437
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executeBindings()V

    .line 438
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v3}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 442
    :cond_3
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    return-void
.end method

.method static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 489
    sget v0, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 409
    invoke-direct {p0}, Landroid/databinding/ViewDataBinding;->executeBindingsInternal()V

    return-void

    .line 411
    :cond_0
    iget-object p0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method protected requestRebind()V
    .locals 2

    .line 533
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 534
    iget-object p0, p0, Landroid/databinding/ViewDataBinding;->mContainingBinding:Landroid/databinding/ViewDataBinding;

    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    .line 536
    :cond_0
    monitor-enter p0

    .line 537
    :try_start_0
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_1

    .line 538
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 541
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 544
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 548
    :cond_2
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    .line 551
    :cond_3
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 541
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
