.class public Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;
    }
.end annotation


# static fields
.field private static final IS_SPLASH_NEEDED:Ljava/lang/String; = "IS_SPLASH_NEEDED"

.field private static final POPUP_SCREEN_LOCK:Ljava/lang/String; = "POPUP_SCREEN_LOCK"

.field private static final REQUEST_CODE_EDIT_PROFILE:I = 0x4d2

.field private static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field private static final SWIPE_MIN_DISTANCE:I = 0x78

.field private static final SWIPE_THRESHOLD_VELOCITY:I = 0x96

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorMainActivity"


# instance fields
.field private drawer:Landroid/support/v4/widget/DrawerLayout;

.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mIntroView:Landroid/widget/LinearLayout;

.field private mIsSplashNeeded:Z

.field private mLastSyncTimeText:Landroid/widget/TextView;

.field mMainView:Landroid/widget/ScrollView;

.field private mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

.field private mRefreshReceiver:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

.field mSwipingLayout:Landroid/widget/LinearLayout;

.field private mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

.field private mSyncButtonText:Landroid/widget/TextView;

.field private mSyncProgress:Landroid/widget/ProgressBar;

.field private mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    .line 89
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 90
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    .line 91
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    .line 93
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mLastSyncTimeText:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mRefreshReceiver:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateDrawerLastSyncTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->slidingUpAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Landroid/view/GestureDetector;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->initActionBar()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->fadeInAnimation(Landroid/view/View;)V

    return-void
.end method

