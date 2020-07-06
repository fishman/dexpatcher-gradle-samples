.class public final Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;
.super Landroid/database/AbstractWindowedCursor;
.source "BulkCursorToCursorAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BulkCursor"


# instance fields
.field private mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

.field private mResultId:Ljava/lang/String;

.field private mWantsAllOnMoveCalls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    return-void
.end method

.method private throwIfCursorIsClosed()V
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    if-nez p0, :cond_0

    .line 66
    new-instance p0, Landroid/database/StaleDataException;

    const-string v0, "Attempted to access a cursor after it has been closed."

    invoke-direct {p0, v0}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {p0}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "BulkCursor"

    const-string v0, "Remote process exception when closing"

    .line 123
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected final closeWindow()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    :cond_0
    return-void
.end method

.method public final deactivate()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {p0}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "BulkCursor"

    const-string v0, "Remote process exception when deactivating"

    .line 110
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final getBlob(I)[B
    .locals 3

    if-ltz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResultId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResultId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->getByteArray(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->getBlob(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getColumnIndex(Ljava/lang/String;)I
    .locals 4

    .line 201
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 202
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getColumnNames()[Ljava/lang/String;
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 167
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public final getCount()I
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 73
    iget p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mCount:I

    return p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 175
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {p0}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final initialize(Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;)V
    .locals 1

    .line 50
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->cursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    .line 51
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mColumns:[Ljava/lang/String;

    .line 52
    iget-boolean v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    .line 53
    iget v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->count:I

    iput v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 54
    iget-object v0, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    .line 55
    iget-object p1, p1, Lcom/samsung/android/sdk/internal/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V

    :cond_0
    return-void
.end method

.method public final onMove(II)Z
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    const/4 p1, 0x0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 83
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 84
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWantsAllOnMoveCalls:Z

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->onMove(I)V

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return p1

    :catch_0
    const-string p0, "BulkCursor"

    const-string p2, "Unable to get window because the remote process is dead"

    .line 91
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public final requery()Z
    .locals 5

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {v1}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->requery()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mCount:I

    .line 145
    iget v1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 146
    iput v2, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mPos:I

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->closeWindow()V

    .line 150
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    const/4 p0, 0x1

    return p0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BulkCursor"

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to requery because the remote process exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->deactivate()V

    return v0
.end method

.method public final respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->throwIfCursorIsClosed()V

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mBulkCursor:Lcom/samsung/android/sdk/internal/database/IBulkCursor;

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/internal/database/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BulkCursor"

    const-string v0, "respond() threw RemoteException, returning an empty bundle."

    .line 193
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setFileTransferChannel(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/database/BulkCursorToCursorAdaptor;->mResultId:Ljava/lang/String;

    return-void
.end method
