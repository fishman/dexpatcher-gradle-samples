.class public Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;
.super Ljava/lang/Object;
.source "SHealthMonitorProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorProgressDialog"

.field private static mContextName:Ljava/lang/String; = null

.field private static mLastMessage:Ljava/lang/String; = ""

.field private static mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dismissProgressbar()V
    .locals 5

    const-class v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 103
    :try_start_1
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "S HealthMonitor - SHealthMonitorProgressDialog"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occurs : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 109
    sput-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isShowing()Z
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 50
    monitor-exit v0

    return v1

    .line 53
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized show(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 5

    const-class v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;

    monitor-enter v0

    const/4 v1, 0x0

    .line 77
    :try_start_0
    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 82
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mLastMessage:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 83
    monitor-exit v0

    return v3

    .line 85
    :cond_1
    :try_start_1
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mContextName:Ljava/lang/String;

    .line 79
    new-instance v2, Landroid/app/ProgressDialog;

    sget v4, Lcom/samsung/android/shealthmonitor/base/R$style;->ProgressDialogLightTheme:I

    invoke-direct {v2, p0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 87
    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mLastMessage:Ljava/lang/String;

    .line 89
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 92
    sget-object p0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "S HealthMonitor - SHealthMonitorProgressDialog"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occurs : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    monitor-exit v0

    return v1

    .line 76
    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showProgressbar(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    const-class v0, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 58
    monitor-exit v0

    return-void

    .line 60
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 61
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string p0, "S HealthMonitor - SHealthMonitorProgressDialog"

    const-string p1, "Activity is getting finished soon, so skip this progress"

    .line 62
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    .line 69
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 70
    sput-object v1, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 71
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SHealthMonitorProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    throw p0
.end method
