.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;
.source "SHealthMonitorBpPropositionActivity.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorBpPropositionActivity"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final initView()V
    .locals 2

    .line 22
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowToUseButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_proposition_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->initView()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpPropositionActivity;->finish()V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
