.class Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
.super Ljava/lang/Object;
.source "SaBufferPoolConfig.java"


# static fields
.field static final VERSION:Ljava/lang/String; = "1.0.2"


# instance fields
.field mCacheSize:I

.field mContext:Landroid/content/Context;

.field mIsDefault:Z

.field mLogTag:Ljava/lang/String;

.field mMaxChunkSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to configure the Pool!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 35
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to configure the Pool!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    .line 40
    iput p4, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    return-void
.end method

.method static createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
