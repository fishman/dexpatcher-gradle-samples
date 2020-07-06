.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorStepReadingBpMonitorView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mBackground:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mContext:Landroid/content/Context;

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_first_step_next_selection_view:I

    .line 19
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->step_start_top_color:I

    iput v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mBackground:I

    .line 21
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mContext:Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 23
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mBackground:I

    return p0
.end method

.method public final getMBackground()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mBackground:I

    return p0
.end method

.method public final getMContext()Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final onBack()V
    .locals 0

    return-void
.end method

.method public final setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setMBackground(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mBackground:I

    return-void
.end method

.method public final setMContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepReadingBpMonitorView;->mContext:Landroid/content/Context;

    return-void
.end method
