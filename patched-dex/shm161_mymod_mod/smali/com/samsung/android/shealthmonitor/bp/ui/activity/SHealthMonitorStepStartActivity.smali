.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorStepStartActivity.kt"


# instance fields
.field private final COMFIRM_POPUP_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field private mCurrentIsPossibleBack:Z

.field private mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mNextClickListener:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;

.field private mSidePadding:Ljava/lang/Integer;

.field private mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorStepStartActivity"

    .line 34
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v0, "COMFIRM_POPUP_TAG"

    .line 35
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    .line 165
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mNextClickListener:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;

    return-void
.end method

.method public static final synthetic access$changeView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeView(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$playVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->playVideo(Z)V

    return-void
.end method

.method public static final synthetic access$showVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->showVideo()V

    return-void
.end method

.method private final changeMainView(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 1

    .line 223
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    if-eqz p2, :cond_0

    .line 224
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mViewContainer:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 226
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mNextClickListener:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->setAbNextListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->removeAllFragmentDialog()V

    .line 230
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mBackGround:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->getBackgroundDrawableId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->pauseVideo()V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->hiddenVideo()V

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->hasVideo()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->getVideoURI()Landroid/net/Uri;

    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setVideoPath(Landroid/net/Uri;)V

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V

    check-cast p2, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V

    check-cast p2, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 247
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 250
    :cond_5
    :goto_0
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mViewContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$anim;->abc_fade_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 252
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mViewContainer:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private final changeView(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v1, "changeView"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->checkAndMakeRandomError(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 155
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 156
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeMainView(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->isPossibleBack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->hasMenu()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->enableMenu(Z)V

    return-void
.end method

.method private final enableMenu(Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void

    :cond_1
    return-void
.end method

.method private final hiddenVideo()V
    .locals 2

    .line 175
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 176
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mBackGround:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mBackGround"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mBackGround:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "mBackGround"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final makeFulltransParentStatusBar()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->setWindowFlag(Landroid/app/Activity;IZ)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private final pauseVideo()V
    .locals 2

    .line 215
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v1, "pauseVideo "

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->pause()V

    :cond_2
    return-void
.end method

.method private final playVideo(Z)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playVideo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$playVideo$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$playVideo$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V

    check-cast v0, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void

    :cond_0
    return-void
.end method

.method private final setWindowFlag(Landroid/app/Activity;IZ)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "win"

    .line 59
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 61
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 63
    :cond_0
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p2, p2

    and-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final showMeasureLaterDialog()V
    .locals 4

    .line 280
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_2nd_measure_later_popup_title:I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 282
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_last_measure_later_popup_title:I

    .line 285
    :cond_0
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 286
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measure_later_popup_body:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 288
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_yes:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 295
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$2;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$2;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 301
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 303
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showVideo()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->hasVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v1, "showVideo"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mBackGround:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "mBackGround"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 184
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 185
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mBackGround:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "mBackGround"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v0, "CurrentVideo don\'t have video URI"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final stopVideo()V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->stopPlayback()V

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final checkAndMakeRandomError(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 0

    const-string p0, "currentState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    if-ne p1, p0, :cond_0

    .line 105
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_1_STEP:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isRandomErrorCaseStep(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 106
    :cond_0
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    if-ne p1, p0, :cond_1

    .line 107
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->ERROR_SECOND_READY:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isRandomErrorCaseStep(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 111
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->onOffBTForDemo()V

    :cond_2
    return-void
.end method

.method public final getMCurrentDrawingStatus()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final getMCurrentIsPossibleBack()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    return p0
.end method

.method public final getMCurrentView()Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    return-object p0
.end method

.method public final getMMenuItem()Landroid/view/MenuItem;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method public final getMSidePadding()Ljava/lang/Integer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mSidePadding:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMVideoView()Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    return-object p0
.end method

.method public final initView()V
    .locals 4

    .line 72
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mSidePadding:Ljava/lang/Integer;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 82
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->load()V

    .line 87
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    const-string v2, "StateManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v1

    const-string v2, "StateManager.getInstance().currentState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    if-ne v1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    const-string v2, "Recalibration is staring..."

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->setCalibrationState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 91
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    const-string v2, "StateManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v1

    const-string v2, "StateManager.getInstance().currentState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start status :  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    const-string v3, "mVideo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeView(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    .line 98
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->initRandomError()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->onBack()V

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    if-eqz v0, :cond_2

    .line 269
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->prev()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    if-ne v0, v1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "prevState"

    .line 273
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeView(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->setSetDefaultMenuColor(Z)V

    .line 46
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_starting_step_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->makeFulltransParentStatusBar()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$menu;->shealth_monitor_step_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMenuFirstItem:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->hasMenu()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->onBackPressed()V

    goto :goto_0

    .line 259
    :cond_0
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMenuFirstItem:I

    if-ne v0, v1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->showMeasureLaterDialog()V

    .line 263
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onPause()V
    .locals 0

    .line 136
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->pauseVideo()V

    .line 138
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->onPause()V

    return-void

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 3

    .line 123
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    const-string v2, "StateManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 126
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    const-string v1, "StateManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    const-string v1, "StateManager.getInstance().currentState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeView(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->onResume()V

    .line 132
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->hiddenVideo()V

    return-void
.end method

.method public final removeAllFragmentDialog()V
    .locals 4

    .line 308
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->getNO_CONNECTION_POPUP_TAG()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->removeFragmentDialog(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;)V

    return-void
.end method

.method public final setMCurrentDrawingStatus(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentDrawingStatus:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-void
.end method

.method public final setMCurrentIsPossibleBack(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentIsPossibleBack:Z

    return-void
.end method

.method public final setMCurrentView(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mCurrentView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    return-void
.end method

.method public final setMMenuItem(Landroid/view/MenuItem;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mMenuItem:Landroid/view/MenuItem;

    return-void
.end method

.method public final setMSidePadding(Ljava/lang/Integer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mSidePadding:Ljava/lang/Integer;

    return-void
.end method

.method public final setMVideoView(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    return-void
.end method
