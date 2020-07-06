.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorStepStartView.kt"


# instance fields
.field private final CONTINUE_POPUP_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mConfirmTitle:Ljava/lang/String;

.field private mCurrentState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field private mMainNextClickListener:Landroid/view/View$OnClickListener;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calibrationState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    const-string v0, "S HealthMonitor - SHealthMonitorStepStartView"

    .line 22
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->TAG:Ljava/lang/String;

    const-string v0, "CONTINUE_POPUP_TAG"

    .line 23
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->CONTINUE_POPUP_TAG:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mCurrentState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    .line 28
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 38
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_first_step_ready_view:I

    goto :goto_0

    .line 34
    :pswitch_0
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_third_step_ready_view:I

    .line 35
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_take_the_ps_measurement:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_tracker_last:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.common_tracker_last)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ker_last).decapitalize())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    goto :goto_0

    .line 30
    :pswitch_1
    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_second_step_ready_view:I

    .line 31
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_take_the_ps_measurement:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_tracker_next:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.common_tracker_next)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026ker_next).decapitalize())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    .line 42
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "View.inflate(context, res, this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->root:Landroid/view/View;

    .line 44
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$goToNextState(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;Landroid/view/View;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->goToNextState(Landroid/view/View;)V

    return-void
.end method

.method private final goToNextState(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$goToNextState$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;Landroid/view/View;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->sendPreCalibrationRequest(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Connected watch was not found!"

    invoke-static {v1, v2, v0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 100
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 0

    .line 57
    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$color;->step_start_top_color:I

    return p0
.end method

.method public final getMConfirmTitle()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getMCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mCurrentState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public final getMMainNextClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->root:Landroid/view/View;

    return-object p0
.end method

.method public final onBack()V
    .locals 0

    return-void
.end method

.method public final setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setMConfirmTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    return-void
.end method

.method public final setMCurrentState(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mCurrentState:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-void
.end method

.method public final setMMainNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setRoot(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->root:Landroid/view/View;

    return-void
.end method

.method public final showConfirmDialog()V
    .locals 5

    .line 106
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mNext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorStepStartActivity"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    .line 108
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->mConfirmTitle:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 109
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_step_continue_dialog:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 110
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_yes:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$showConfirmDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$showConfirmDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 113
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_not_yet:I

    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$showConfirmDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$showConfirmDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;)V

    check-cast v3, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$color;->dialog_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 121
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->CONTINUE_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 123
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView;->TAG:Ljava/lang/String;

    const-string v0, "showConfirmDialog(), error in confirm dialog build"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
