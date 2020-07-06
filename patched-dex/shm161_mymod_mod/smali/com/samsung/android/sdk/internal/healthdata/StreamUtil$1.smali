.class final Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;
.super Ljava/lang/Object;
.source "StreamUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->sendStreamCore(Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fdSupplier:Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;

.field final synthetic val$inputStream:Ljava/io/InputStream;

.field final synthetic val$property:Ljava/lang/String;

.field final synthetic val$streamId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$inputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$streamId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$fdSupplier:Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;

    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$property:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$streamId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 129
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    return-void

    .line 122
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$fdSupplier:Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;

    iget-object v3, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$property:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$streamId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :try_start_4
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/high16 v4, 0x10000

    .line 124
    :try_start_5
    new-array v5, v4, [B

    :goto_0
    const/4 v6, 0x0

    .line 126
    invoke-virtual {v1, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_2

    .line 127
    invoke-virtual {v3, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 129
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 142
    :cond_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v3

    .line 117
    :goto_1
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v4

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 129
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    :goto_3
    throw v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p0

    move-object v0, v3

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v0, v3

    goto :goto_4

    :catchall_4
    move-exception p0

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v2, v0

    .line 130
    :goto_4
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send stream for ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil$1;->val$streamId:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HealthData.Stream"

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v2, :cond_6

    .line 134
    :try_start_c
    invoke-virtual {v2, p0}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_7
    :cond_6
    if-eqz v0, :cond_7

    .line 142
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    return-void

    :cond_7
    return-void

    :goto_5
    if-eqz v0, :cond_8

    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 145
    :catch_9
    :cond_8
    throw p0
.end method
