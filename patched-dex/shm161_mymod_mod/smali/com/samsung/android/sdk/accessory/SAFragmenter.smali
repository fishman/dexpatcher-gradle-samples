.class Lcom/samsung/android/sdk/accessory/SAFragmenter;
.super Ljava/lang/Object;
.source "SAFragmenter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFragmenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/samsung/android/sdk/accessory/SAFragmenter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAPDU:[B

.field private mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

.field private mMaxFooterLen:I

.field private mMaxFragmentSize:I

.field private mMaxHeaderLen:I

.field private mMaxPaddingLen:I

.field mMyKey:Ljava/lang/Object;

.field private mTotSent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    .line 44
    new-instance p2, Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/accessory/SAFragment;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-void
.end method


# virtual methods
.method configure(IIII[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Concurrent write detected! Another write active: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    .line 53
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    .line 54
    iput p4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    sub-int v0, p3, p4

    .line 55
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 56
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    .line 57
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "confiure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    return-object p0
.end method

.method getTotalSent()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    return p0
.end method

.method nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    if-nez v0, :cond_0

    .line 63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Send Failed! Fragmenter is already shutdown"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return-object v2

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    if-gt v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v0, v0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexNotFragment()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    .line 74
    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    if-nez v0, :cond_3

    .line 75
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 76
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexFirstFragment()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    if-le v0, v1, :cond_4

    .line 78
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFragmentSize:I

    .line 79
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexIntermediateFragment()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    sub-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndexLastFragment()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAFragment;->setIndex(I)V

    .line 85
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxPaddingLen:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxFooterLen:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v1

    .line 87
    iget v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMaxHeaderLen:I

    invoke-virtual {v1, v3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    iget v4, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->extractFrom([BII)V

    .line 90
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/accessory/SAFragment;->setBuffer(Lcom/samsung/accessory/utils/buffer/SABuffer;)V

    .line 91
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mTotSent:I

    .line 92
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;
    :try_end_0
    .catch Lcom/samsung/accessory/utils/buffer/SaBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 94
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BufferException: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method shutdown()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mFragment:Lcom/samsung/android/sdk/accessory/SAFragment;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    .line 111
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->sFragmenters:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mMyKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAFragmenter;->mAPDU:[B

    return-void
.end method
