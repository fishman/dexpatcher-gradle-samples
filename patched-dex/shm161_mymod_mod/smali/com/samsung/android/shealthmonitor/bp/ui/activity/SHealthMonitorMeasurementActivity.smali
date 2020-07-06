.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorMeasurementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;,
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;,
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;,
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorMeasurementActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorMeasurementActivity.kt\ncom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity\n*L\n1#1,684:1\n*E\n"
.end annotation


# instance fields
.field private final REQUEST_CODE_FOR_INPUT_ACTIVITY:I

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mIsCancel:Z

.field private mIsFinished:Z

.field private final mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mResultOfCalibration:Ljava/lang/String;

.field private final mSessionTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

.field private mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorMeasurementActivity"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 40
    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->REQUEST_CODE_FOR_INPUT_ACTIVITY:I

    .line 45
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNONE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOuter:Ljava/lang/ref/WeakReference;

    .line 48
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mSessionTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

    .line 49
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    return-void
.end method

.method public static final synthetic access$cancelAndFinish(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->cancelAndFinish()V

    return-void
.end method

.method public static final synthetic access$cancelCalibration(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->cancelCalibration(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMIsCancel$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsCancel:Z

    return p0
.end method

.method public static final synthetic access$getMIsFinished$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsFinished:Z

    return p0
.end method

.method public static final synthetic access$getMOneMinuteTimer$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    return-object p0
.end method

.method public static final synthetic access$getMResultOfCalibration$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMSessionTimer$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mSessionTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

    return-object p0
.end method

.method public static final synthetic access$getParsedResult(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getParsedResult(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$launchWearableManager(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->launchWearableManager()V

    return-void
.end method

.method public static final synthetic access$playVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->playVideo()V

    return-void
.end method

.method public static final synthetic access$setMIsCancel$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsCancel:Z

    return-void
.end method

.method public static final synthetic access$setMIsFinished$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsFinished:Z

    return-void
.end method

.method public static final synthetic access$setMResultOfCalibration$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->showVideo()V

    return-void
.end method

.method public static final synthetic access$shownDialogTag(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->stopVideo()V

    return-void
.end method

.method private final cancelAndFinish()V
    .locals 1

    const-string v0, "prepare_calibration"

    .line 232
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->cancelCalibration(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->gotoInitSate()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->finish()V

    return-void
.end method

.method private final cancelCalibration(Ljava/lang/String;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "cancelCalibration start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsCancel:Z

    .line 240
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$cancelCalibration$reqId$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$cancelCalibration$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->cancelCalibration(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 258
    check-cast p0, Landroid/content/Context;

    const-string p1, "Connected watch was not found!, UI test mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private final checkAndMakeRandomError()V
    .locals 6

    .line 545
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    const-string v1, "StateManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "MeasuringActivity"

    .line 546
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isRandomErrorCaseStep(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v2, "This is in RandomErrorCase."

    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v1, Lkotlin/random/Random;

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v0

    .line 549
    new-instance v1, Lkotlin/ranges/LongRange;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x6d60

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v2, Lkotlin/random/Random;

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)J

    move-result-wide v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 558
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v3, "Time out in RandomErrorCase."

    invoke-static {v0, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 552
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Disable BT in RandomErrorCase."

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$1;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final dismissDialogs()V
    .locals 2

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 509
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss STOP_POPUP_TAG"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    .line 513
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss DONE_POPUP_TAG"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v0, :cond_4

    .line 517
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss TIME_OUT_POPUP_TAG"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez v0, :cond_6

    .line 521
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss NO_CONNECTION_POPUP_TAG"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getERROR_FROM_WATCH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_9

    if-nez v0, :cond_8

    .line 525
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.ui.dialog.SAlertDlgFragment"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismissAllowingStateLoss()V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "dismiss PAUSE_POPUP_TAG"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;->stopTimer()V

    return-void
.end method

.method private final getParsedResult(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 152
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 153
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "result"

    .line 154
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(\"result\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startCalibration result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    const-string p1, "data"

    .line 157
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object p1

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "datauuid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->setUuidForUpdateCalibration(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 162
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 164
    :cond_1
    :goto_2
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_3

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private final hiddenVideo()V
    .locals 2

    .line 263
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "background"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v1, "mVideo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 265
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "background"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 266
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "background"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->makeFullTransParentStatusBar()V

    return-void
.end method

.method private final initView()V
    .locals 4

    .line 93
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    const-string v3, "mVideo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$raw;->phone_measuring_black:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setVideoPath(Landroid/net/Uri;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 107
    :cond_3
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isErrorDemo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isCustomErrorType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->getCustomErrorType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCase : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->getCustomErrorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$initView$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 118
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->startCalibration()V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->checkAndMakeRandomError()V

    return-void
.end method

.method private final launchWearableManager()V
    .locals 3

    .line 400
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.app.watchmanager"

    const/4 v2, 0x0

    .line 403
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 404
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchWearableManager() : intent is null."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v1, 0x10008000

    .line 410
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchWearableManager() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "launchWearableManager() : NameNotFoundException is occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->gotoInitSate()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->finish()V

    return-void
.end method

.method private final makeFullTransParentStatusBar()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->setWindowFlag(Landroid/app/Activity;IZ)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private final pauseVideo()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->pause()V

    return-void

    :cond_1
    return-void
.end method

.method private final playVideo()V
    .locals 0

    return-void
.end method

.method private final removeVideo()V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->hiddenVideo()V

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->stopVideo()V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 296
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void

    :cond_2
    return-void
.end method

.method private final setDialogContent(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .locals 7

    const-string v0, ""

    const-string v1, ""

    .line 335
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v2, :cond_0

    .line 337
    sget v6, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_measurement_finished_dialog:I

    .line 338
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measurement_done_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string p0, "getString(R.string.sheal\u2026rement_done_dialog_title)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    :cond_0
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measurement_stop_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026rement_stop_dialog_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measurement_stop_dialog_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p0, "getString(R.string.sheal\u2026urement_stop_dialog_desc)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 345
    :cond_1
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_time_out_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.shealth_monitor_time_out_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_time_out_body:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.shealth_monitor_time_out_body)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getTIME_OUT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->sendErrorLog(Ljava/lang/String;)V

    :goto_0
    move v3, v5

    goto/16 :goto_2

    .line 351
    :cond_2
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->cannot_connect_with_your_watch:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.cannot_connect_with_your_watch)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->cannot_connect_with_your_watch_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.canno\u2026ect_with_your_watch_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->sendErrorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_3
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getERROR_FROM_WATCH()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 359
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_signal_is_weak_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026ror_signal_is_weak_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    .line 361
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSQI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_try_to_snug_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026g_error_try_to_snug_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :cond_4
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_SQI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 363
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_unable_to_measure_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026_unable_to_measure_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_try_to_rub_the_wrist_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026ry_to_rub_the_wrist_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_5
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNO_BEAT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_try_to_clean_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026_error_try_to_clean_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 367
    :cond_6
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getDETECT_MOVE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_try_to_not_move_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026ror_try_to_not_move_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    :cond_7
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getWEAR_OFF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 369
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_watch_is_detached_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026_watch_is_detached_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_watch_is_detached_desc:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026r_watch_is_detached_desc)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 372
    :cond_8
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getLOW_BATTERY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 373
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_unable_to_measure_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026_unable_to_measure_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_low_battery:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026suring_error_low_battery)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_9
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getNOT_ENOUGH_SPACE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_system_alert_storage_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026stem_alert_storage_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_not_enough_space:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026g_error_not_enough_space)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_a
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getCANCEL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_cancel_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026uring_error_cancel_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_cancel:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.sheal\u2026p_measuring_error_cancel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 385
    :cond_b
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_measuring_error_unable_to_measure_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.sheal\u2026_unable_to_measure_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    .line 389
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->sendErrorLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 393
    :goto_2
    new-instance p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 394
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    move v4, v5

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 395
    :cond_e
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    :cond_f
    return-object p0
.end method

.method private final setWindowFlag(Landroid/app/Activity;IZ)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "win"

    .line 132
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 134
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 136
    :cond_0
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p2, p2

    and-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 138
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final showDialog(Ljava/lang/String;)V
    .locals 5

    .line 423
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 424
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showDialog "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->setDialogContent(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    move-result-object v0

    .line 427
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->dismissDialogs()V

    .line 430
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_no_thanks:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 431
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_yes_enter_now:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 435
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$3;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$3;

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    goto/16 :goto_3

    .line 437
    :cond_1
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    return-void

    .line 439
    :cond_3
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_no:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 443
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_yes:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 444
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$6;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$6;

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    goto/16 :goto_3

    .line 446
    :cond_4
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 448
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->dismissDialogs()V

    .line 449
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$7;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 450
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$8;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    goto :goto_3

    .line 452
    :cond_6
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getERROR_FROM_WATCH()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_1
    if-eqz v3, :cond_9

    .line 454
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->shownDialogTag()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->dismissDialogs()V

    goto :goto_2

    :cond_8
    return-void

    .line 457
    :cond_9
    :goto_2
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$9;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 458
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$10;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    goto :goto_3

    .line 460
    :cond_a
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->dismissDialogs()V

    .line 462
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$11;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 463
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$showDialog$12;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 466
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 468
    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 471
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->cancelCalibration(Ljava/lang/String;)V

    goto :goto_4

    .line 472
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;->startTimer()V

    .line 473
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 475
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 478
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string p1, "cannot show dialog on destroy."

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showVideo()V
    .locals 3

    .line 271
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "background"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 272
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "background"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 273
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mVideo:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string v2, "mVideo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 274
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "background"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final shownDialogTag()Ljava/lang/String;
    .locals 2

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Shown STOP_POPUP_TAG"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Shown DONE_POPUP_TAG"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Shown TIME_OUT_POPUP_TAG"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Shown NO_CONNECTION_POPUP_TAG"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 499
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getERROR_FROM_WATCH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 500
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "Shown PAUSE_POPUP_TAG"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getERROR_FROM_WATCH()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 503
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v0, "No shown dialog now."

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private final startCalibration()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mSessionTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->startTimer()V

    .line 169
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$startCalibration$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->startBpCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "Connected watch was not found!, UI test mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsCancel:Z

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->stopVideo()V

    .line 222
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getNO_CONNECTION()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->showDialog(Ljava/lang/String;)V

    const-string v0, "prepare_calibration"

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->cancelCalibration(Ljava/lang/String;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->sendSALog()V

    return-void
.end method

.method private final stopVideo()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mVideoView:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->stopPlayback()V

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getREQUEST_CODE_FOR_INPUT_ACTIVITY()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->REQUEST_CODE_FOR_INPUT_ACTIVITY:I

    return p0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 534
    iget p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->REQUEST_CODE_FOR_INPUT_ACTIVITY:I

    if-ne p1, p3, :cond_1

    .line 535
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;->getRESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->finish()V

    return-void

    .line 537
    :cond_0
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;->getRESULT_CODE_RETAKE_ACTIVITY()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 538
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->gotoInitSate()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->finish()V

    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsFinished:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getSTOP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->showDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_measurement_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->initActionBar()V

    .line 83
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsFinished:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->initView()V

    :cond_0
    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->removeVideo()V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mSessionTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->stopTimer()V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mOneMinuteTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$OneMinuteTimerHandler;->stopTimer()V

    .line 325
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->onBackPressed()V

    .line 146
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onPause()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->pauseVideo()V

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->hiddenVideo()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 307
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mIsFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->mResultOfCalibration:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->getSUCCESS()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->removeVideo()V

    .line 309
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getDONE()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->showDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final sendErrorLog(Ljava/lang/String;)V
    .locals 2

    const-string p0, "errorString"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "SHealthMonitorMeasurementActivity"

    .line 681
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v0

    const-string v1, "StateManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v0

    .line 680
    invoke-static {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendErrorOnCalibration(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final sendSALog()V
    .locals 3

    const-string p0, "SHealthMonitorMeasurementActivity"

    const-string v0, "BP01"

    .line 669
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    const-string v2, "StateManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v1

    .line 668
    invoke-static {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendCalibrationLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 671
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getInitialCalibrationComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 672
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p0

    const-string v0, "StateManager.getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "SHealthMonitorMeasurementActivity"

    const-string v0, "BP03"

    .line 673
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
