.class public Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.source "SHealthMonitorHistoryItemInfoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorManualActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x50506

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->home_action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 55
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_home_actionbar_title:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$color;->baseui_actionbar_up_button_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_information:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_information:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 41
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->shealth_monitor_bp_info_desc2:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 19
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$style;->SHealthMonitorThemeLightNoDividerGrayUp:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->setTheme(I)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->setSetDefaultMenuColor(Z)V

    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "S HealthMonitor - SHealthMonitorManualActivity"

    const-string v0, "onCreate() - Start"

    .line 22
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_history_item_info_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->initView()V

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->initActionBar()V

    const-string p0, "S HealthMonitor - SHealthMonitorManualActivity"

    const-string p1, "onCreate() - End"

    .line 27
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 33
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemInfoActivity;->finish()V

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onResume()V

    const-string p0, "S HealthMonitor - SHealthMonitorManualActivity"

    const-string v0, "onResume() - Start"

    .line 66
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "S HealthMonitor - SHealthMonitorManualActivity"

    const-string v0, "onResume() - End"

    .line 67
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
