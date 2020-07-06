.class public final Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;
.super Ljava/lang/Object;
.source "HealthConnectionErrorResult.java"


# static fields
.field public static final CONNECTION_FAILURE:I = 0x1

.field public static final OLD_VERSION_PLATFORM:I = 0x4

.field public static final OLD_VERSION_SDK:I = 0x3

.field public static final PLATFORM_DISABLED:I = 0x6

.field public static final PLATFORM_INITIALIZING:I = -0x2

.field public static final PLATFORM_NOT_INSTALLED:I = 0x2

.field public static final PLATFORM_SIGNATURE_FAILURE:I = 0x8

.field private static final STORE_NAME_GALAXY_APPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final STORE_URL:Ljava/lang/String; = "market://details?id=com.sec.android.app.shealth"

.field private static final STORE_URL_GALAXY_APPS:Ljava/lang/String; = "samsungapps://ProductDetail/com.sec.android.app.shealth"

.field public static final SUCCESS:I = -0x1

.field public static final TIMEOUT:I = 0x5

.field public static final UNKNOWN:I = 0x0

.field public static final USER_AGREEMENT_NEEDED:I = 0x9

.field public static final USER_PASSWORD_NEEDED:I = 0x7

.field public static final USER_PASSWORD_POPUP:I = -0x3


# instance fields
.field private final mErrorCode:I

.field private final mIsSupportedDevice:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    .line 296
    iput-boolean p2, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mIsSupportedDevice:Z

    return-void
.end method

.method private isGalaxyAppsAvailable()Z
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 434
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 435
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v1
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 0

    .line 308
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    return p0
.end method

.method public final hasResolution()Z
    .locals 4

    .line 338
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 341
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->isGalaxyAppsAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mIsSupportedDevice:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method public final resolve(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    .line 391
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input activity is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mErrorCode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 p0, 0x6

    if-eq v0, p0, :cond_3

    const/16 p0, 0x9

    if-eq v0, p0, :cond_2

    goto :goto_1

    .line 413
    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getPlatformPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 415
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 408
    :cond_3
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getPlatformPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 402
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->isGalaxyAppsAvailable()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "samsungapps://ProductDetail/com.sec.android.app.shealth"

    goto :goto_0

    :cond_5
    const-string p0, "market://details?id=com.sec.android.app.shealth"

    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public final setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
