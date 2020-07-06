.class Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;
.super Ljava/lang/Object;
.source "SAAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryConnection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAdapter$1;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SAAdapter$AccessoryConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 237
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p0

    monitor-enter p0

    if-eqz p2, :cond_3

    .line 239
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accessory service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$402(Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/accessory/api/ISAFrameworkManagerV2;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    .line 242
    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 243
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$500(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$600(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v3

    const/16 v4, 0x9

    .line 246
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$700(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/android/sdk/accessory/SAAdapter$ServiceConnectionIndicationCallback;

    move-result-object v5

    .line 242
    invoke-interface/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 249
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unable to setup client Identity.Invalid response from Framework"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "fwk_version"

    const/16 v1, 0x141

    .line 253
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 254
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setActiveFrameworkVersion(I)V

    .line 256
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const-string v1, "clientId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$802(Lcom/samsung/android/sdk/accessory/SAAdapter;J)J

    .line 258
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 260
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to setup client Identity.Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "errorcode"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 263
    :cond_1
    :try_start_5
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received Client ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    const-string v0, "com.samsung.accessory.adapter.extra.PROCESS_ID"

    .line 265
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 267
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkVersion()I

    move-result v1

    const/16 v2, 0x4f

    if-lt v1, v2, :cond_2

    .line 269
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$400(Lcom/samsung/android/sdk/accessory/SAAdapter;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$800(Lcom/samsung/android/sdk/accessory/SAAdapter;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$902(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    .line 270
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running in SAP process, Updated my proxy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$900(Lcom/samsung/android/sdk/accessory/SAAdapter;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkProcessId(I)V

    const-string v0, "com.samsung.accessory.adapter.extra.HEADER_LEN"

    .line 274
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxHeaderLength(I)V

    const-string v0, "com.samsung.accessory.adapter.extra.FOOTER_LEN"

    .line 275
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxFooterLength(I)V

    const-string v0, "com.samsung.accessory.adapter.extra.MSG_HEADER_LEN"

    .line 276
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->setFrameworkMaxMsgHeaderLength(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 279
    :try_start_6
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to setup client Identity."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 281
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1000(Lcom/samsung/android/sdk/accessory/SAAdapter;Landroid/os/RemoteException;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 285
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 286
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1100(Lcom/samsung/android/sdk/accessory/SAAdapter;)V

    .line 287
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 292
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p0

    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Accessory service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->setState(I)V

    .line 295
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$200()Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->access$1200(Lcom/samsung/android/sdk/accessory/SAAdapter;Z)V

    .line 296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
