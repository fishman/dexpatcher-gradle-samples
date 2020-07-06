.class public Lcom/samsung/accessory/utils/buffer/SABuffer;
.super Ljava/lang/Object;
.source "SABuffer.java"


# static fields
.field public static final ERROR_BUFFER_OVEFLOW:I = -0x2

.field public static final ERROR_BUFFER_RECYCLED:I = -0x1

.field public static final ERROR_BUFFER_UNDERFLOW:I = -0x3


# instance fields
.field private final data:[B

.field isRecycled:Z

.field private final length:I

.field private offset:I

.field private payloadLength:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    .line 40
    iput p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    .line 42
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 43
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    return-void
.end method


# virtual methods
.method public declared-synchronized extractFrom([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/utils/buffer/SaBufferException;
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to extract from a recycled buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-le v0, v1, :cond_1

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot extract from byte[]. Buffer length exceeded! [buff offset="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; payload len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; length to write = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; buff len = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance p2, Lcom/samsung/accessory/utils/buffer/SaBufferException;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 236
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized extractPayload()[B
    .locals 5

    monitor-enter p0

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    new-array v0, v0, [B

    .line 122
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 117
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized extractPayloadBuffer()Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 6

    monitor-enter p0

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v2, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    iput v1, v0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 94
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized extractTo(Lcom/samsung/accessory/utils/buffer/SABuffer;II)V
    .locals 3

    monitor-enter p0

    .line 269
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 270
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    if-le v0, v1, :cond_1

    .line 273
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot extract to SABuffer. Source buffer length exceeded its length! [buff offset = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; length to extract = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; buff len = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    invoke-virtual {p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget p2, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I

    .line 280
    iget p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 268
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBuffer()[B
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBufferLength()I
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 74
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 2

    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 136
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .locals 2

    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 150
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayloadLength()I
    .locals 2

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iget v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 179
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRecycled()Z
    .locals 1

    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()Z
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 209
    monitor-exit p0

    return v0

    .line 211
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->data:[B

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->recycle([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    .line 212
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 207
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(I)V
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_0
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPayloadLength(I)V
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->isRecycled:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_0
    iput p1, p0, Lcom/samsung/accessory/utils/buffer/SABuffer;->payloadLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 192
    monitor-exit p0

    throw p1
.end method
