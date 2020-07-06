.class public Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;
.super Landroid/widget/LinearLayout;
.source "SHealthMonitorBpDataView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpDataView"


# instance fields
.field private mBpData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBpDataReadObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

.field private mDataContainer:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/view/View;

.field private mForceChangeCardListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsExpand:Z

.field private mIsFirstSwipeUp:Z

.field private mNoDataLearnView:Landroid/widget/LinearLayout;

.field private mNoDataTopDia:Landroid/view/View;

.field private mNoDataTopPulse:Landroid/view/View;

.field private mNoDataTopSys:Landroid/view/View;

.field private mSwipeUp:Landroid/widget/LinearLayout;

.field private mSyncButton:Landroid/widget/LinearLayout;

.field private mSyncIcon:Landroid/widget/ImageView;

.field private mSyncReceiver:Landroid/content/BroadcastReceiver;

.field private mSyncText:Landroid/widget/TextView;

.field private mTopAddNote:Landroid/widget/TextView;

.field private mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

.field private mTopDia:Landroid/widget/TextView;

.field private mTopEditNote:Landroid/widget/LinearLayout;

.field private mTopPulse:Landroid/widget/TextView;

.field private mTopSys:Landroid/widget/TextView;

.field private mTopTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    .line 165
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    .line 374
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    .line 165
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    .line 374
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    .line 165
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    .line 374
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    .line 165
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    .line 374
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->showNoDatView()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->showDataView(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->makeDataView(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->loadHistoryData()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->doFail()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private doFail()V
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncText:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_sync:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 407
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_unable_to_sync_data:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_something_went_wrong_try_again:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 414
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$2;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 416
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$3;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 419
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_retry:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const v1, -0xad7f0e

    .line 423
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 424
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 426
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private declared-synchronized doSyncOperation()V
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncText:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_syncing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 362
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 366
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncText:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_sync:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_unable_to_sync_data_watch_disconnected:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 359
    monitor-exit p0

    throw v0
.end method

.method private forceSync()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getErrorSystemStatus()[I

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorBpDataView"

    const-string v0, " [forceSync] Start!!! "

    .line 143
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;->UI:Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;->syncRequest(Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$RequestModule;)Z

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_data_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_data_view_swipe_up:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    .line 92
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_no_data_learn_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    .line 93
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_divider:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDivider:Landroid/view/View;

    .line 95
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_sys:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopSys:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_no_data_top_sys:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopSys:Landroid/view/View;

    .line 97
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_dia:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopDia:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_no_data_top_dia:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopDia:Landroid/view/View;

    .line 99
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_pulse:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopPulse:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_no_data_top_pulse:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopPulse:Landroid/view/View;

    .line 101
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_time:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopTime:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_add_note:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopAddNote:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopAddNote:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_top_edit_note:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopEditNote:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopEditNote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->bp_card_data_view_swipe_up_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_container:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    .line 116
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_card_data_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_data_sync:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_data_sync_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncText:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_data_sync_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncIcon:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getWearableInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getLastBpCalibrationTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->forceSync()V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->loadHistoryData()V

    return-void
.end method

.method static final synthetic lambda$doFail$2$SHealthMonitorBpDataView(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$doFail$3$SHealthMonitorBpDataView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private loadHistoryData()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpData:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpData:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 253
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBloodPressureLatestData()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpData:Landroid/arch/lifecycle/LiveData;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpData:Landroid/arch/lifecycle/LiveData;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mBpDataReadObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private makeDataView(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 263
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 264
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->makeTopView(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 269
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorBpCardHistoryItemView;->setData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V

    .line 272
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeTopView(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V
    .locals 4

    .line 279
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 280
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopSys:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopDia:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopPulse:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, hh:mm a"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 284
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getCreateTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 285
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopAddNote:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopEditNote:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 290
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopAddNote:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopEditNote:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showDataView(I)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopSys:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopDia:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopPulse:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopSys:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopDia:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopPulse:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsFirstSwipeUp:Z

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz p0, :cond_2

    .line 204
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setIsExpireButIntroCard(Z)V

    .line 206
    :cond_2
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->forceRefreshTopCard()V

    return-void
.end method

.method private showNoDatView()V
    .locals 6

    .line 210
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;->getRemainDay()I

    move-result v0

    .line 211
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getCurrentState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getCalibrationCount()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lez v1, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    if-le v1, v5, :cond_4

    if-ge v1, v2, :cond_4

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mForceChangeCardListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    const-string v2, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemainDay : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Step :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mForceChangeCardListener : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mForceChangeCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {v0, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setIsExpireButIntroCard(Z)V

    .line 219
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mForceChangeCardListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 222
    :cond_4
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {v0, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->setIsExpireButIntroCard(Z)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopSys:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopDia:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataTopPulse:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopSys:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopDia:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopPulse:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopAddNote:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopEditNote:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [showNoDatView] mIsExpand : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    if-eqz p0, :cond_6

    .line 242
    invoke-static {v5}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setTopIntroCardVisibility(Z)V

    .line 244
    :cond_6
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->forceRefreshTopCard()V

    return-void
.end method


# virtual methods
.method public hasData()Z
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mDataContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hideSwipe()V
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method final synthetic lambda$doFail$4$SHealthMonitorBpDataView(Landroid/view/View;)V
    .locals 0

    .line 420
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->doSyncOperation()V

    return-void
.end method

.method final synthetic lambda$initView$0$SHealthMonitorBpDataView(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->hideSwipe()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryActivity"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$initView$1$SHealthMonitorBpDataView(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryActivity"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    const/high16 v1, 0x4000000

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpHowToUseDetailActivity"

    .line 299
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "HOW_TO_USE_TYPE"

    const/4 v2, 0x2

    .line 301
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : class not found = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 308
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSyncButton:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->doSyncOperation()V

    return-void

    :cond_1
    :try_start_1
    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryItemActivity"

    .line 312
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "data"

    .line 315
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mTopData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "fromHome"

    const/4 v1, 0x1

    .line 316
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Exception : class not found = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExpand(Z)V
    .locals 3

    const-string v0, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [onExpand] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mIsExpand:Z

    if-eqz p1, :cond_0

    .line 351
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onExpand(ZF)V
    .locals 3

    const-string v0, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [onExpand] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "+ ypos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->onExpand(Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_1

    const-string v0, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [onExpand] mNoDataLearnView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_0
    const-string p1, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 341
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " [onExpand] mNoDataLearnView ypos : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mNoDataLearnView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setForceCardChangeListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mForceChangeCardListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setFullButton(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->mSwipeUp:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpMeasuredDataExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->showNoDatView()V

    :cond_0
    return-void
.end method
