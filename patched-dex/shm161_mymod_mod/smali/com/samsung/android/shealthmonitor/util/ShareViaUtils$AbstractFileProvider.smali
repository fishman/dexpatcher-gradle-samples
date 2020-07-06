.class abstract Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;
.super Landroid/content/ContentProvider;
.source "ShareViaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractFileProvider"
.end annotation


# static fields
.field private static final OPENABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "_display_name"

    const-string v2, "_size"

    const-string v3, "_data"

    const-string v4, "mime_type"

    .line 379
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->OPENABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 441
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected getData(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "path"

    return-object p0
.end method

.method protected getDataLength(Landroid/net/Uri;)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method protected getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 414
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 431
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const-string p3, "S HealthMonitor - ShareViaUtils"

    const-string p4, " FileProvider: query() "

    .line 387
    invoke-static {p3, p4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 389
    sget-object p2, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->OPENABLE_PROJECTION:[Ljava/lang/String;

    .line 392
    :cond_0
    new-instance p3, Landroid/database/MatrixCursor;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 393
    invoke-virtual {p3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p4

    .line 395
    array-length p5, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_5

    aget-object v1, p2, v0

    const-string v2, "_display_name"

    .line 396
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "_size"

    .line 398
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->getDataLength(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "_data"

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->getData(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "mime_type"

    .line 402
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "image/png"

    .line 403
    invoke-virtual {p4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 405
    invoke-virtual {p4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 436
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
