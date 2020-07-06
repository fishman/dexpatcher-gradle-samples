.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;
.super Landroid/widget/LinearLayout;
.source "PrerequisiteStep3.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - PrerequisiteStep3"


# instance fields
.field private final DIALOG_TAG_MEDICAL_CONDITION_POPUP:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "DIALOG_TAG_MEDICAL_CONDITION_POPUP"

    .line 24
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->DIALOG_TAG_MEDICAL_CONDITION_POPUP:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->initView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$launchNextScreen(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->launchNextScreen()V

    return-void
.end method

.method public static final synthetic access$sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->sendPreCalibrationRequest()V

    return-void
.end method

.method private final initView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 5

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-eqz p1, :cond_0

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p1, Landroid/view/LayoutInflater;

    .line 35
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_calibrate_first_prerequisite_step3:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContinueButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_these_medical_conditions:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMedicalConditions:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mMedicalConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_do_not_use_if_you_have_ps:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMedicalConditions:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mMedicalConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "mMedicalConditions.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "highlightText"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v0, p1, v4, v4, v1}, Lkotlin/text/StringsKt;->indexOf$default$49949d7e(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    .line 56
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMedicalConditions:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "mMedicalConditions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast v1, Landroid/text/Spannable;

    .line 57
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v3, 0x21

    .line 57
    invoke-interface {v1, v2, v0, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 62
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mMedicalConditions:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "mMedicalConditions"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private final launchNextScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setIntroductionDisplayed(Z)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    check-cast p0, Landroid/content/Context;

    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorStepStartActivity"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final sendPreCalibrationRequest()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "Connected watch was not found!, UI test mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->launchNextScreen()V

    .line 82
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mContinueButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v0, "mContinueButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMActivity()Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    return-object p0
.end method

.method public final setMActivity(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    return-void
.end method

.method public final showMedicalConditionDialog()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->DIALOG_TAG_MEDICAL_CONDITION_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->TAG:Ljava/lang/String;

    const-string v0, "showMedicalConditionDialog is already visible"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_medical_conditions_include:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 97
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_medical_conditions_dialog_content:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 98
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 99
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_ok:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$showMedicalConditionDialog$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$showMedicalConditionDialog$1;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->DIALOG_TAG_MEDICAL_CONDITION_POPUP:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 104
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
