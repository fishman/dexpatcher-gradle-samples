.class public Lcom/samsung/android/shealthmonitor/util/ProgressUtil;
.super Ljava/lang/Object;
.source "ProgressUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isHostActivityFinishing(Landroid/content/Context;)Z
    .locals 1

    .line 68
    instance-of p0, p1, Landroid/app/Activity;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 69
    check-cast p1, Landroid/app/Activity;

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public hideProgressBar()V
    .locals 5

    const/4 v0, 0x0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    :try_start_1
    sget-object v2, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 86
    throw v1
.end method

.method public showProgressBar(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->isHostActivityFinishing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 52
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    sget v1, Lcom/samsung/android/shealthmonitor/base/R$style;->progress_theme:I

    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 61
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 62
    sget v0, Lcom/samsung/android/shealthmonitor/base/R$layout;->progress_dialog_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ProgressUtil;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
