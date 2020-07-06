.class public Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field private static final CHUNK_LENGTH:I = 0x10000

.field private static final LOG_TAG:Ljava/lang/String; = "HealthData.Stream"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteArray(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->getInputStream(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 79
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 80
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, p1, p2}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->requestFileDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :catch_1
    move-exception p0

    .line 82
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseStreamId(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method private static runOnHandlerIfMainThread(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 156
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static sendStreamCore(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler;)V
    .locals 1

    .line 110
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;-><init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->runOnHandlerIfMainThread(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method public static sendStreamIfPresent(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/util/List;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlobKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlob(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-static {v0, v2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->parseStreamId(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, v2, v4, v5, p2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamCore(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getInputStreamKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-static {v0, v2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->parseStreamId(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/healthdata/HealthData;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 101
    invoke-static {p0, v2, v3, v4, p2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamCore(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static toByteArray(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/high16 v2, 0x10000

    .line 65
    :try_start_1
    new-array v2, v2, [B

    .line 67
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    return-object v2

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 63
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v3, :cond_3

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_2
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 63
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_3
    if-eqz p0, :cond_5

    if-eqz v2, :cond_4

    .line 71
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_3
    move-exception p0

    :try_start_9
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_4
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    return-object v0
.end method
