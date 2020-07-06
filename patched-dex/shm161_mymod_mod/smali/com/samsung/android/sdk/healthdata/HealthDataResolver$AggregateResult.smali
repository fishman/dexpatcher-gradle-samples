.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;
.super Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.source "HealthDataResolver.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "Lcom/samsung/android/sdk/healthdata/HealthData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

.field private mCursor:Landroid/database/Cursor;

.field private final mDataType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3042
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3024
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 3025
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    .line 3026
    const-class v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V
    .locals 0

    .line 2990
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 3000
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 3001
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3002
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 3009
    iget v0, p3, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 3010
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    .line 3011
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    if-eqz p2, :cond_1

    .line 3018
    iget v1, p2, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 3019
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    .line 3020
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 3116
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->getResultCursor()Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3121
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3122
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling close() when ReadResult or ResultCursor is already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3124
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    .line 3087
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCursor()Landroid/database/Cursor;
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3068
    :cond_0
    monitor-enter p0

    .line 3069
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 3070
    new-instance v0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 3071
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V

    .line 3073
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mCursor:Landroid/database/Cursor;

    .line 3075
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mCursor:Landroid/database/Cursor;

    return-object p0

    :catchall_0
    move-exception v0

    .line 3075
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation

    .line 3098
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->getResultCursor()Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3100
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 3105
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 3034
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3035
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3036
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
