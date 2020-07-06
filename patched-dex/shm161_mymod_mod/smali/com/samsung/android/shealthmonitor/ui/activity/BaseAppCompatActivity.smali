.class public Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"


# static fields
.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final TAG:Ljava/lang/String; = "S HEALTH - BaseActivity"

.field private static final sLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static sRef:I

.field private static sShouldDelayDegreasingRef:Z


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mColorPrimaryDark:I

.field private mIsForeground:Z

.field private mIsFromDeepLink:Z

.field private mIsFromOutside:Z

.field private mParentIntent:Landroid/content/Intent;

.field private mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

.field private mSetDefaultMenuColor:Z

.field private mShouldStop:Z

.field private mUpIntent:Landroid/content/Intent;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->sLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mShouldStop:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsForeground:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromOutside:Z

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mParentIntent:Landroid/content/Intent;

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromDeepLink:Z

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mSetDefaultMenuColor:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mColorPrimaryDark:I

    return p0
.end method

.method private addLinkInformation(Landroid/content/Intent;)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deeplink_permission"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "deeplink_permission"

    .line 389
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "from_outside"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "from_outside"

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private createViewTreeObserver()V
    .locals 1

    .line 149
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity$1;-><init>(Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static delayDecreasingRefOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 317
    sput-boolean v0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->sShouldDelayDegreasingRef:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromDeepLink:Z

    if-eqz v0, :cond_0

    const-string v0, "S HEALTH - BaseActivity"

    const-string v1, "back button click (finish app) because the activity is starting from background"

    .line 378
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->finishAffinity()V

    return-void

    .line 383
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public isForeground()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsForeground:Z

    return p0
.end method

.method public isFromDeepLink()Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromDeepLink:Z

    return p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 301
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 90
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    .line 97
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 106
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v1, "activity_title"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "S HEALTH - BaseActivity"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activityTitle : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "S HEALTH - BaseActivity"

    const-string v1, "onCreate(), NameNotFoundException occurred."

    .line 115
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_outside"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromOutside:Z

    .line 122
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mSetDefaultMenuColor:Z

    if-eqz p1, :cond_3

    .line 123
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 125
    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mColorPrimaryDark:I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->createViewTreeObserver()V

    .line 129
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 328
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->removeCurrentActivity(Landroid/app/Activity;)V

    .line 329
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "S HEALTH - BaseActivity"

    .line 330
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
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    const-string v0, "S HEALTH - BaseActivity"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOptionsItemSelected, up key, mUpIntent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mParentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mParentIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    goto :goto_0

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsFromOutside:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 270
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "S HEALTH - BaseActivity"

    const-string v0, "shouldUpRecreateTask"

    .line 271
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    .line 276
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object p0

    .line 278
    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->startActivities()V

    goto :goto_2

    :cond_2
    const-string p1, "S HEALTH - BaseActivity"

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using current task. upIntent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->finish()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "S HEALTH - BaseActivity"

    .line 288
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

    .line 290
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->finish()V

    .line 291
    throw p1

    .line 296
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsForeground:Z

    .line 307
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mSetDefaultMenuColor:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mViewTreeObserver:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mIsForeground:Z

    .line 202
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mShouldStop:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 145
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->checkWearableSetup()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 323
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setSetDefaultMenuColor(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mSetDefaultMenuColor:Z

    return-void
.end method

.method protected setUpIntent(Landroid/content/Intent;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mUpIntent:Landroid/content/Intent;

    return-void
.end method

.method protected shouldStop()Z
    .locals 0

    .line 339
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mShouldStop:Z

    return p0
.end method

.method protected shouldStop(I)Z
    .locals 0

    .line 350
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mShouldStop:Z

    return p0
.end method

.method public showProgressBar(Z)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    :cond_0
    if-eqz p1, :cond_1

    .line 404
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->showProgressBar(Landroid/content/Context;)V

    return-void

    .line 406
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->mProgressUtil:Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->hideProgressBar()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->addLinkInformation(Landroid/content/Intent;)V

    .line 372
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->addLinkInformation(Landroid/content/Intent;)V

    .line 366
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
