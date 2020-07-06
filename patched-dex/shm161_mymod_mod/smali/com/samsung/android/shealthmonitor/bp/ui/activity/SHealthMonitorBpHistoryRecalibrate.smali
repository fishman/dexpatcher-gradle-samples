.class public Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.source "SHealthMonitorBpHistoryRecalibrate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 4

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 56
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->home_action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 58
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_title:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->baseui_actionbar_up_button_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_history_recalibrate_title:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_history_recalibrate_title:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 43
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_history_recalibrate_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 44
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private lauchPrerequisiteScreen()V
    .locals 3

    const-string p0, "com.samsung.android.shealthmonitor.bp.ui.activity.SHealthMonitorBpCalibrateFirstPrerequisiteActivity"

    .line 82
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x4000000

    .line 84
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "BP_CALIBRATE_FIRST_PREREQUISITE_STEP_SCENARIO"

    const/16 v1, 0xd

    .line 85
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Exception : class not found = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic lambda$initView$0$SHealthMonitorBpHistoryRecalibrate(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->lauchPrerequisiteScreen()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$style;->SHealthMonitorThemeLightNoDividerGrayUp:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->setTheme(I)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->setSetDefaultMenuColor(Z)V

    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"

    const-string v0, "onCreate() - Start"

    .line 24
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_history_recalibrate:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->initView()V

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->initActionBar()V

    const-string p0, "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"

    const-string p1, "onCreate() - End"

    .line 29
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHistoryRecalibrate;->finish()V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onResume()V

    const-string p0, "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"

    const-string v0, "onResume() - Start"

    .line 70
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "S HealthMonitor - SHealthMonitorBpHistoryRecalibrate"

    const-string v0, "onResume() - End"

    .line 71
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
