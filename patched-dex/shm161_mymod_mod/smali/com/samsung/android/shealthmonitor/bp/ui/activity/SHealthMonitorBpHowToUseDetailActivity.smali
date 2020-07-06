.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;
.super Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;
.source "SHealthMonitorBpHowToUseDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;

.field private static final HOW_TO_USE_TYPE:Ljava/lang/String; = "HOW_TO_USE_TYPE"

.field private static final HOW_TO_USE_TYPE_BP_RESULTS:I = 0x3

.field private static final HOW_TO_USE_TYPE_MEASURING_BP:I = 0x2

.field private static final HOW_TO_USE_TYPE_ONBOARDING:I = 0x1

.field private static final HOW_TO_USE_TYPE_PROFILE_SETUP:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorBpHowToUseDetailActivity"

    .line 20
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getHOW_TO_USE_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHOW_TO_USE_TYPE_BP_RESULTS$cp()I
    .locals 1

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_BP_RESULTS:I

    return v0
.end method

.method public static final synthetic access$getHOW_TO_USE_TYPE_MEASURING_BP$cp()I
    .locals 1

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_MEASURING_BP:I

    return v0
.end method

.method public static final synthetic access$getHOW_TO_USE_TYPE_ONBOARDING$cp()I
    .locals 1

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_ONBOARDING:I

    return v0
.end method

.method public static final synthetic access$getHOW_TO_USE_TYPE_PROFILE_SETUP$cp()I
    .locals 1

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_PROFILE_SETUP:I

    return v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 36
    :cond_0
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_profile_setup_activity:I

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 39
    sget-object v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    sget v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_PROFILE_SETUP:I

    if-ne v1, v2, :cond_1

    .line 43
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_profile_setup_activity:I

    .line 44
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_setting_up_bp_app:I

    invoke-super {p0, v2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(I)V

    goto :goto_0

    .line 46
    :cond_1
    sget v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_ONBOARDING:I

    if-ne v1, v2, :cond_2

    .line 47
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_calibrating_activity:I

    .line 48
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_calibrating_your_galaxy_watch:I

    invoke-super {p0, v2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(I)V

    goto :goto_0

    .line 50
    :cond_2
    sget v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_MEASURING_BP:I

    if-ne v1, v2, :cond_3

    .line 51
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_measuring_bp_activity:I

    .line 52
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_measuring_bp:I

    invoke-super {p0, v2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(I)V

    goto :goto_0

    .line 54
    :cond_3
    sget v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_BP_RESULTS:I

    if-ne v1, v2, :cond_4

    .line 55
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_how_to_use_bp_results_activity:I

    .line 57
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_blood_pressure_results:I

    invoke-super {p0, v2}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->setTitle(I)V

    .line 61
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->setContentView(I)V

    .line 64
    sget p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_PROFILE_SETUP:I

    if-ne v1, p1, :cond_5

    .line 65
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->step_1_1_link_layout:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity$onCreate$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 70
    :cond_5
    sget p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_ONBOARDING:I

    if-ne v1, p1, :cond_6

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_onboarding_note:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_history_recalibrate_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->note_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "note_text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/support/v4/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 74
    :cond_6
    sget p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_BP_RESULTS:I

    if-ne v1, p1, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_bp_result_note:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->bp_result_note_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "bp_result_note_text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/support/v4/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 78
    :cond_7
    sget p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->HOW_TO_USE_TYPE_MEASURING_BP:I

    if-ne v1, p1, :cond_8

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->how_to_use_measuring_bp_3_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 80
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->how_to_use_measuring_bp_3_1:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v0, "how_to_use_measuring_bp_3_1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Landroid/support/v4/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    .line 85
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->setContentView(I)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpHowToUseDetailActivity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/ui/activity/BaseAppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
