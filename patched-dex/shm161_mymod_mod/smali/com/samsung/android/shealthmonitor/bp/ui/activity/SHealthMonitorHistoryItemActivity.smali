.class public Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.source "SHealthMonitorHistoryItemActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorHistoryItemActivity"


# instance fields
.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mCancel:Landroid/widget/TextView;

.field private mComment:Landroid/widget/EditText;

.field private mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceInfo:Landroid/widget/TextView;

.field private mDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

.field private mDiastolic:Landroid/widget/TextView;

.field private mError:Landroid/widget/TextView;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mIsChanged:Z

.field private mIsError:Z

.field private mIsFromHomeCard:Z

.field private mPulse:Landroid/widget/TextView;

.field private mSave:Landroid/widget/TextView;

.field private mSystolic:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsFromHomeCard:Z

    .line 284
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsError:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    return-object p0
.end method

.method private checkSave(Z)V
    .locals 3

    .line 179
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_data:I

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 183
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_save_your_changes_or_discard_them:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 184
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 187
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$3;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 189
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 191
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_discard:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$5;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNeutralButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 198
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->baseui_button_save:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const p1, -0xad7f0e

    .line 205
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 206
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 207
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    const-string v0, "dialog"

    invoke-virtual {p1, p0, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private doDelete()V
    .locals 3

    .line 352
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_data:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 356
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_delete_bp_measurement:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 358
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 360
    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$9;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 362
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$10;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 363
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_delete:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$11;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const v1, -0xad7f0e

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 384
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 386
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDialog:Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private doSave()V
    .locals 2

    .line 137
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_saving_dot:I

    .line 138
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setComment(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->hideSoftInput()V

    .line 144
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private hideSoftInput()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initActionBar()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 261
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 262
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const-string v0, ""

    .line 263
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 215
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_time:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mTime:Landroid/widget/TextView;

    .line 216
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_info:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mInfoImage:Landroid/widget/ImageView;

    .line 217
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_systolic:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSystolic:Landroid/widget/TextView;

    .line 219
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_diastolic:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDiastolic:Landroid/widget/TextView;

    .line 220
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_pulse:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mPulse:Landroid/widget/TextView;

    .line 221
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_comment:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    .line 222
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_error:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mError:Landroid/widget/TextView;

    .line 223
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_device_info:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDeviceInfo:Landroid/widget/TextView;

    .line 225
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_bottom_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 226
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_bottom_cancel:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mCancel:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_bottom_save:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, MMMM dd, hh:mm a"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mTime:Landroid/widget/TextView;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUpdateTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSystolic:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDiastolic:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x63

    if-ge v0, v2, :cond_0

    .line 237
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_item_activity_diastolic_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 238
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x8

    .line 239
    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->convertDpToPx(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mPulse:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$7;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 254
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method static final synthetic lambda$checkSave$4$SHealthMonitorHistoryItemActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$doDelete$10$SHealthMonitorHistoryItemActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$doDelete$11$SHealthMonitorHistoryItemActivity(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$null$1$SHealthMonitorHistoryItemActivity()V
    .locals 0

    .line 160
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->dismissProgressbar()V

    return-void
.end method

.method private restoreComment()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/SoftInputUtils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showSoftInput()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const-string v0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [after] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 311
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    .line 312
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 313
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    .line 316
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 317
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " [before] : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$checkSave$5$SHealthMonitorHistoryItemActivity(Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->showSoftInput()V

    return-void
.end method

.method final synthetic lambda$checkSave$6$SHealthMonitorHistoryItemActivity(ZLandroid/view/View;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->restoreComment()V

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    :cond_0
    return-void
.end method

.method final synthetic lambda$checkSave$7$SHealthMonitorHistoryItemActivity(ZLandroid/view/View;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->doSave()V

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    :cond_0
    return-void
.end method

.method final synthetic lambda$doDelete$14$SHealthMonitorHistoryItemActivity(Landroid/view/View;)V
    .locals 1

    .line 364
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_deleting_dot:I

    .line 365
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 366
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$12;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method final synthetic lambda$doSave$2$SHealthMonitorHistoryItemActivity()V
    .locals 5

    .line 145
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->updateBpData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " update is success id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    const-string v0, "SHealthMonitorHistoryItemActivity"

    const-string v1, "BP08"

    .line 149
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " update is fail ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x1f4

    .line 155
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$14;->$instance:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic lambda$hideSoftInput$3$SHealthMonitorHistoryItemActivity()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/SoftInputUtils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method final synthetic lambda$initView$8$SHealthMonitorHistoryItemActivity()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 246
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsFromHomeCard:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 248
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$null$12$SHealthMonitorHistoryItemActivity()V
    .locals 0

    .line 376
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->dismissProgressbar()V

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    return-void
.end method

.method final synthetic lambda$null$13$SHealthMonitorHistoryItemActivity()V
    .locals 5

    .line 367
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->deleteBpData(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)I

    move-result v0

    const-string v1, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [setNeutralButtonClickListener] delete row count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    const-string v3, "com.samsung.health.bp"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertDeleteTableData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)J

    move-result-wide v0

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setNeutralButtonClickListener] insert delete table : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getAllDeleteTableDataSync()Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setNeutralButtonClickListener] delete : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$13;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic lambda$onCreate$0$SHealthMonitorHistoryItemActivity(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [DeviceProfile] Device : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDeviceInfo:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_device_info:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getFixedName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method final synthetic lambda$onTextChanged$9$SHealthMonitorHistoryItemActivity()V
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->checkSave(Z)V

    return-void

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mInfoImage:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const-string p1, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorHistoryItemInfoActivity"

    .line 330
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mSave:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->doSave()V

    .line 334
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsFromHomeCard:Z

    if-eqz p1, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mCancel:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 338
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsFromHomeCard:Z

    if-eqz p1, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    return-void

    .line 341
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->checkSave(Z)V

    return-void

    .line 344
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->restoreComment()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 63
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$style;->SHealthMonitorThemeLightNoDividerGrayUp:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->setTheme(I)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->setSetDefaultMenuColor(Z)V

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    const-string v1, "onCreate() - Start"

    .line 66
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_history_item_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v1, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [SHealthMonitorHistoryItemActivity] keys = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [key] = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [val] = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    .line 80
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    if-eqz p1, :cond_1

    const-string p1, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " data = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getDataByDeviceId(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    .line 83
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {p1, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "fromHome"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsFromHomeCard:Z

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mData:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    if-nez p1, :cond_3

    .line 93
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_data_is_empty:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    return-void

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->initView()V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->initActionBar()V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    const-string p1, "onCreate() - End"

    .line 100
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$menu;->shealth_monitor_history_item_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_item_menu_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    .line 394
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    xor-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mBottomLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->checkSave(Z)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->finish()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_history_item_menu_delete:I

    if-ne v0, v1, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->doDelete()V

    .line 124
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 276
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 269
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onResume()V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    const-string v0, "onResume() - Start"

    .line 270
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    const-string v0, "onResume() - End"

    .line 271
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string p2, "S HealthMonitor - SHealthMonitorHistoryItemActivity"

    .line 287
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, " [on] : "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/16 p4, 0x96

    if-le p2, p4, :cond_0

    const/4 p2, 0x1

    .line 289
    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsError:Z

    .line 290
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->requestFocus()Z

    .line 292
    iget-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 294
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, -0x29cbbe

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 295
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$8;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 297
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsError:Z

    if-eqz p1, :cond_1

    .line 299
    iput-boolean p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mIsError:Z

    return-void

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mComment:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 302
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->mError:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
