.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    const-string v0, "*"

    .line 41
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 45
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .locals 13

    .line 196
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_a

    add-int v3, v0, v2

    .line 199
    div-int/lit8 v3, v3, 0x2

    :goto_1
    const/16 v4, 0xa

    if-ltz v3, :cond_0

    .line 202
    aget-byte v5, p0, v3

    if-eq v5, v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    add-int v7, v3, v6

    .line 209
    aget-byte v8, p0, v7

    if-eq v8, v4, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    sub-int v4, v7, v3

    move v8, p2

    move v6, v1

    move v9, v6

    move v10, v9

    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    const/16 v6, 0x2e

    move v11, v6

    move v6, v1

    goto :goto_4

    .line 228
    :cond_3
    aget-object v11, p1, v8

    aget-byte v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    :goto_4
    add-int v12, v3, v10

    .line 231
    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    sub-int/2addr v11, v12

    if-nez v11, :cond_4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    if-eq v10, v4, :cond_4

    .line 240
    aget-object v12, p1, v8

    array-length v12, v12

    if-ne v12, v9, :cond_2

    .line 243
    array-length v6, p1

    sub-int/2addr v6, v5

    if-eq v8, v6, :cond_4

    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    move v9, v6

    move v6, v5

    goto :goto_3

    :cond_4
    if-gez v11, :cond_5

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_5
    if-lez v11, :cond_6

    add-int/lit8 v0, v7, 0x1

    goto :goto_0

    :cond_6
    sub-int v5, v4, v10

    .line 260
    aget-object v6, p1, v8

    array-length v6, v6

    sub-int/2addr v6, v9

    :goto_5
    add-int/lit8 v8, v8, 0x1

    .line 261
    array-length v9, p1

    if-ge v8, v9, :cond_7

    .line 262
    aget-object v9, p1, v8

    array-length v9, v9

    add-int/2addr v6, v9

    goto :goto_5

    :cond_7
    if-ge v6, v5, :cond_8

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    :cond_8
    if-le v6, v5, :cond_9

    add-int/lit8 v0, v7, 0x1

    goto :goto_0

    .line 271
    :cond_9
    new-instance p1, Ljava/lang/String;

    sget-object p2, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v3, v4, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    :goto_6
    return-object p1
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 109
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1289
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1300
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1294
    :try_start_1
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "Failed to read public suffix list"

    invoke-virtual {v4, v5, v6, v3}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_0

    .line 1300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p0

    :catch_1
    move v0, v2

    goto :goto_0

    .line 113
    :cond_1
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    :catch_2
    :cond_2
    :goto_3
    monitor-enter p0

    .line 119
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v0, :cond_3

    .line 120
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    array-length v0, p1

    new-array v0, v0, [[B

    move v3, v1

    .line 127
    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 128
    aget-object v4, p1, v3

    sget-object v5, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move p1, v1

    .line 134
    :goto_5
    array-length v3, v0

    const/4 v4, 0x0

    if-ge p1, v3, :cond_6

    .line 135
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v3, v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_6
    move-object v3, v4

    .line 148
    :goto_6
    array-length p1, v0

    if-le p1, v2, :cond_8

    .line 149
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    move v5, v1

    .line 150
    :goto_7
    array-length v6, p1

    sub-int/2addr v6, v2

    if-ge v5, v6, :cond_8

    .line 151
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v6, p1, v5

    .line 152
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v6, p1, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    move-object v6, v4

    :goto_8
    if-eqz v6, :cond_a

    .line 163
    :goto_9
    array-length p1, v0

    sub-int/2addr p1, v2

    if-ge v1, p1, :cond_a

    .line 164
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move-object p1, v4

    :goto_a
    if-eqz p1, :cond_b

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\."

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-nez v3, :cond_c

    if-nez v6, :cond_c

    .line 178
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p0

    :cond_c
    if-eqz v3, :cond_d

    const-string p0, "\\."

    .line 182
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 183
    :cond_d
    sget-object p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_b
    if-eqz v6, :cond_e

    const-string p1, "\\."

    .line 186
    invoke-virtual {v6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    .line 187
    :cond_e
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 189
    :goto_c
    array-length v0, p0

    array-length v1, p1

    if-le v0, v1, :cond_f

    return-object p0

    :cond_f
    return-object p1

    :catchall_1
    move-exception p1

    .line 123
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 61
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 314
    :try_start_0
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 315
    new-array v1, v1, [B

    .line 316
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 318
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 319
    new-array v2, v2, [B

    .line 320
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 328
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 322
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    .line 78
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "domain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 84
    array-length v1, v0

    array-length v2, p0

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    aget-object v1, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 90
    :cond_1
    aget-object v1, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 92
    array-length v0, v0

    array-length p0, p0

    sub-int/2addr v0, p0

    goto :goto_0

    .line 95
    :cond_2
    array-length v0, v0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    sub-int/2addr v0, p0

    .line 98
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\."

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 100
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 101
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
