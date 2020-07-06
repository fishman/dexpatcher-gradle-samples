.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorCompleteView.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    const-string v0, "S HealthMonitor - SHealthMonitorCompleteView"

    .line 28
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->TAG:Ljava/lang/String;

    .line 32
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_calibration_done_activity:I

    .line 33
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "View.inflate(context, res, this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->root:Landroid/view/View;

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 37
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$1;-><init>(Landroid/app/Activity;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowtoMeasuring:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$2;

    invoke-direct {v1, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$2;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    const-string v2, "mVideo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getViewPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setVideoPath(Landroid/net/Uri;)V

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V

    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V

    check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_2
    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$playVideo(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->playVideo(Z)V

    return-void
.end method

.method public static final synthetic access$showVideo(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->showVideo()V

    return-void
.end method

.method private final getViewPath()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KR"

    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$raw;->watch_calibration_completed_kr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$raw;->watch_calibration_completed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final hiddenVideo()V
    .locals 2

    .line 88
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 89
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideoImage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "mVideoImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 90
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideoImage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "mVideoImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final pauseVideo()V
    .locals 2

    .line 105
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->TAG:Ljava/lang/String;

    const-string v1, "pauseVideo "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->pause()V

    return-void

    :cond_1
    return-void
.end method

.method private final playVideo(Z)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playVideo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void

    :cond_0
    return-void
.end method

.method private final showVideo()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->TAG:Ljava/lang/String;

    const-string v1, "showVideo"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideoImage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "mVideoImage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 100
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 101
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideoImage:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const-string v0, "mVideoImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private final stopVideo()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->stopPlayback()V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 0

    .line 174
    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$color;->calibration_done_background:I

    return p0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->root:Landroid/view/View;

    return-object p0
.end method

.method public final onBack()V
    .locals 0

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->onDetachedFromWindow()V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->stopVideo()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->pauseVideo()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->hiddenVideo()V

    return-void
.end method

.method public final sendInitialCalibrationRequest(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$sendInitialCalibrationRequest$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;Landroid/view/View;Landroid/app/Activity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendInitialCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Connected watch was not found!"

    invoke-static {p1, v1, v0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 p1, 0x1

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, v0}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    :cond_1
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

.method public final setRoot(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->root:Landroid/view/View;

    return-void
.end method
