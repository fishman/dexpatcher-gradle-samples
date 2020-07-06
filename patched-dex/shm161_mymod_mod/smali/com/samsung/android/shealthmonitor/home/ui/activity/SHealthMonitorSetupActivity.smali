.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorSetupActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$Companion;

.field private static final DIALOG_POPUP_CONFIRM_TNC_PP:Ljava/lang/String; = "DIALOG_POPUP_CONFIRM_TNC_PP"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorSetupActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mIsNewDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$doNext(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->doNext()V

    return-void
.end method

.method public static final synthetic access$setAgreementLink(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->setAgreementLink(Landroid/widget/TextView;)V

    return-void
.end method

.method public static final synthetic access$setConnectedDevice(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method

.method public static final synthetic access$startActivityByClassName(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final doNext()V
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->synchronizeTnc()V

    const-string v0, "home"

    const-string v1, "SHealthMonitorMainActivity"

    const v2, 0x10008000

    .line 90
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "home"

    const-string v1, "SHealthMonitorProfileEditActivity"

    const/high16 v2, 0x4000000

    .line 95
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final getDeviceInfo()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->nodeObservable()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 115
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    return-void
.end method

.method private final initView()V
    .locals 2

    .line 71
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mContinueButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mWithoutButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mLearnMore:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$initView$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->updateView()V

    return-void
.end method

.method private final setAgreementLink(Landroid/widget/TextView;)V
    .locals 0

    .line 180
    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/home/util/SHealthMonitorPolicyViewer;->setAnnotationForTncAndPrivacy(Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private final setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 4

    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object v0

    const-string v1, "NodeMonitor.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorSetupActivity"

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " return -> setConnectedDevice : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_5

    .line 125
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mConnectedWearableName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mConnectedWearableName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "device_nick_name"

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mConnectedContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mConnectedContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mDisconnectedContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mDisconnectedContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mContinueButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mContinueButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    .line 130
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mWithoutButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v1, "mWithoutButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    .line 131
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    if-eqz v0, :cond_4

    .line 132
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTermsAndConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mTermsAndConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->setAgreementLink(Landroid/widget/TextView;)V

    .line 134
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast v1, Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {p1, v2}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->isAllValid(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->finish()V

    return-void

    .line 138
    :cond_4
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "mTermsAndConditions"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 141
    :cond_5
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    move-result-object p1

    const-string v0, "NodeMonitor.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->isConnectedBpNode()Z

    move-result p1

    if-nez p1, :cond_6

    .line 142
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mConnectedContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v0, "mConnectedContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mDisconnectedContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const-string v0, "mDisconnectedContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mContinueButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v0, "mContinueButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    .line 145
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWithoutButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const-string v0, "mWithoutButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    .line 146
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mTermsAndConditions:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "mTermsAndConditions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    if-eqz p1, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->finish()V

    :cond_7
    return-void
.end method

.method private final showConfirmDialog()V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_POPUP_CONFIRM_TNC_PP"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorSetupActivity"

    const-string v0, "showConfirmDialog is already visible"

    .line 187
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_setup_tnc_pp_confirm_dialog_custom:I

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_setup_tnc_pp_confirm_popup_title:I

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 195
    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContent(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/ContentInitializationListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v0, "#5280f2"

    .line 199
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 200
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->common_yes_exit:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v0, "#5280f2"

    .line 204
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 205
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$3;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$showConfirmDialog$3;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "DIALOG_POPUP_CONFIRM_TNC_PP"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorSetupActivity"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showConfirmDialog IllegalStateException :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.samsung.android.shealthmonitor."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ui.activity."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 157
    new-instance p2, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorSetupActivity"

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final synchronizeTnc()V
    .locals 2

    .line 215
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->ACTION_TNC_SYNC:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final updateView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->showConfirmDialog()V

    return-void

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "S HealthMonitor - SHealthMonitorSetupActivity"

    const-string v1, "onCreate() - Start"

    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_setup_activity:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "new_device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "isNewDevice"

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->initView()V

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->initActionBar()V

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getDeviceInfo()V

    const-string p0, "S HealthMonitor - SHealthMonitorSetupActivity"

    const-string p1, "onCreate() - End"

    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const-string v0, "S HealthMonitor - SHealthMonitorSetupActivity"

    const-string v1, "onDestroy"

    .line 166
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->finish()V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "isNewDevice"

    .line 57
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->mIsNewDevice:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
