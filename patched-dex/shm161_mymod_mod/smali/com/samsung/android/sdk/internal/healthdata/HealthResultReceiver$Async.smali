.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Async"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;,
        Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

.field private final mCode:I

.field private mIntent:Landroid/content/Intent;

.field private mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

.field private mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

.field private final mType:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCode:I

    .line 200
    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    .line 206
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCode:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mType:I

    .line 215
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mType:I

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->access$600(I)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 217
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mIntent:Landroid/content/Intent;

    .line 220
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;->setCallback(ILcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;)Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;ILandroid/os/Bundle;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method private onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "type"

    const/4 v1, -0x1

    .line 277
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "parcel"

    .line 295
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "PERMISSION_RESULT_COUNT"

    .line 288
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PERMISSION_RESULT_COUNT"

    .line 289
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "type"

    .line 290
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 291
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Bundle;I)V

    .line 292
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "parcel"

    .line 284
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    .line 285
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "parcel"

    .line 280
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    :goto_0
    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;->cancel(I)V

    :cond_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public isSync()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onCancelResult(I)V
    .locals 0

    return-void
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

    .line 267
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mListener:Lcom/samsung/android/sdk/internal/healthdata/RemoteResultListener;

    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mReceiver:Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    return-void

    .line 261
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 227
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 231
    new-instance p2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    .line 233
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCallback:Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;

    invoke-interface {p2}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 237
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 242
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 234
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
