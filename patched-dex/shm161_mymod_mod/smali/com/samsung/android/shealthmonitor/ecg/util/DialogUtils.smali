.class public final Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;

.field private static final NO_CONNECTION_POPUP_TAG:Ljava/lang/String; = "NO_CONNECTION_POPUP_TAG"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DialogUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;->INSTANCE:Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static showNoConnectionDialog$default(Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;ILjava/lang/Object;)V
    .registers 6
    .param p0, "dialogUtils"    # Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "onPositiveButtonClickListener"    # Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;
    .param p3, "i"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_5

    .line 33
    const/4 p2, 0x0

    .line 35
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils;->showNoConnectionDialog(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getNO_CONNECTION_POPUP_TAG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const-string v0, "NO_CONNECTION_POPUP_TAG"

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    const-string v0, "S HealthMonitor - DialogUtils"

    return-object v0
.end method

.method public final launchWearableManager(Landroid/support/v4/app/FragmentActivity;)V
    .registers 8
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 62
    const-string v4, "activity"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_9
    const-string v4, "com.samsung.android.app.watchmanager"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_37

    .line 66
    const-string v4, "com.samsung.android.app.watchmanager"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "launchIntentForPackage":Landroid/content/Intent;
    if-nez v0, :cond_24

    .line 68
    const-string v4, "S HealthMonitor - DialogUtils"

    const-string v5, "launchWearableManager() : intent is null."

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :goto_23
    return-void

    .line 71
    .restart local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_24
    const v4, 0x10008000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_23

    .line 77
    .end local v0    # "launchIntentForPackage":Landroid/content/Intent;
    :catch_2e
    move-exception v3

    .line 78
    .local v3, "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "S HealthMonitor - DialogUtils"

    const-string v5, "launchWearableManager() : NameNotFoundException is occurred"

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 75
    .end local v3    # "unused":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_37
    :try_start_37
    const-string v2, "S HealthMonitor - DialogUtils"

    .line 76
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchWearableManager() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_59} :catch_2e

    goto :goto_23
.end method

.method public final varargs removeFragmentDialog(Landroid/support/v4/app/FragmentActivity;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "strArr"    # [Ljava/lang/String;

    .prologue
    .line 83
    const-string v2, "activity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const-string v2, "tags"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 86
    array-length v3, p2

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v3, :cond_2e

    aget-object v0, p2, v2

    .line 87
    .local v0, "findFragmentByTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 88
    .local v1, "findFragmentByTag2":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2b

    .line 89
    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .end local v1    # "findFragmentByTag2":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismiss()V

    .line 86
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 93
    .end local v0    # "findFragmentByTag":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method public final showNoConnectionDialog(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V
    .registers 11
    .param p1, "fragmentActivity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "onPositiveButtonClickListener"    # Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    .prologue
    .line 39
    const-string v5, "activity"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_65

    .line 41
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const v5, 0x7f110044

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(II)V

    .line 42
    .local v0, "builder":Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    const v5, 0x7f110045

    invoke-virtual {v0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 43
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const-string v6, "NO_CONNECTION_POPUP_TAG"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 44
    .local v1, "findFragmentByTag":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_31

    .line 45
    check-cast v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    .end local v1    # "findFragmentByTag":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->dismiss()V

    .line 47
    :cond_31
    const v5, 0x7f11002a

    new-instance v6, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;

    invoke-direct {v6, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/util/DialogUtils$showNoConnectionDialog$1;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)V

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 48
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060069

    const/4 v5, 0x0

    check-cast v5, Landroid/content/res/Resources$Theme;

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 49
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 51
    :try_start_51
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "NO_CONNECTION_POPUP_TAG"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 52
    const-string v2, "S HealthMonitor - DialogUtils"

    .line 53
    .local v2, "str":Ljava/lang/String;
    const-string v5, "Show NO_CONNECTION_POPUP_TAG"

    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_65} :catch_66

    .line 59
    .end local v0    # "builder":Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    .end local v2    # "str":Ljava/lang/String;
    :cond_65
    :goto_65
    return-void

    .line 54
    .restart local v0    # "builder":Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;
    :catch_66
    move-exception v4

    .line 55
    .local v4, "unused":Ljava/lang/Exception;
    const-string v3, "S HealthMonitor - DialogUtils"

    .line 56
    .local v3, "str2":Ljava/lang/String;
    const-string v5, "Error in NO_CONNECTION_POPUP_TAG"

    invoke-static {v3, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method
