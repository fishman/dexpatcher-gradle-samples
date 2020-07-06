.class public final Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;
.super Landroid/widget/RelativeLayout;
.source "SHealthMonitorBpIntroTopCard.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "S HealthMonitor - SHealthMonitorBpIntroTopCard"

    .line 15
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->TAG:Ljava/lang/String;

    .line 18
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_intro_top_card_layout:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setContent()V

    .line 20
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->checkCancelButton(Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final checkCancelButton(Z)V
    .locals 1

    .line 50
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->getBpMeasuredDataExist()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 51
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mCancelButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "mCancelButton"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 53
    :cond_0
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mCancelButton:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string p1, "mCancelButton"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final getCancelButton()Landroid/widget/LinearLayout;
    .locals 1

    .line 46
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mCancelButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const-string v0, "mCancelButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setBackground(I)V
    .locals 2

    .line 30
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mCardLayout:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mViewMoreButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setButtonText(I)V
    .locals 1

    .line 38
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mViewMoreButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HTextButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/widget/HTextButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setContent()V
    .locals 1

    .line 24
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->value_proposition:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setBackground(I)V

    .line 25
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_intro_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setTitle(I)V

    .line 26
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_view_more:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->setButtonText(I)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 34
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTitle:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpIntroTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    return-void
.end method
