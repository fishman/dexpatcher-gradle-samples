.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorBpHowToUseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorHowToUseActivity"

    .line 14
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final initView()V
    .locals 2

    .line 23
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use:I

    invoke-super {p0, v0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(I)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 26
    :cond_0
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowtoUseProfile:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowtoUseOnBoarding:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowtoUseMeasuring:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$3;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mHowtoUseBpResult:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity$initView$4;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->initView()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseActivity;->finish()V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
