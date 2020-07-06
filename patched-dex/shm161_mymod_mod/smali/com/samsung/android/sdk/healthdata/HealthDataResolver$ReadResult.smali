.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;
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
    name = "ReadResult"
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
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

.field private mCursor:Landroid/database/Cursor;

.field private final mDataType:Ljava/lang/String;

.field private mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

.field private mResultId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1873
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1855
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    .line 1857
    const-class v0, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V
    .locals 0

    .line 1819
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1831
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1832
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1833
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1840
    iget v0, p3, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1841
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    .line 1842
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1849
    iget v0, p2, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 1850
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    .line 1851
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1965
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->getResultCursor()Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1970
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1971
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "calling close() when ReadResult or ResultCursor is already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1973
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    .line 1919
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCursor()Landroid/database/Cursor;
    .locals 3

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1899
    :cond_0
    monitor-enter p0

    .line 1900
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1901
    new-instance v0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 1902
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V

    .line 1903
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResultId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->setFileTransferChannel(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;)V

    .line 1905
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mCursor:Landroid/database/Cursor;

    .line 1907
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1909
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mCursor:Landroid/database/Cursor;

    return-object p0

    :catchall_0
    move-exception v0

    .line 1907
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation

    .line 1949
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->getResultCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1951
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 1954
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResultId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ResultIterator;-><init>(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-object v1
.end method

.method public setResolver(Lcom/samsung/android/sdk/healthdata/IDataResolver;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    if-nez v0, :cond_0

    .line 1936
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    :cond_0
    return-object p0
.end method

.method public setResultId(Ljava/lang/String;)V
    .locals 1

    .line 1926
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResultId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1927
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mResultId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1865
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1866
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1867
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;->mBulk:Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
