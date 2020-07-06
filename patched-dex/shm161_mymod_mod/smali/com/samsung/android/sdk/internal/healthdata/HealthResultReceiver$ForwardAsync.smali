.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardAsync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;,
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;
    }
.end annotation


# instance fields
.field private final mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

.field private mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

.field private mReceiverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 353
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 355
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    .line 356
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 375
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 378
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mVersion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiverId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 362
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    .line 363
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 364
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiverId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;ILandroid/os/Bundle;)V
    .locals 0

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method private onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    if-nez v0, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "type"

    const/4 v1, -0x1

    .line 427
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "parcel"

    .line 448
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 449
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "PERMISSION_RESULT_COUNT"

    .line 441
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PERMISSION_RESULT_COUNT"

    .line 442
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "type"

    .line 443
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 444
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Bundle;I)V

    .line 445
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "parcel"

    .line 437
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    .line 438
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "parcel"

    .line 430
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    if-eqz v0, :cond_1

    const-string v1, "result_identifier"

    .line 432
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->setResultId(Ljava/lang/String;)V

    .line 434
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    :goto_0
    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    return-void

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public getReceiverId()Ljava/lang/String;
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiverId:Ljava/lang/String;

    return-object p0
.end method

.method public isSync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">(",
            "Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 409
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 391
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 393
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    instance-of p2, p2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;

    if-nez p2, :cond_0

    .line 394
    new-instance p2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    .line 396
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    invoke-interface {p2}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p2, 0x2

    .line 398
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->mReceiverId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
