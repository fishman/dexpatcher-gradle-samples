.class public final Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;
.super Landroid/os/AsyncTask;
.source "PdfGeneratorTaskHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfGeneratorTaskHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfGeneratorTaskHelper.kt\ncom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper\n*L\n1#1,120:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mFile:Ljava/io/File;

.field private mLandScape:Z

.field private mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

.field private mPdfViewMaker:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

.field private mStartTime:J

.field private final mWeakRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/io/File;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mWeakRefContext:Ljava/lang/ref/WeakReference;

    .line 31
    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mStartTime:J

    .line 32
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    .line 33
    iput-object p6, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mPdfViewMaker:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

    .line 36
    iput-boolean p7, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mLandScape:Z

    .line 37
    sget-object p1, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getTAG()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;JLjava/io/File;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 28
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;-><init>(Landroid/content/Context;JLjava/io/File;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;Z)V

    return-void
.end method

.method private final makePdf(Ljava/io/OutputStream;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 90
    new-instance p0, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p3, :cond_0

    .line 97
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    sget-object v3, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v3

    sget-object v4, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_WIDTH()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v2, v3, v4, v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    const-string v2, "PdfDocument.PageInfo.Bui\u2026, pageCounter++).create()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_0
    new-instance v2, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    sget-object v3, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_WIDTH()I

    move-result v3

    sget-object v4, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v2, v3, v4, v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v0

    const-string v2, "PdfDocument.PageInfo.Bui\u2026, pageCounter++).create()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v0

    const-string v2, "page"

    .line 105
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    const-string v3, "page.canvas"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 106
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    const-string v6, "page.canvas"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 108
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    const-string v3, "page.canvas"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    const-string v4, "page.canvas"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 109
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    move v0, v5

    goto/16 :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 118
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfDocument;->close()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mWeakRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->TAG:Ljava/lang/String;

    const-string p1, "Context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mPdfViewMaker:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

    iget-wide v3, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mStartTime:J

    invoke-interface {v2, p1, v3, v4}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;->makeContentViews(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p1

    .line 55
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->TAG:Ljava/lang/String;

    const-string v3, "generateContentViews done"

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    .line 58
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    move-object v1, v3

    check-cast v1, Ljava/io/OutputStream;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mLandScape:Z

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->makePdf(Ljava/io/OutputStream;Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 62
    :goto_0
    :try_start_2
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mException:Ljava/lang/Exception;

    .line 63
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 70
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_2
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw p0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getMException()Ljava/lang/Exception;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public final getMFile()Ljava/io/File;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    return-object p0
.end method

.method public final getMLandScape()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mLandScape:Z

    return p0
.end method

.method public final getMListener()Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    return-object p0
.end method

.method public final getMPdfViewMaker()Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mPdfViewMaker:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

    return-object p0
.end method

.method public final getMStartTime()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mStartTime:J

    return-wide v0
.end method

.method public final getMWeakRefContext()Ljava/lang/ref/WeakReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mWeakRefContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->onPostExecute(Z)V

    return-void
.end method

.method protected final onPostExecute(Z)V
    .locals 2

    .line 78
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;->pdfResult(ZLjava/io/File;Ljava/lang/Exception;)V

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mException:Ljava/lang/Exception;

    invoke-interface {p1, v0, v1, p0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;->pdfResult(ZLjava/io/File;Ljava/lang/Exception;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public final setMException(Ljava/lang/Exception;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mException:Ljava/lang/Exception;

    return-void
.end method

.method public final setMFile(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mFile:Ljava/io/File;

    return-void
.end method

.method public final setMLandScape(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mLandScape:Z

    return-void
.end method

.method public final setMListener(Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mListener:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfResultListener;

    return-void
.end method

.method public final setMPdfViewMaker(Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mPdfViewMaker:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;

    return-void
.end method

.method public final setMStartTime(J)V
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdqGeneratorTaskHelper;->mStartTime:J

    return-void
.end method
