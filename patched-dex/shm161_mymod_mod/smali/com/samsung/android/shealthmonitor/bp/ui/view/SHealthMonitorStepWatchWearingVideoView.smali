.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorStepWatchWearingVideoView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_first_step_instruction_watch_test_view:I

    .line 19
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->how_to_wear_watch:I

    iput v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->mBackground:I

    .line 21
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->how_to_wear_watch:I

    return p0

    .line 35
    :cond_0
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->mBackground:I

    return p0
.end method

.method public final getVideoURI()Landroid/net/Uri;
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$raw;->how_to_wear_watch_video_720:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final hasVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBack()V
    .locals 1

    const-string v0, ""

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->cancelCalibration(Ljava/lang/String;)V

    return-void
.end method

.method public final setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepWatchWearingVideoView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
