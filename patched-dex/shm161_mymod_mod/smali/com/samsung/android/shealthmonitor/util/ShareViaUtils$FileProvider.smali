.class public Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;
.super Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;
.source "ShareViaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileProvider"
.end annotation


# instance fields
.field private shareDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;-><init>()V

    return-void
.end method

.method public static getUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 446
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getData(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "S HealthMonitor - ShareViaUtils"

    const-string p1, " getData(): share directory is null!"

    .line 514
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getDataLength(Landroid/net/Uri;)J
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    const-string p0, "S HealthMonitor - ShareViaUtils"

    const-string p1, " getData(): share directory is null!"

    .line 498
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public bridge synthetic getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 446
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 446
    invoke-super {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    .line 454
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 459
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    .line 462
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->shareDir:Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 473
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 474
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 480
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Absolute path not allowed"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 483
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x10000000

    .line 484
    invoke-static {p2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 487
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Absolute path not allowed"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const-string p0, "S HealthMonitor - ShareViaUtils"

    const-string p1, " openFile(): share directory is null!"

    .line 463
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 446
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 446
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$AbstractFileProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
