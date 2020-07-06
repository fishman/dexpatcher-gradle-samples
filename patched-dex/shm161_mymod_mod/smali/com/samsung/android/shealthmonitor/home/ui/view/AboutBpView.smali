.class public Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;
.super Landroid/widget/LinearLayout;
.source "AboutBpView.java"


# static fields
.field private static FIE_NAME:Ljava/lang/String; = "Samsung_BP App IFU_1.6 (FINAL 10-29-19).pdf"


# instance fields
.field mActivity:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->initView(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;)V

    return-void
.end method

.method private initView(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;)V
    .locals 6

    .line 39
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->mActivity:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    .line 40
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->mActivity:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 41
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_about_sub_app_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$id;->mSubAppName:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mSubAppVersion:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    sget v2, Lcom/samsung/android/shealthmonitor/home/R$id;->mInstructionForUse:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    sget v3, Lcom/samsung/android/shealthmonitor/home/R$id;->mManufacturer:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/shealthmonitor/home/R$string;->home_about_sub_app_blood_pressure:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object p1

    sget-object v4, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getInformation()Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/shealthmonitor/home/R$string;->home_about_version_s:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView$$Lambda$0;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance p1, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView$$Lambda$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView$$Lambda$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readPDF()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    :try_start_0
    sget-object v2, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->FIE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 71
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->FIE_NAME:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x400

    .line 73
    :try_start_3
    new-array v1, v1, [B

    .line 75
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 83
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :catch_0
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 83
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_2
    if-eqz v1, :cond_3

    .line 90
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 95
    :catch_4
    :cond_3
    throw p0

    :catch_5
    move-object v0, v1

    move-object v2, v0

    :catch_6
    :goto_2
    if-eqz v0, :cond_4

    .line 83
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    if-eqz v1, :cond_5

    .line 90
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 96
    :catch_8
    :cond_5
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.shealthmonitor.fileprovider"

    .line 97
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x4000001

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->mActivity:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$initView$0$AboutBpView(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->readPDF()V

    return-void
.end method

.method final synthetic lambda$initView$1$AboutBpView(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/view/AboutBpView;->mActivity:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorAboutActivity;

    const-string p1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorManufacturerActivity"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
