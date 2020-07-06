.class public final Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;
.super Ljava/lang/Object;
.source "PdfBpViewMaker.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/helper/pdf/PdfViewMakerInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfBpViewMaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfBpViewMaker.kt\ncom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker\n*L\n1#1,203:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBpDataMaker:Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;)V
    .locals 1

    const-string v0, "bpDataMaker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->mBpDataMaker:Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;

    .line 19
    sget-object p1, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getTAG()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final getMeasureViewHeight(Landroid/view/View;II)I
    .locals 0

    .line 199
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final addDataRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Queue<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpData;",
            ">;III)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawingQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :goto_0
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataRowView;

    invoke-interface {p3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "drawingQueue.peek()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataRowView;-><init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/helper/BpData;)V

    .line 131
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p5, p6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v1

    .line 132
    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p5, p6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v2

    sub-int v2, p4, v2

    .line 133
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowHeight : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v2, v1

    if-gez v2, :cond_0

    .line 135
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    const-string p1, "break"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addDeviceRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;IIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Queue<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;",
            ">;IIIZ)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawingQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :goto_0
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceRowView;

    invoke-interface {p3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "drawingQueue.peek()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;

    invoke-direct {v0, p1, v1, p7}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceRowView;-><init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;Z)V

    .line 165
    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p5, p6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v1

    .line 166
    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p5, p6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v2

    sub-int v2, p4, v2

    .line 167
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[addDeviceRowView]rowHeight : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v2, v1

    if-gez v2, :cond_0

    .line 169
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    const-string p1, "break"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final generatDataTablePageView(Landroid/content/Context;Ljava/util/Queue;II)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Queue<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpData;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawingQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;

    sget-object v1, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_TOP_PADDING_SIZE()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;-><init>(Landroid/content/Context;I)V

    .line 147
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContentView:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataTableView;

    invoke-direct {v2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataTableView;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, p3, p4}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v2

    .line 150
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initPageViewHeight size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v3, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v3

    sub-int/2addr v3, v2

    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getBOTTOM_MARGIN_SIZE()I

    move-result v2

    sub-int/2addr v3, v2

    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_EXTRA_PADDING_SIZE()I

    move-result v2

    add-int v8, v3, v2

    .line 153
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generatDataTablePageView  remainHeight : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTableLayout:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    const-string v2, "pageView.mTableLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->addDataRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;III)V

    return-object v1
.end method

.method public final generatDeviceTablePageView(Landroid/content/Context;Ljava/util/Queue;IIZLcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Queue<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;",
            ">;IIZ",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "drawingQueue"

    move-object v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDevicePageView;

    sget-object v5, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_TOP_PADDING_SIZE()I

    move-result v5

    invoke-direct {v3, v1, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDevicePageView;-><init>(Landroid/content/Context;I)V

    if-eqz p6, :cond_0

    .line 182
    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContentView:I

    invoke-virtual {v3, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDevicePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v2, p6

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v7, p5

    goto :goto_0

    .line 184
    :cond_0
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContentView:I

    invoke-virtual {v3, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDevicePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceTableView;

    move/from16 v7, p5

    invoke-direct {v5, v1, v7}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceTableView;-><init>(Landroid/content/Context;Z)V

    check-cast v5, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    :goto_0
    move-object v8, v3

    check-cast v8, Landroid/view/View;

    move v5, p3

    move/from16 v6, p4

    invoke-direct {v0, v8, v5, v6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v2

    .line 188
    iget-object v9, v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[generatDeviceTablePageView]initPageViewHeight size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v9, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v9}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v9

    sub-int/2addr v9, v2

    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getBOTTOM_MARGIN_SIZE()I

    move-result v2

    sub-int/2addr v9, v2

    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_EXTRA_PADDING_SIZE()I

    move-result v2

    add-int/2addr v9, v2

    .line 191
    iget-object v2, v0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[generatDeviceTablePageView]generatDataTablePageView  remainHeight : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDeviceTableLayout:I

    invoke-virtual {v3, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDevicePageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    const-string v3, "pageView.mDeviceTableLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v4

    move v4, v9

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->addDeviceRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;IIIZ)V

    return-object v8
.end method

.method public final getMBpDataMaker()Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->mBpDataMaker:Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final makeContentViews(Landroid/content/Context;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->mBpDataMaker:Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;->makePdfDataForDisplay(Landroid/content/Context;J)Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;

    move-result-object p2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->makeContentViews(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final makeContentViews(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    const-string v0, "context"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpInfo"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 30
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_WIDTH()I

    move-result v0

    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 31
    sget-object v0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v0

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 34
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v9, v11, v2, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfTopContentView;

    invoke-direct {v2, v9, v7}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfTopContentView;-><init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;)V

    .line 39
    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContentView:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDataPageView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    invoke-direct {v8, v3, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v0

    .line 43
    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTableLayout:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfTopContentView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    const-string v4, "topView.mTableLayout"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-direct {v8, v3, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v3

    .line 45
    sget-object v4, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v4

    sub-int/2addr v4, v0

    sget-object v5, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getBOTTOM_MARGIN_SIZE()I

    move-result v5

    sub-int/2addr v4, v5

    sget-object v5, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_EXTRA_PADDING_SIZE()I

    move-result v5

    add-int/2addr v4, v5

    .line 47
    iget-object v5, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "topView.height : "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tableHeaderSize : "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainHeight "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 50
    iget-object v0, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    const-string v2, "Invalid size : "

    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDataList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    if-eqz v0, :cond_6

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v15, v0

    check-cast v15, Ljava/util/Queue;

    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDataList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v15, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 63
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTableLayout:I

    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfTopContentView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    const-string v1, "topView.mTableLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v8

    move-object v1, v9

    move-object v3, v15

    move v5, v12

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->addDataRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;III)V

    .line 68
    :goto_0
    invoke-interface {v15}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {v8, v9, v15, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->generatDataTablePageView(Landroid/content/Context;Ljava/util/Queue;II)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v15, v0

    check-cast v15, Ljava/util/Queue;

    .line 78
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v15, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 81
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContentView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "contentView"

    .line 82
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-direct {v8, v1, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v1

    .line 83
    sget-object v2, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_HEIGHT()I

    move-result v2

    sub-int/2addr v2, v1

    sget-object v3, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getBOTTOM_MARGIN_SIZE()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->getPAGE_TOP_PADDING_SIZE()I

    move-result v3

    sub-int/2addr v2, v3

    .line 84
    iget-object v3, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastPageHeight.height : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastPageRemainHeight : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_2

    move v7, v14

    goto :goto_1

    :cond_2
    move v7, v11

    .line 87
    :goto_1
    new-instance v6, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;

    invoke-direct {v6, v9, v7}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;-><init>(Landroid/content/Context;Z)V

    .line 88
    move-object v1, v6

    check-cast v1, Landroid/view/View;

    invoke-direct {v8, v1, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v3

    .line 89
    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDeviceTableLayout:I

    invoke-virtual {v6, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    const-string v5, "deviceContentView.mDeviceTableLayout"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-direct {v8, v4, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->getMeasureViewHeight(Landroid/view/View;II)I

    move-result v4

    .line 91
    iget-object v5, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "deviceContentHeight : "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", deviceRowSize : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int v5, v3, v4

    if-gt v5, v2, :cond_4

    .line 96
    iget-object v5, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    const-string v11, "Append view"

    invoke-static {v5, v11}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    check-cast v0, Landroid/view/View;

    sget v5, Lcom/samsung/android/shealthmonitor/bp/R$id;->mAdditionalContentView:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sub-int/2addr v2, v3

    add-int/2addr v4, v2

    .line 101
    iget-object v0, v8, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Append remainHeight : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDeviceTableLayout:I

    invoke-virtual {v6, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    const-string v1, "deviceContentView.mDeviceTableLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v8

    move-object v1, v9

    move-object v3, v15

    move v5, v12

    move-object v11, v6

    move v6, v13

    move v14, v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->addDeviceRowView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Queue;IIIZ)V

    :goto_2
    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    move-object v11, v6

    move v14, v7

    const/16 v16, 0x0

    .line 109
    :goto_3
    invoke-interface {v15}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v16, :cond_5

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v15

    move v3, v12

    move v4, v13

    move v5, v14

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->generatDeviceTablePageView(Landroid/content/Context;Ljava/util/Queue;IIZLcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, v8

    move-object v1, v9

    move-object v2, v15

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v11

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpViewMaker;->generatDeviceTablePageView(Landroid/content/Context;Ljava/util/Queue;IIZLcom/samsung/android/shealthmonitor/bp/ui/view/pdf/BpPdfDeviceContentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :cond_6
    check-cast v10, Ljava/util/List;

    return-object v10
.end method
