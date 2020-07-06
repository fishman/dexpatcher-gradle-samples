.class Lcom/samsung/accessory/utils/buffer/SaBufferPool;
.super Ljava/lang/Object;
.source "SaBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    }
.end annotation


# static fields
.field private static final BUFFER_ACCESS_LOCK:Ljava/lang/Object;

.field private static final BUFFER_CACHE_SIZE_DEFUALT:I = 0x400000

.field private static final CHUNK_LIMIT_DEFAULT:I = 0x1

.field private static final MAX_CHUNK_SIZE:I = 0x10400

.field private static final MAX_NUM_OF_BUFFER_AVAILABILITY_RETRY:I = 0x3

.field private static final MIN_CHUNK_DEMAND_FACTOR:F = 0.9f

.field private static final MIN_CHUNK_SIZE:I = 0x18

.field private static sBufferCacheSize:I

.field private static final sBufferRangeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheThresholdHigh:I

.field private static sCacheThresholdMed:I

.field private static final sChunkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentCacheSize:I

.field private static sIsInitialised:Z

.field private static sLogTag:Ljava/lang/String;

.field private static sMaxChunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 996
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    .line 1003
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    .line 1013
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 38
    sget v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    return v0
.end method

.method private static addCustomKeys(I)V
    .locals 4

    const/4 p0, 0x4

    .line 841
    new-array v0, p0, [I

    fill-array-data v0, :array_0

    .line 845
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 847
    :try_start_0
    aget v3, v0, v2

    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 849
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :array_0
    .array-data 4
        0x780b
        0x800b
        0xf00b
        0x10005
    .end array-data
.end method

.method private static addKey(I)Z
    .locals 4

    .line 853
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt p0, v1, :cond_0

    .line 855
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 856
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;-><init>(ILcom/samsung/accessory/utils/buffer/SaBufferPool$1;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 859
    monitor-exit v0

    return p0

    .line 862
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearCache(I)Z
    .locals 7

    .line 627
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to clear cache - Bufferpool not initialised!"

    .line 628
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    .line 636
    :cond_0
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eq p0, v1, :cond_3

    const/16 v3, 0xa

    if-eq p0, v3, :cond_2

    const/16 v3, 0xf

    if-eq p0, v3, :cond_1

    const/16 v3, 0x28

    if-eq p0, v3, :cond_3

    const/16 v3, 0x3c

    if-eq p0, v3, :cond_2

    const/16 v3, 0x50

    if-eq p0, v3, :cond_1

    .line 651
    :try_start_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    move v3, v2

    goto :goto_0

    .line 644
    :cond_2
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    goto :goto_0

    .line 640
    :cond_3
    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    :goto_0
    const/4 v4, 0x2

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ClearCache["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : Cache Size BEFORE = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 655
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-gt p0, v3, :cond_4

    .line 656
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "ClearCache : Current cache size is lesser than the threshold of "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 658
    monitor-exit v0

    return v2

    .line 660
    :cond_4
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_6

    .line 662
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    .line 663
    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 665
    :goto_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-le v4, v3, :cond_5

    .line 666
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 667
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v4, v4

    sub-int/2addr v5, v4

    sput v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    goto :goto_2

    .line 671
    :cond_5
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    if-le v1, v3, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x3

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ClearCache : Cache Size AFTER = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 676
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dump()Ljava/lang/String;
    .locals 8

    .line 733
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "Failed to dump - Bufferpool not initialised!"

    .line 734
    invoke-static {v0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    const-string v0, " - Bufferpool not initialised! "

    return-object v0

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 742
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_0
    sget-object v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 746
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    if-eqz v4, :cond_1

    .line 748
    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Buffer \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\' x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    mul-int/2addr v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\" bytes [ Obtained "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getObtainHits()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " & Recycled "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getRecycleHits()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " times ]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 754
    invoke-static {v5, v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ===> \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\" bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 761
    invoke-static {v3, v2}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getCeilingSize(I)I
    .locals 2

    .line 777
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p0

    .line 778
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected static getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;
    .locals 2

    .line 797
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    sget-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCurrentCacheSize()I
    .locals 2

    .line 768
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bufferpool not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 772
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 773
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getFloorSize(I)I
    .locals 2

    .line 782
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p0

    .line 783
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getNextBigSize(I)I
    .locals 1

    .line 787
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 788
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getNextSmallSize(I)I
    .locals 1

    .line 792
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferRangeMap:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 793
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->createDefault(Landroid/content/Context;)Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V

    return-void
.end method

.method public static initialise(Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;)V
    .locals 6

    .line 70
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    const-string v0, "BufferPool already initialised!"

    .line 71
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 75
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to initialise the Bufferpool!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 80
    iget-boolean v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mIsDefault:Z

    const/16 v2, 0x18

    const v3, 0x10400

    if-eqz v1, :cond_3

    .line 81
    const-class v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 82
    iget-object p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isLowMemoryDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x200000

    .line 83
    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    goto :goto_0

    :cond_2
    const/high16 p0, 0x400000

    .line 85
    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 87
    :goto_0
    sput v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    goto :goto_1

    .line 89
    :cond_3
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-lt v1, v2, :cond_a

    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    iget v4, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    if-ge v1, v4, :cond_4

    goto :goto_5

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mLogTag:Ljava/lang/String;

    sput-object v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    .line 94
    iget v1, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    .line 95
    iget p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    .line 96
    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt p0, v3, :cond_5

    .line 97
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v3

    .line 100
    :goto_2
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    const/4 v4, 0x4

    div-int/2addr v1, v4

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdHigh:I

    .line 101
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCacheThresholdMed:I

    const/16 v1, 0x24

    move v5, v1

    move v1, v2

    :goto_3
    if-gt v1, p0, :cond_8

    if-gt v1, p0, :cond_6

    .line 108
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :cond_6
    if-eq v1, v2, :cond_7

    if-gt v5, p0, :cond_7

    .line 111
    invoke-static {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :cond_7
    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 114
    :cond_8
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addCustomKeys(I)V

    .line 115
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v1, v3, :cond_9

    .line 116
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    goto :goto_4

    .line 118
    :cond_9
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->addKey(I)Z

    :goto_4
    const/4 p0, 0x1

    .line 120
    sput-boolean p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    .line 121
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "BufferPool[v1.0.2] initialised with capacity "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    const/high16 v2, 0x100000

    div-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MB"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 123
    monitor-exit v0

    return-void

    .line 90
    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialise the Bufferpool! [Cache size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mCacheSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; Max chunk size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/accessory/utils/buffer/SaBufferPoolConfig;->mMaxChunkSize:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isInitialised()Z
    .locals 2

    .line 130
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-boolean v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sIsInitialised:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isLowMemoryDevice(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 820
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x5

    const-string v1, "isLowMemoryDevice(): ActivityManager is null!"

    .line 822
    invoke-static {p0, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v0

    .line 825
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 826
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    return p0

    .line 828
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static log(ILjava/lang/String;)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 281
    :pswitch_0
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_1
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :pswitch_2
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 272
    :pswitch_3
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :pswitch_4
    sget-object p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 435
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    .line 438
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p0

    return-object p0
.end method

.method private static obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 6

    .line 466
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le p0, v1, :cond_0

    const/4 p1, 0x5

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Buffer \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' is not matching with the pool sizes! creating new..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 469
    new-instance p1, Lcom/samsung/accessory/utils/buffer/SABuffer;

    new-array v1, p0, [B

    invoke-direct {p1, v1, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    monitor-exit v0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    move v1, p0

    goto :goto_0

    .line 471
    :cond_1
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v1

    .line 473
    :goto_0
    invoke-static {v1, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v3, 0x1

    move v4, v1

    :goto_1
    if-nez v2, :cond_3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_3

    if-eqz p1, :cond_2

    .line 479
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getCeilingSize(I)I

    move-result v5

    if-eq p0, v5, :cond_2

    .line 480
    invoke-static {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextSmallSize(I)I

    move-result v4

    goto :goto_2

    .line 482
    :cond_2
    invoke-static {v4}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getNextBigSize(I)I

    move-result v4

    :goto_2
    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    const v5, 0x10400

    if-gt v4, v5, :cond_3

    .line 484
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-gt v4, v5, :cond_3

    .line 488
    invoke-static {v4, p0, p1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 493
    new-instance v2, Lcom/samsung/accessory/utils/buffer/SABuffer;

    new-array p1, v1, [B

    invoke-direct {v2, p1, p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 494
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 496
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 500
    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 501
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static obtainChunk(IIZ)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 511
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 514
    monitor-exit v0

    return-object v2

    .line 516
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 517
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_4

    if-ne p0, p1, :cond_2

    .line 522
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_3

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length p0, p0

    if-ne p0, p1, :cond_3

    .line 527
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_1

    :cond_3
    move-object p0, v2

    goto :goto_1

    .line 531
    :cond_4
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_1
    if-eqz p0, :cond_5

    .line 534
    sget p2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v2, p0

    sub-int/2addr p2, v2

    sput p2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 538
    invoke-static {v1}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onObtained(Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;)V

    .line 539
    new-instance v2, Lcom/samsung/accessory/utils/buffer/SABuffer;

    invoke-direct {v2, p0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 541
    :cond_5
    monitor-exit v0

    return-object v2

    .line 518
    :cond_6
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static obtainExact(I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 453
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bufferpool not initialised!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v0, 0x1

    .line 456
    invoke-static {p0, v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(IZ)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p0

    return-object p0
.end method

.method public static recycle([B)Z
    .locals 9

    .line 555
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "Failed to recycle buffer - Bufferpool not initialised!"

    .line 556
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Cannot recycle null buffer!"

    .line 560
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    return v2

    .line 563
    :cond_1
    array-length v0, p0

    .line 564
    sget-object v3, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v3

    const/16 v4, 0x18

    if-lt v0, v4, :cond_8

    .line 565
    :try_start_0
    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sMaxChunkSize:I

    if-le v0, v4, :cond_2

    goto/16 :goto_1

    .line 569
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 572
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getFloorSize(I)I

    move-result v3

    .line 573
    sget-object v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 574
    :try_start_1
    invoke-static {v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->getChunk(I)Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 576
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getOrCreateBufferList()Ljava/util/LinkedList;

    move-result-object v6

    .line 577
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->onRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 579
    monitor-exit v4

    return v2

    .line 581
    :cond_3
    sget v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v7, v0

    sget v8, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v7, v8, :cond_5

    .line 583
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v5

    float-to-int v5, v5

    div-int/2addr v5, v3

    .line 584
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v7, v5, :cond_4

    .line 585
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot recycle buffer \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer chunk count("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") exceeded the limit"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 587
    monitor-exit v4

    return v2

    .line 589
    :cond_4
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->stabilizePool()I

    .line 590
    sget v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr v5, v0

    sget v7, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sBufferCacheSize:I

    if-le v5, v7, :cond_5

    .line 591
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot recycle buffer \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Buffer cache limit exceeded!!!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 593
    monitor-exit v4

    return v2

    :cond_5
    if-ne v3, v0, :cond_6

    .line 597
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    :cond_6
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 601
    :goto_0
    sget p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/2addr p0, v0

    sput p0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    const/4 p0, 0x1

    .line 605
    monitor-exit v4

    return p0

    .line 607
    :cond_7
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 566
    :cond_8
    :goto_1
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Cannot recycle buffer \'"

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\', Non-matcing size!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 567
    monitor-exit v3

    return v2

    .line 569
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static stabilizePool()I
    .locals 10

    .line 697
    sget-object v0, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->BUFFER_ACCESS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    sget v1, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    .line 699
    sget-object v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 701
    sget-object v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sChunkList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;

    if-eqz v5, :cond_2

    .line 703
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSizeLimit()F

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getSize()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 704
    invoke-virtual {v5}, Lcom/samsung/accessory/utils/buffer/SaBufferPool$SAChunk;->getBufferList()Ljava/util/LinkedList;

    move-result-object v5

    if-nez v5, :cond_0

    move v7, v3

    goto :goto_1

    .line 705
    :cond_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    :cond_1
    :goto_1
    if-le v7, v6, :cond_2

    if-eqz v5, :cond_1

    .line 716
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 717
    sget v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    array-length v8, v8

    sub-int/2addr v9, v8

    sput v9, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pool Stabilized; Cache size reduced from  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    .line 725
    sget v2, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->sCurrentCacheSize:I

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static testClearCache(I)Z
    .locals 0

    .line 809
    invoke-static {p0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->clearCache(I)Z

    move-result p0

    return p0
.end method

.method public static wrapPayload(II[BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 2

    .line 187
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int v0, p1, p3

    .line 190
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 193
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {p2, p0, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;I)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 374
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 378
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 380
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v4

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    return-object v0
.end method

.method public static wrapPayload(Lcom/samsung/accessory/utils/buffer/SABuffer;II)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4

    .line 408
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p2

    .line 412
    invoke-virtual {p2, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 413
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 414
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getLength()I

    move-result v3

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-virtual {p0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->recycle()Z

    return-object p2
.end method

.method public static wrapPayload([BI)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 4

    .line 154
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 159
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v2

    array-length v3, p0

    invoke-static {p0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static wrapPayload([BII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 3

    .line 309
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p2

    .line 313
    invoke-virtual {p2, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 314
    array-length v0, p0

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v1

    array-length v2, p0

    invoke-static {p0, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static wrapPayload([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 1

    .line 344
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    add-int v0, p2, p3

    add-int/2addr v0, p4

    .line 347
    invoke-static {v0}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->obtain(I)Lcom/samsung/accessory/utils/buffer/SABuffer;

    move-result-object p4

    .line 348
    invoke-virtual {p4, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 349
    invoke-virtual {p4, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    .line 350
    invoke-virtual {p4}, Lcom/samsung/accessory/utils/buffer/SABuffer;->getBuffer()[B

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p4
.end method

.method public static wrapPayloadInPlace([BIIII)Lcom/samsung/accessory/utils/buffer/SABuffer;
    .locals 5

    .line 219
    invoke-static {}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->isInitialised()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bufferpool not initialised!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-ge p1, p3, :cond_2

    add-int v0, p1, p2

    sub-int v1, p3, p1

    .line 232
    array-length v2, p0

    add-int v3, v0, v1

    if-lt v2, v3, :cond_4

    const/4 v2, 0x2

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shifting data \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' positions to wrap in place..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/accessory/utils/buffer/SaBufferPool;->log(ILjava/lang/String;)V

    :goto_0
    if-lt v0, p1, :cond_1

    add-int v2, v0, v1

    .line 235
    aget-byte v3, p0, v0

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move p1, p3

    goto :goto_2

    .line 245
    :cond_2
    array-length v0, p0

    add-int v1, p1, p2

    add-int/2addr v1, p4

    if-ge v0, v1, :cond_4

    .line 248
    array-length v0, p0

    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    if-ltz v0, :cond_4

    if-lt v0, p3, :cond_4

    move p1, v0

    :goto_1
    add-int v2, v0, p2

    if-ge p1, v2, :cond_3

    add-int v2, p1, v1

    .line 254
    aget-byte v2, p0, v2

    aput-byte v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v0

    .line 260
    :cond_4
    :goto_2
    new-instance v0, Lcom/samsung/accessory/utils/buffer/SABuffer;

    add-int/2addr p3, p2

    add-int/2addr p3, p4

    invoke-direct {v0, p0, p3}, Lcom/samsung/accessory/utils/buffer/SABuffer;-><init>([BI)V

    .line 261
    invoke-virtual {v0, p1}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setOffset(I)V

    .line 262
    invoke-virtual {v0, p2}, Lcom/samsung/accessory/utils/buffer/SABuffer;->setPayloadLength(I)V

    return-object v0
.end method
