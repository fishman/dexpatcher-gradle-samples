.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorBpInputActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;,
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorBpInputActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorBpInputActivity.kt\ncom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity\n*L\n1#1,675:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;

.field private static final RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY:I = 0x65

.field private static final RESULT_CODE_RETAKE_ACTIVITY:I = 0x66


# instance fields
.field private final COMFIRM_POPUP_TAG:Ljava/lang/String;

.field private final OUT_OF_RANGE_DIALOG_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private bShowErrorText:Z

.field private final editActionWatcher:Landroid/widget/TextView$OnEditorActionListener;

.field private final foucsWatcher:Landroid/view/View$OnFocusChangeListener;

.field private mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

.field private mIsProgressing:Z

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

.field private final mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorBpInputActivity"

    .line 36
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "COMFIRM_POPUP_TAG"

    .line 38
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    const-string v0, "OUT_OF_RANGE_DIALOG_TAG"

    .line 39
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->OUT_OF_RANGE_DIALOG_TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mOuter:Ljava/lang/ref/WeakReference;

    .line 47
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    .line 57
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->editActionWatcher:Landroid/widget/TextView$OnEditorActionListener;

    .line 82
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$foucsWatcher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$foucsWatcher$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->foucsWatcher:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static final synthetic access$checkDiastolicValue(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->checkDiastolicValue(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$checkSystolicValue(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;I)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->checkSystolicValue(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissProgress(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->dismissProgress()V

    return-void
.end method

.method public static final synthetic access$getMConfirmDialog$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    return-object p0
.end method

.method public static final synthetic access$getMTimer$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    return-object p0
.end method

.method public static final synthetic access$getRESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY$cp()I
    .locals 1

    .line 34
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->RESULT_CODE_GO_PREV_FROM_INPUT_ACTIVITY:I

    return v0
.end method

.method public static final synthetic access$getRESULT_CODE_RETAKE_ACTIVITY$cp()I
    .locals 1

    .line 34
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->RESULT_CODE_RETAKE_ACTIVITY:I

    return v0
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$sendCalibrationFinalUpdate(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Landroid/view/View;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->sendCalibrationFinalUpdate(Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$sendCalibrationUpdate(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Landroid/view/View;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->sendCalibrationUpdate(Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$setMConfirmDialog$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    return-void
.end method

.method public static final synthetic access$showProgress(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->showProgress()V

    return-void
.end method

.method public static final synthetic access$showSoftKeyboard(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->showSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$showTimeOutDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->showTimeOutDialog()V

    return-void
.end method

.method private final checkAndMakeRandomError()V
    .locals 1

    .line 127
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p0

    const-string v0, "StateManager.getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "SHealthMonitorBpInputActivity"

    .line 128
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->isRandomErrorCaseStep(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/util/DemoUtil;->onOffBTForDemo()V

    :cond_0
    return-void
.end method

.method private final checkDiastolicValue(I)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x32

    if-gt v1, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    const/16 v2, 0x6e

    if-gt p1, v2, :cond_1

    move p0, v0

    :cond_1
    and-int/2addr p0, v1

    return p0
.end method

.method private final checkSystolicValue(I)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x50

    if-gt v1, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    const/16 v2, 0xaa

    if-gt p1, v2, :cond_1

    move p0, v0

    :cond_1
    and-int/2addr p0, v1

    return p0
.end method

.method private final checkValue(II)Z
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final dismissProgress()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mIsProgressing:Z

    return-void
.end method

.method private final makeFulltransParentStatusBar()V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 150
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->setWindowFlag(Landroid/app/Activity;IZ)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "window"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private final sendCalibrationFinalUpdate(Landroid/view/View;I)V
    .locals 4

    .line 423
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    .line 424
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "mSystolicEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 425
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "mDiastolicEditText"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 426
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationFinalUpdate$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;ILandroid/view/View;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 423
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->updateBpCalibration(IIILcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->dismissProgress()V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Connected watch was not found!"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 494
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 495
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, v0}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final sendCalibrationUpdate(Landroid/view/View;I)V
    .locals 4

    .line 383
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    .line 384
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "mSystolicEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 385
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "mDiastolicEditText"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 386
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationUpdate$reqId$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$sendCalibrationUpdate$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;ILandroid/view/View;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    .line 383
    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->updateBpCalibration(IIILcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->dismissProgress()V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Connected watch was not found!"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v0, v2, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 417
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, v0}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setWindowFlag(Landroid/app/Activity;IZ)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string p1, "win"

    .line 155
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 157
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 159
    :cond_0
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p2, p2

    and-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 161
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private final showProgress()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->setCancelable(Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mProgressDialog:Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/TransparentProgressDialog;->show()V

    :cond_1
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mIsProgressing:Z

    return-void
.end method

.method private final showSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 556
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 557
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 558
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showSoftKeyboard$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showSoftKeyboard$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Landroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 p0, 0x64

    .line 557
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final showTimeOutDialog()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismiss()V

    .line 576
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 579
    :cond_1
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_time_out_title:I

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 580
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_time_out_body:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 582
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showTimeOutDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showTimeOutDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 587
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setAutoDismiss(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 591
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 592
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showTimeOutDialog$2;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showTimeOutDialog$2;

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 594
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 596
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final activeDiastolic()V
    .locals 2

    .line 277
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mDiastolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_active_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicLabel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->bp_calibration_edit_diastolic_color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mSystolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_deactive_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicLabel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->bp_calibration_edit_systolic_color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final activeSystolic()V
    .locals 2

    .line 266
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mSystolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_active_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 267
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicLabel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->bp_calibration_edit_systolic_color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mDiastolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_deactive_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicLabel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$color;->bp_calibration_edit_deactive_label_color:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final changeDoneButton()V
    .locals 4

    .line 103
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->bottomButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "bottomButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->bShowErrorText:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->checkHigherThan()Z

    move-result v0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Done button is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDone:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mDone"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    return-void
.end method

.method public final checkHigherThan()Z
    .locals 5

    .line 536
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSystolic()I

    move-result v0

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDiastolic()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ltz v1, :cond_1

    move v2, v3

    :cond_1
    and-int/2addr v2, v4

    .line 540
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->checkValue(II)Z

    move-result p0

    and-int/2addr p0, v2

    return p0
.end method

.method public final checkSystolic()Z
    .locals 1

    .line 511
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, "mSystolicEditText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getBShowErrorText()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->bShowErrorText:Z

    return p0
.end method

.method public final getDiastolic()I
    .locals 2

    .line 517
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, "mDiastolicEditText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 519
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 520
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public final getEditActionWatcher()Landroid/widget/TextView$OnEditorActionListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->editActionWatcher:Landroid/widget/TextView$OnEditorActionListener;

    return-object p0
.end method

.method public final getFoucsWatcher()Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->foucsWatcher:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method public final getSystolic()I
    .locals 2

    .line 527
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, "mSystolicEditText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    .line 529
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 530
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public final initView()V
    .locals 2

    .line 168
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDone:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mDone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 170
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->editActionWatcher:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 171
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->editActionWatcher:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 173
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->foucsWatcher:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->foucsWatcher:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDone:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTopview:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mTopview"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$initView$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->getMESSAGE_TIMER_START()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final invalidDiastolic()V
    .locals 2

    .line 254
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mDiastolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_invalid_active_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mInvalidErrorText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "mInvalidErrorText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final invalidSystolic()V
    .locals 2

    .line 244
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mSystolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_invalid_active_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mInvalidErrorText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "mInvalidErrorText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mIsProgressing:Z

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->finish()V

    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->dismissProgress()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_input_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->initView()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->getMESSAGE_TIMER_STOP()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->sendEmptyMessage(I)Z

    .line 569
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->finish()V

    .line 289
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final setBShowErrorText(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->bShowErrorText:Z

    return-void
.end method

.method public final showConfirmDialog()V
    .locals 4

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->checkAndMakeRandomError()V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->resetCount()V

    .line 306
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConnectionFailureDialog is already visible"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->health_monitor_bp_input_monitor_confirm_popup_title:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 315
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_input_dialog:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 339
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_confirm:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 359
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_edit:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 364
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showConfirmDialog$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 373
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 374
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->COMFIRM_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 376
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showOutOfRangeDialog()V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->resetCount()V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->getMESSAGE_TIMER_STOP()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->sendEmptyMessage(I)Z

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->OUT_OF_RANGE_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConnectionFailureDialog is already visible"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 644
    :cond_0
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_input_out_of_range_title:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 645
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_input_out_of_range_dialog:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 654
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 660
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$showOutOfRangeDialog$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 667
    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 668
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->mConfirmDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->OUT_OF_RANGE_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 670
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->TAG:Ljava/lang/String;

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateBgOfSystolicView()Z
    .locals 2

    .line 500
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const-string v0, "mSystolicEditText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final validDiastolic()V
    .locals 2

    .line 259
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDiastolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mDiastolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_active_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mInvalidErrorText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "mInvalidErrorText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final validSystolic()V
    .locals 2

    .line 249
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mSystolicEditTextLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "mSystolicEditTextLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->bp_calibrate_edit_deactive_background:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 250
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mInvalidErrorText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "mInvalidErrorText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
