.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorDataPermissionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorDataPermissionActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$launchPermissionScreen(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->launchPermissionScreen()V

    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v0, "supportActionBar!!"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private final initView()V
    .locals 2

    .line 26
    sget v0, Lcom/samsung/android/shealthmonitor/home/R$id;->mPermissionContainer:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$initView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->updateView()V

    return-void
.end method

.method private final launchPermissionScreen()V
    .locals 2

    .line 63
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 64
    new-instance v1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$launchPermissionScreen$1;

    invoke-direct {v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$launchPermissionScreen$1;-><init>()V

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;

    .line 63
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->showPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V

    return-void
.end method

.method private final updateView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget-object p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() - Start"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_data_permission_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->setContentView(I)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->initView()V

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->initActionBar()V

    .line 21
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->TAG:Ljava/lang/String;

    const-string p1, "onCreate() - End"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->finish()V

    .line 49
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onResume()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 54
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - Start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - End"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
