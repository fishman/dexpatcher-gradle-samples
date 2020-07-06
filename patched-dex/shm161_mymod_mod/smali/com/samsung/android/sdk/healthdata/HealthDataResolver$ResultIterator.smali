.class Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/samsung/android/sdk/healthdata/HealthData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

.field private final mIteratorCursor:Landroid/database/Cursor;

.field private final mReference:Ljava/lang/Object;

.field private final mResultId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 3152
    invoke-direct {p0, v0, v0, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;-><init>(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3157
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mDataResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    .line 3158
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mResultId:Ljava/lang/String;

    .line 3159
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    .line 3160
    iput-object p4, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mReference:Ljava/lang/Object;

    .line 3161
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-void
.end method

.method private getHealthDataFromCurrentCursor()Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 5

    .line 3185
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mDataResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mResultId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mReference:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 3186
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3187
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 3195
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->putBlob(Ljava/lang/String;[B)V

    goto :goto_1

    .line 3198
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3192
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/healthdata/HealthData;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 3189
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/healthdata/HealthData;->putLong(Ljava/lang/String;J)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 3166
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3167
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling hasNext() when ReadResult or ResultCursor is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isLast()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public next()Lcom/samsung/android/sdk/healthdata/HealthData;
    .locals 1

    .line 3174
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3175
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling next() when ReadResult or ResultCursor is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3178
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->mIteratorCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3181
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->getHealthDataFromCurrentCursor()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object p0

    return-object p0

    .line 3179
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "calling next() when no next element present"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 3128
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;->next()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    .line 3210
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "remove() not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