.method private checkSystem()V
    .locals 7

    .line 629
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getErrorSystemStatus()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 631
    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 632
    aget v5, v0, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 633
    new-instance v6, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    invoke-direct {v6, v3, v4}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 634
    invoke-virtual {v6, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 635
    invoke-virtual {v6, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setAutoDismiss(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 636
    invoke-virtual {v6, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 637
    invoke-virtual {v6, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 638
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 639
    aget v1, v0, v2

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;[I)V

    invoke-virtual {v6, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 647
    sget-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$9;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v6, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    const-string v1, "POPUP_SCREEN_LOCK"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorMainActivity"

    .line 652
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private fadeInAnimation(Landroid/view/View;)V
    .locals 3

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$anim;->shealth_monitor_fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 457
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$6;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initActionBar()V
    .locals 6

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 260
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$layout;->home_action_bar_image_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 268
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mOpenDrawer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$3;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 8

    .line 210
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mTopCardContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    .line 211
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->shealth_monitor_two_card_container:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->setViewChangeListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setBloodPressureContents()V

    .line 222
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->main_container:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 223
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    .line 224
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$2;

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    sget v5, Lcom/samsung/android/shealthmonitor/home/R$string;->navigation_drawer_open:I

    sget v6, Lcom/samsung/android/shealthmonitor/home/R$string;->navigation_drawer_close:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;IILandroid/widget/LinearLayout;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 240
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 242
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditProfile:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mAccessoriesContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mNotificationContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mDataPermissionContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mHowToUseContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mAboutContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mContactUsContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButtonText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    .line 251
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mLastSyncTimeText:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mLastSyncTimeText:Landroid/widget/TextView;

    .line 252
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncProgress:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    .line 253
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateUserName()V

    return-void
.end method

.method private isScreenLockEnabled()V
    .locals 3

    const-string v0, "keyguard"

    .line 589
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "POPUP_SCREEN_LOCK"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .line 591
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getCheckScreenLock()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->showLockScreenDialog()V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 597
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismiss()V

    const-string p0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v0, "Dismiss the screen lock dialog"

    .line 598
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static final synthetic lambda$checkSystem$10$SHealthMonitorMainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 647
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static final synthetic lambda$showLockScreenDialog$8$SHealthMonitorMainActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 619
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static final synthetic lambda$showSyncErrorDialog$4$SHealthMonitorMainActivity(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$showSyncErrorDialog$5$SHealthMonitorMainActivity(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private loadActivityParams(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p2, "IS_SPLASH_NEEDED"

    .line 120
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "from_profile"

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    :cond_1
    return-void
.end method

.method private setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 4

    .line 413
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mAccessoriesName:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 414
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getConnectionStatus()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 415
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 416
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    const-string v1, "device_nick_name"

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/wearable/device/Node;->getInformation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButtonContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateDrawerLastSyncTime()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    .line 421
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 422
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_unable_to_sync_data_watch_disconnected:I

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string p1, ""

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButtonContainer:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTimeout()V
    .locals 4

    .line 538
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showLockScreenDialog()V
    .locals 4

    const-string v0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v1, "showLockScreenDialog() start"

    .line 604
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->home_main_activity_lock_screen_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->home_main_activity_lock_screen_popup_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    new-instance v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 608
    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 609
    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setAutoDismiss(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 610
    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 611
    invoke-virtual {v2, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v0, "#5280f2"

    .line 612
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 613
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->home_main_activity_lock_screen_popup_button:I

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$6;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 619
    sget-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$7;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 622
    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v1, "POPUP_SCREEN_LOCK"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorMainActivity"

    .line 624
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showSyncErrorDialog()V
    .locals 3

    .line 548
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_unable_to_sync_data:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 553
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_something_went_wrong_try_again:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x0

    .line 554
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    .line 555
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 556
    sget-object v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$3;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 557
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->common_cancel:I

    sget-object v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$4;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 558
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->baseui_button_retry:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$5;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 561
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v1, "#5280f2"

    .line 562
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNeutralButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 563
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    .line 565
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private slidingUpAnimation(Landroid/view/View;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mMainView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 478
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 481
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$7;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;Landroid/view/View;)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 493
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 280
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

    .line 281
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x4000000

    .line 282
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorMainActivity"

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " Exception : class not found = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startActivityforResultByClassName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 291
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

    .line 292
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x4000000

    .line 293
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - SHealthMonitorMainActivity"

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startSyncData()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    sget v2, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_syncing_dot:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setTimeout()V

    .line 502
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;)V

    :cond_0
    return-void
.end method

.method private subscribeNodeMonitor()V
    .locals 2

    .line 407
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->nodeObservable()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    .line 408
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    .line 409
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateDrawerLastSyncTime()V
    .locals 5

    .line 522
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mNode:Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WearableUtil;->getLastWearableDataInsertTime(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 527
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 528
    new-instance v3, Ljava/sql/Time;

    invoke-direct {v3, v0, v1}, Ljava/sql/Time;-><init>(J)V

    .line 529
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->home_accessories_last_synced_on_s:I

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mLastSyncTimeText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 533
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mLastSyncTimeText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUserName()V
    .locals 7

    .line 579
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;

    move-result-object v0

    .line 580
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mUserFullName:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v1, "KR"

    .line 581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "%s %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 584
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v5, "%s %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$checkSystem$9$SHealthMonitorMainActivity([ILandroid/view/View;)V
    .locals 1

    .line 641
    sget p2, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_system_alert_battery_go_to:I

    const/4 v0, 0x2

    aget p1, p1, v0

    if-eq p2, p1, :cond_1

    const-string p1, "com.samsung.android.lool"

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.samsung.android.lool"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 642
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method final synthetic lambda$null$2$SHealthMonitorMainActivity()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_sync_data_now:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateDrawerLastSyncTime()V

    return-void
.end method

.method final synthetic lambda$setTimeout$3$SHealthMonitorMainActivity()V
    .locals 1

    .line 538
    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$10;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic lambda$showLockScreenDialog$7$SHealthMonitorMainActivity(Landroid/view/View;)V
    .locals 1

    const-string p1, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v0, "showLockScreenDialog onClick() OnPositiveButtonClickListener"

    .line 615
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic lambda$showSyncErrorDialog$6$SHealthMonitorMainActivity(Landroid/view/View;)V
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startSyncData()V

    return-void
.end method

.method final synthetic lambda$startSyncData$1$SHealthMonitorMainActivity(I)V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 505
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_sync_data_now:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 507
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateDrawerLastSyncTime()V

    return-void

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButtonText:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$string;->shealth_monitor_sync_data_now:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSyncButton:Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setEnabled(Z)V

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->showSyncErrorDialog()V

    :cond_1
    return-void
.end method

.method final synthetic lambda$subscribeNodeMonitor$0$SHealthMonitorMainActivity(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setConnectedDevice(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 572
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4d2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateUserName()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    .line 340
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mEditProfile:I

    if-ne v0, v1, :cond_0

    const-string p1, "home"

    const-string v0, "SHealthMonitorProfileEditActivity"

    const/16 v1, 0x4d2

    .line 385
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityforResultByClassName(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 387
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mAccessoriesContainer:I

    if-ne v0, v1, :cond_1

    const-string p1, "home"

    const-string v0, "SHealthMonitorAccessoriesActivity"

    .line 388
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mNotificationContainer:I

    if-ne v0, v1, :cond_2

    const-string p1, "home"

    const-string v0, "SHealthMonitorNotificationActivity"

    .line 390
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mDataPermissionContainer:I

    if-ne v0, v1, :cond_3

    const-string p1, "home"

    const-string v0, "SHealthMonitorDataPermissionActivity"

    .line 393
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mHowToUseContainer:I

    if-ne v0, v1, :cond_4

    const-string p1, "bp"

    const-string v0, "SHealthMonitorBpHowToUseActivity"

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mAboutContainer:I

    if-ne v0, v1, :cond_5

    const-string p1, "home"

    const-string v0, "SHealthMonitorAboutActivity"

    .line 397
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->mContactUsContainer:I

    if-ne v0, v1, :cond_6

    .line 399
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants;->URL_CONTACT_US:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 401
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSyncButton:I

    if-ne p1, v0, :cond_7

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startSyncData()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 99
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$style;->ProMainAppCompat:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setTheme(I)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setSetDefaultMenuColor(Z)V

    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v2, "onCreate() - Start"

    .line 102
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_main_drawer_activity:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->loadActivityParams(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->initView()V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->initActionBar()V

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->subscribeNodeMonitor()V

    .line 109
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->overridePendingTransition(II)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->createNotiChannel(Landroid/content/Context;)V

    .line 113
    new-instance p1, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mRefreshReceiver:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    const-string p0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string p1, "onCreate() - End"

    .line 115
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method protected onDestroy()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mRefreshReceiver:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mRefreshReceiver:Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/receiver/SHealthMonitorRefreshReceiver;->unRegister()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->removeAllViews()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->removeAllViews()V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 377
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->clearAllView(Landroid/content/Context;)V

    .line 378
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->finish()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->shealth_monitor_menu_manual:I

    if-ne v0, v1, :cond_1

    const-string v0, "home"

    const-string v1, "SHealthMonitorManualActivity"

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->startActivityByClassName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->shealth_monitor_menu_reset:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 171
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setAppInit(Z)V

    const-string v0, "activity"

    .line 172
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 173
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->finish()V

    .line 178
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->error_case:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 179
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 181
    invoke-interface {v0, v2}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->setErrorDemo(Z)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->show_toast:I

    if-ne v0, v1, :cond_4

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 185
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setShowToastState(Z)V

    .line 186
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 187
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->check_country:I

    if-ne v0, v1, :cond_5

    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 189
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setCheckingCountry(Z)V

    .line 190
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 191
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->screen_lock:I

    if-ne v0, v1, :cond_6

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 193
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setCheckScreenLock(Z)V

    .line 194
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 195
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->enable_update_cache:I

    if-ne v0, v1, :cond_7

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 197
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setUpdateCache(Z)V

    .line 198
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 199
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->show_update_popup:I

    if-ne v0, v1, :cond_8

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 201
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setUpdatePupupStatus(Z)V

    .line 202
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 206
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 354
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onPause()V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->onPause()V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    const-string v0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v1, "onResume() - Start"

    .line 346
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->onResume()V

    .line 348
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mCardContainerLayout:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->onResume()V

    const-string p0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v0, "onResume() - End"

    .line 349
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "IS_SPLASH_NEEDED"

    .line 361
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->isScreenLockEnabled()V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->checkSystem()V

    .line 131
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->getInstance()Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->checkMobileUpdate()V

    .line 132
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->updateController()V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->updateDrawerLastSyncTime()V

    return-void
.end method

.method setBloodPressureContents()V
    .locals 4

    .line 301
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mainView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mMainView:Landroid/widget/ScrollView;

    .line 302
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIsSplashNeeded:Z

    if-eqz v0, :cond_0

    .line 303
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->introView:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/home/R$layout;->proposition_layout:I

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 305
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->swipe_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSwipingLayout:Landroid/widget/LinearLayout;

    .line 306
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$GestureListener;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 307
    sget v1, Lcom/samsung/android/shealthmonitor/home/R$id;->swipe_up_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 308
    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$4;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mSwipingLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$5;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mIntroView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mMainView:Landroid/widget/ScrollView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void

    .line 325
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->initActionBar()V

    const-string v0, "S HealthMonitor - SHealthMonitorMainActivity"

    const-string v1, " [setBloodPressureContents] !"

    .line 327
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->mTopContainer:Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/TopCardContainerLayout;->addChangeListener()V

    :cond_1
    return-void
.end method
