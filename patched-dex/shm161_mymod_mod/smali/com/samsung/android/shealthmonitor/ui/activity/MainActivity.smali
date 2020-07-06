.class public Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsDeepLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->mIsDeepLink:Z

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity"

    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->startActivityByClassName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorSetupActivity"

    .line 71
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->startActivityByClassName(Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->finish()V

    return-void
.end method

.method private parseDeepLinkUrl(Ljava/lang/String;)Z
    .locals 3

    .line 98
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "type"

    .line 99
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BP"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorDeeplinkActivity"

    .line 105
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "parameter"

    .line 107
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Exception : class not found = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->finish()V

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startActivityByClassName(Ljava/lang/String;)V
    .locals 2

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->mIsDeepLink:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/high16 p1, 0x4000000

    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 87
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

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


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "[PERF] onCreate - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->isSamsungDevice()Z

    move-result p1

    if-nez p1, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->finish()V

    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 48
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [onCreate] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->mIsDeepLink:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->parseDeepLinkUrl(Ljava/lang/String;)Z

    move-result v0

    .line 55
    :cond_2
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->getRef()I

    move-result p1

    if-lez p1, :cond_3

    .line 56
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->delayDecreasingRefOnce()V

    :cond_3
    if-eqz v0, :cond_4

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->initialize()V

    .line 62
    :cond_4
    sget-object p1, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "[PERF] onCreate - end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/NotificationHelper;->removeNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 93
    sget-object v0, Lcom/samsung/android/shealthmonitor/ui/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method
