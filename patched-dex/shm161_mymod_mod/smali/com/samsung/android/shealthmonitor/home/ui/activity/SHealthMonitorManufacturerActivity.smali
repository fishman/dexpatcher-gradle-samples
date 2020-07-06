.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorManufacturerActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorManufacturerActivity"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->Companion:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private final initActionBar()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

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
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->updateView()V

    return-void
.end method

.method private final startActivityByClassName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.samsung.android.shealthmonitor."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ui.activity."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 43
    new-instance p2, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 47
    sget-object p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " Exception : class not found = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget-object p1, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() - Start"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget p1, Lcom/samsung/android/shealthmonitor/home/R$layout;->shealth_monitor_manufacturer_activity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->setContentView(I)V

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->initView()V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->initActionBar()V

    .line 20
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->TAG:Ljava/lang/String;

    const-string p1, "onCreate() - End"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->finish()V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected final onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 62
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - Start"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorManufacturerActivity;->TAG:Ljava/lang/String;

    const-string v0, "onResume() - End"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
