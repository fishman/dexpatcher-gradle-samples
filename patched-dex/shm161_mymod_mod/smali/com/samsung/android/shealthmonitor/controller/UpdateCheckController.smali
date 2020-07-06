.class public final Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;
.super Ljava/lang/Object;
.source "UpdateCheckController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;
    }
.end annotation


# static fields
.field private static final BASE_URL_MOBILE:Ljava/lang/String; = "http://apps.samsung.com/appquery/appDetail.as?appId="

.field private static final BASE_URL_WEARABLE:Ljava/lang/String; = "http://apps.samsung.com/gear/appDetail.as?appId="

.field private static final POPUP_UPDATE:Ljava/lang/String; = "POPUP_UPDATE"

.field private static final TAG:Ljava/lang/String; = "UpdateCheckController"

.field private static TEST_MODE:Z

.field private static isPopupShown:Z

.field private static volatile mInstance:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private errorProcess(Ljava/lang/Throwable;)V
    .locals 2

    .line 153
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorProcess :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLastUpdateCheckTime()V

    const-string p0, "0"

    .line 155
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    const-string p0, "0"

    .line 156
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->mInstance:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;-><init>()V

    sput-object v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->mInstance:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    .line 66
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->mInstance:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0

    throw v1
.end method

.method static final synthetic lambda$showMobileAppUpdateDialog$3$UpdateCheckController(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;Landroid/view/View;)V
    .locals 1

    .line 169
    sget-object p2, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog onClick() OnPositiveButtonClickListener"

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "http://apps.samsung.com/appquery/appDetail.as?appId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;->checkUpdate()V

    return-void
.end method

.method static final synthetic lambda$showMobileAppUpdateDialog$4$UpdateCheckController()V
    .locals 1

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method static final synthetic lambda$showMobileAppUpdateDialog$5$UpdateCheckController(Landroid/app/Activity;)V
    .locals 0

    const/4 p0, 0x0

    .line 178
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->isPopupShown:Z

    return-void
.end method

.method static final synthetic lambda$showWearableAppUpdateDialog$6$UpdateCheckController(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;Landroid/view/View;)V
    .locals 1

    .line 195
    sget-object p2, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog onClick() OnPositiveButtonClickListener"

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "http://apps.samsung.com/gear/appDetail.as?appId="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;->checkUpdate()V

    return-void
.end method

.method static final synthetic lambda$showWearableAppUpdateDialog$7$UpdateCheckController(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static final synthetic lambda$showWearableAppUpdateDialog$8$UpdateCheckController(Landroid/app/Activity;)V
    .locals 0

    const/4 p0, 0x0

    .line 203
    sput-boolean p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->isPopupShown:Z

    return-void
.end method

.method private postProcess(Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;Z)V
    .locals 3

    .line 121
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v1, "postProcess start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLastUpdateCheckTime()V

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postProcess ResultCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getResulCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getResulCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "8800"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "2000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "1002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "1000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "0"

    .line 146
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    const-string p0, "0"

    .line 147
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$3;-><init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showUpdateDialog(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    return-void

    .line 129
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersion(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;->getVersionCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->setLatestAppVersionCode(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x32 -> :sswitch_5
        0x5a4 -> :sswitch_4
        0x17005f -> :sswitch_3
        0x170061 -> :sswitch_2
        0x1774be -> :sswitch_1
        0x1a4d00 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestMobileAppUpdateInfo(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v1, "requestMobileAppUpdateInfo start"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;-><init>()V

    .line 115
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->getLatestVersionForMobile(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 116
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;Z)V

    new-instance p1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$2;-><init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;)V

    .line 117
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private showMobileAppUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    .locals 2

    .line 160
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog() start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/shealthmonitor/base/R$string;->popup_update_popup_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 163
    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 164
    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setCanceledOnTouchOutside(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 165
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string p0, "#5280f2"

    .line 166
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 167
    sget p0, Lcom/samsung/android/shealthmonitor/base/R$string;->baseui_button_ok:I

    new-instance p1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$4;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$4;-><init>(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 175
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$5;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setBackPressedListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 178
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$6;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 180
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object p1

    const-string p2, "POPUP_UPDATE"

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private showUpdateDialog(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    .locals 4

    .line 88
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 89
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/Utils;->getMobileAppVersionCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 91
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/base/R$string;->popup_update_popup_description_samsung_health_monitor:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getLatestAppVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    :cond_0
    return-void
.end method

.method private showWearableAppUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    .locals 2

    .line 187
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v0, "showUpdateDialog() start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/shealthmonitor/base/R$string;->popup_update_popup_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 190
    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 191
    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string p0, "#5280f2"

    .line 192
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 193
    sget p0, Lcom/samsung/android/shealthmonitor/base/R$string;->baseui_button_ok:I

    new-instance p1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;-><init>(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string p0, "#5280f2"

    .line 201
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 202
    sget p0, Lcom/samsung/android/shealthmonitor/base/R$string;->baseui_button_cancel:I

    sget-object p1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$8;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 203
    sget-object p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$9;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 204
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 205
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object p1

    const-string p2, "POPUP_UPDATE"

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method


# virtual methods
.method final bridge synthetic bridge$lambda$0$UpdateCheckController(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->errorProcess(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final checkMobileUpdate()V
    .locals 5

    .line 78
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->TAG:Ljava/lang/String;

    const-string v1, " [checkMobileUpdate] start !!!"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getLastUpdateCheckTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 80
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->isEnabledUpdateCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getLatestAppVersionCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showUpdateDialog(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 83
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->requestMobileAppUpdateInfo(Z)V

    return-void
.end method

.method final synthetic lambda$checkMobileUpdate$0$UpdateCheckController()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->requestMobileAppUpdateInfo(Z)V

    return-void
.end method

.method final synthetic lambda$postProcess$2$UpdateCheckController()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->requestMobileAppUpdateInfo(Z)V

    return-void
.end method

.method final synthetic lambda$requestMobileAppUpdateInfo$1$UpdateCheckController(ZLcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->postProcess(Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;Z)V

    return-void
.end method

.method public final declared-synchronized showUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->isPopupShown:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->showUpdatePopupStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 101
    sput-boolean v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->isPopupShown:Z

    if-eqz p2, :cond_0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showWearableAppUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->showMobileAppUpdateDialog(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0

    throw p1
.end method
