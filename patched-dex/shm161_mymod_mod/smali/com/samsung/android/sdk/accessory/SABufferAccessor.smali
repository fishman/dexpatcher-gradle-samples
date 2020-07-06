.class public abstract Lcom/samsung/android/sdk/accessory/SABufferAccessor;
.super Ljava/lang/Object;
.source "SABufferAccessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_ACCESSOR_IMPL_CLASS:Ljava/lang/String; = "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

.field public static DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

    .line 19
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "com.samsung.accessory.utils.buffer.SABufferAccessorImpl"

    const/4 v3, 0x1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 23
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 27
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->DEFAULT:Lcom/samsung/android/sdk/accessory/SABufferAccessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected abstract clearCache(I)V
.end method

.method protected abstract dump()Ljava/lang/String;
.end method

.method protected abstract extractFrom(Lcom/samsung/accessory/utils/buffer/SABuffer;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/utils/buffer/SaBufferException;
        }
    .end annotation
.end method

.method protected abstract extractPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
.end method

.method protected abstract getBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)[B
.end method

.method protected abstract getOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract getPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract getlength(Lcom/samsung/accessory/utils/buffer/SABuffer;)I
.end method

.method protected abstract initializePool(Landroid/content/Context;)V
.end method

.method protected abstract obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
.end method

.method protected abstract obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
.end method

.method protected abstract recycle(Lcom/samsung/accessory/utils/buffer/SABuffer;)Z
.end method

.method protected abstract setOffset(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
.end method

.method protected abstract setPayloadlength(Lcom/samsung/accessory/utils/buffer/SABuffer;I)V
.end method
