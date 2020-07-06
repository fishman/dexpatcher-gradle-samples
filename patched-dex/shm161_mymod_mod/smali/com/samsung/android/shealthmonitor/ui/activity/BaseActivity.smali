.class public Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# static fields
.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "S HEALTH - BaseActivity"

.field private static final sLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final sReadLock:Ljava/util/concurrent/locks/Lock;

.field private static sRef:I

.field private static sShouldDelayDegreasingRef:Z

.field private static final sWriteLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mColorPrimaryDark:I

.field private mIsFinishAll:Z

.field private mIsForeground:Z

.field private mIsFromBackground:Z

.field private mIsFromDeepLink:Z

.field private mIsFromOutside:Z

.field private mIsFromWidget:Z

.field private mParentIntent:Landroid/content/Intent;

.field private mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

.field private mSetDefaultMenuColor:Z

.field private mShouldStop:Z

.field private mUpIntent:Landroid/content/Intent;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 81
    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sReadLock:Ljava/util/concurrent/locks/Lock;

    .line 82
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mShouldStop:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsForeground:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFinishAll:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mParentIntent:Landroid/content/Intent;

    .line 75
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromWidget:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromBackground:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromDeepLink:Z

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mSetDefaultMenuColor:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mColorPrimaryDark:I

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 61
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sShouldDelayDegreasingRef:Z

    return p0
.end method

.method private addLinkInformation(Landroid/content/Intent;)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deeplink_permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "deeplink_permission"

    .line 490
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "from_outside"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "from_outside"

    const/4 v0, 0x1

    .line 495
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private createViewTreeObserver()V
    .locals 1

    .line 171
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static decreaseRef()V
    .locals 2

    .line 439
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 441
    :try_start_0
    sget v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I

    if-lez v0, :cond_0

    .line 442
    sget v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 447
    throw v0
.end method

.method public static delayDecreasingRefOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 356
    sput-boolean v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sShouldDelayDegreasingRef:Z

    return-void
.end method

.method public static getRef()I
    .locals 2

    .line 455
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 457
    :try_start_0
    sget v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 460
    throw v0
.end method

.method public static increaseRef()I
    .locals 2

    .line 421
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 423
    :try_start_0
    sget v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 424
    sput v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I

    if-gtz v0, :cond_0

    .line 425
    sput v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I

    .line 428
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sRef:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFinishAll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromDeepLink:Z

    if-eqz v0, :cond_0

    const-string v0, "S HEALTH - BaseActivity"

    const-string v1, "back button click (finish app) because the activity is starting from background"

    .line 479
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->setResult(I)V

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->finishAffinity()V

    return-void

    .line 484
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public isForeground()Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsForeground:Z

    return p0
.end method

.method public isFromDeepLink()Z
    .locals 0

    .line 512
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromDeepLink:Z

    return p0
.end method

.method public onBackPressed()V
    .locals 2

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromWidget:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromDeepLink:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromBackground:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "S HEALTH - BaseActivity"

    const-string v1, " [onBackPressed] !! is need?"

    .line 329
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    .line 106
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_outside"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_widget"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromWidget:Z

    .line 119
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 120
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "activity_title"

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "S HEALTH - BaseActivity"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activityTitle : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "S HEALTH - BaseActivity"

    const-string v0, "onCreate(), NameNotFoundException occurred."

    .line 129
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mSetDefaultMenuColor:Z

    if-eqz p1, :cond_3

    .line 133
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 135
    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mColorPrimaryDark:I

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->createViewTreeObserver()V

    .line 139
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 381
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->removeCurrentActivity(Landroid/app/Activity;)V

    .line 382
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "S HEALTH - BaseActivity"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "from_outside"

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    const-string v0, "from_widget"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromWidget:Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFinishAll:Z

    const-string v0, "S HEALTH - BaseActivity"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOptionsItemSelected, up key, mUpIntent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mParentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mParentIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    .line 294
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 295
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    const-string v0, "from_outside"

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    const-string v0, "from_widget"

    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromWidget:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "S HEALTH - BaseActivity"

    const-string v0, "shouldUpRecreateTask"

    .line 298
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    .line 303
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->startActivities()V

    goto :goto_2

    :cond_2
    const-string p1, "S HEALTH - BaseActivity"

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using current task. upIntent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->finish()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "S HEALTH - BaseActivity"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error occurred to start up intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const/4 p0, 0x1

    return p0

    .line 317
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->finish()V

    .line 318
    throw p1

    .line 323
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsForeground:Z

    .line 346
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 217
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mSetDefaultMenuColor:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsForeground:Z

    .line 224
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mShouldStop:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 160
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->increaseRef()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    iput-boolean v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromBackground:Z

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromOutside:Z

    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFinishAll:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mIsFromBackground:Z

    .line 167
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->checkWearableSetup()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 362
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 364
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->sShouldDelayDegreasingRef:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity$2;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->decreaseRef()V

    return-void
.end method

.method protected setParentIntent(Landroid/content/Intent;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mParentIntent:Landroid/content/Intent;

    return-void
.end method

.method public setSetDefaultMenuColor(Z)V
    .locals 0

    .line 516
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mSetDefaultMenuColor:Z

    return-void
.end method

.method protected setUpIntent(Landroid/content/Intent;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mUpIntent:Landroid/content/Intent;

    return-void
.end method

.method protected shouldStop()Z
    .locals 0

    .line 392
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mShouldStop:Z

    return p0
.end method

.method protected shouldStop(I)Z
    .locals 0

    .line 403
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mShouldStop:Z

    return p0
.end method

.method public showProgressBar(Z)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    :cond_0
    if-eqz p1, :cond_1

    .line 505
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->showProgressBar(Landroid/content/Context;)V

    return-void

    .line 507
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->hideProgressBar()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->addLinkInformation(Landroid/content/Intent;)V

    .line 473
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->addLinkInformation(Landroid/content/Intent;)V

    .line 467
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
