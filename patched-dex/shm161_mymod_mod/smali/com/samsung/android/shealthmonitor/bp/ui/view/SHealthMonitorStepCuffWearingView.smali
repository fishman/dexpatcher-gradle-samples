.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorStepCuffWearingView.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private mBackground:I

.field private mMainNextClickListener:Landroid/view/View$OnClickListener;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    const-string v0, "S HealthMonitor - SHealthMonitorStepOneCuffWearingView"

    .line 19
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->TAG:Ljava/lang/String;

    .line 23
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_first_step_instruction_cuff_wearing_view:I

    .line 24
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->cuff_img2:I

    iput v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mBackground:I

    .line 26
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "View.inflate(context, layout, this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->root:Landroid/view/View;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 28
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTitle:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    :cond_0
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNext:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$goToNextState(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->goToNextState(Landroid/view/View;)V

    return-void
.end method

.method private final goToNextState(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView$goToNextState$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;Landroid/view/View;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->readyBpCalibration(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Connected watch was not found!"

    invoke-static {v1, v2, v0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 90
    sget-object p1, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;->showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/bp/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getBackgroundDrawableId()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mBackground:I

    return p0
.end method

.method public final getMBackground()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mBackground:I

    return p0
.end method

.method public final getMMainNextClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->root:Landroid/view/View;

    return-object p0
.end method

.method public hasVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBack()V
    .locals 1

    const-string v0, ""

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->cancelCalibration(Ljava/lang/String;)V

    return-void
.end method

.method public setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setMBackground(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mBackground:I

    return-void
.end method

.method public final setMMainNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->mMainNextClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setRoot(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;->root:Landroid/view/View;

    return-void
.end method
