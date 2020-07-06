.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;
.super Landroid/widget/LinearLayout;
.source "PrerequisiteStep1.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$Companion;

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - PrerequisiteStep1"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->Companion:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->initView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V

    return-void
.end method

.method private final initView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 4

    .line 22
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    if-eqz v0, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Landroid/view/LayoutInflater;

    .line 24
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_calibrate_first_prerequisite_step1:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNavigationLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->getMLeftButton()Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setVisibility(I)V

    .line 26
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNavigationLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->getMRightButton()Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->common_tracker_next:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    .line 27
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNavigationLayout:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->getMRightButton()Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object p1

    const-string v0, "#5280f2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setTextColor(I)V

    .line 28
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mNavigationLayout:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/widget/BottomNavigationLayout;->getMRightButton()Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$initView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1$initView$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMActivity()Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    return-object p0
.end method

.method public final setMActivity(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep1;->mActivity:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpCalibrateFirstPrerequisiteActivity;

    return-void
.end method
