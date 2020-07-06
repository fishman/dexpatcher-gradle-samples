.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorAccessoriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHealthMonitorAccessoriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHealthMonitorAccessoriesActivity.kt\ncom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity\n*L\n1#1,201:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorAccessoriesActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$setConnectedDevice(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method

.method public static final synthetic access$showSyncErrorDialog(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->showSyncErrorDialog()V

    return-void
.end method

.method public static final synthetic access$startSyncData(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->startSyncData()V

    return-void
.end method

.method public static final synthetic access$updateLastSyncTime(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->updateLastSyncTime()V

    return-void
.end method

.method private final getDeviceInfo()V
    .locals 2

    .line 108
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->nodeObservable()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 109
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$getDeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$getDeviceInfo$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v0, "supportActionBar!!"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final initView()V
    .locals 2

    .line 46
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mConnectedWatchContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$1;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncData:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mPairMyWatch:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    sget-object v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$3;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$3;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mLearnMore:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    sget-object v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$4;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$initView$4;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->updateView()V

    return-void
.end method

.method private final setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 5

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 116
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->updateLastSyncTime()V

    .line 119
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoName:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "mWatchInfoName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-eqz v0, :cond_0

    const-string v1, "device_nick_name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mNoAccessory:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "mNoAccessory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "mWatchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mButtonLayout:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "mButtonLayout"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 124
    :cond_2
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 125
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgressBar:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "mSyncProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 126
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Unable to sync data. Watch disconnected."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 128
    :cond_3
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mNoAccessory:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "mNoAccessory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "mWatchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mButtonLayout:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "mButtonLayout"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private final setTimeout()V
    .locals 4

    .line 191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$setTimeout$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final showSyncErrorDialog()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 171
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_unable_to_sync_data:I

    const/4 v2, 0x3

    .line 170
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 173
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_something_went_wrong_try_again:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 176
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$showSyncErrorDialog$1;->INSTANCE:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$showSyncErrorDialog$1;

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 177
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_retry:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$showSyncErrorDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$showSyncErrorDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 178
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 179
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private final startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 77
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

    .line 78
    new-instance p2, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 82
    sget-object p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final startSyncData()V
    .locals 3

    .line 148
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgressBar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "mSyncProgressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncData:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "mSyncData"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 150
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgressBar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v2, "mSyncProgressBar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoDescription:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "mWatchInfoDescription"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoDescription:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "mWatchInfoDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ContextHolder.getContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_accessories_syncing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->setTimeout()V

    .line 154
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity$startSyncData$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;)V

    :cond_1
    return-void
.end method

.method private final updateLastSyncTime()V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableUtil;->getLastWearableDataInsertTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 137
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    new-instance v3, Ljava/sql/Time;

    invoke-direct {v3, v0, v1}, Ljava/sql/Time;-><init>(J)V

    .line 139
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ContextHolder.getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->home_accessories_last_synced_on_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoDescription:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "mWatchInfoDescription"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoDescription:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v1, "mWatchInfoDescription"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_1
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mWatchInfoDescription:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "mWatchInfoDescription"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final updateView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMDisposable()Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public final getMNode()Lcom/samsung/android/shealthmonitor/wearable/device/Node;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() - Start"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_accessories_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->initView()V

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->initActionBar()V

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->getDeviceInfo()V

    .line 42
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    const-string p1, "onCreate() - End"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 102
    sget-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 104
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->finish()V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 97
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - Start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - End"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setMNode(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAccessoriesActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    return-void
.end method
