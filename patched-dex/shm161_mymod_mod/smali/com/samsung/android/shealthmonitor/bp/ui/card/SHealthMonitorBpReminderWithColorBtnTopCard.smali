.class public final Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;
.super Landroid/widget/LinearLayout;
.source "SHealthMonitorBpReminderWithColorBtnTopCard.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "S HealthMonitor - SHealthMonitorBpReminderWithColorBtnTopCard"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->TAG:Ljava/lang/String;

    .line 16
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_bp_calibration_expired_top_card_layout:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setContent()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final setButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mColorButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setButtonText(I)V
    .locals 1

    .line 54
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mColorButton:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setContent()V
    .locals 2

    .line 21
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->calibration_reminder_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setIcon(I)V

    .line 22
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_calibration_reminder:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setTitle(I)V

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_expired_calibration_desc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026expired_calibration_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setDescription(Ljava/lang/String;)V

    .line 24
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_card_calibrate_watch:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setButtonText(I)V

    return-void
.end method

.method public final setContent(II)V
    .locals 1

    .line 28
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->calibration_reminder_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setIcon(I)V

    .line 29
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_card_calibrate_continue:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setTitle(I)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setRemainDays(II)V

    .line 31
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_card_calibrate_continue:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setButtonText(I)V

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDescription:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    return-void
.end method

.method public final setIcon(I)V
    .locals 1

    .line 42
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mIcon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    return-void
.end method

.method public final setRemainDays(II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_expired_continue_calibration_desc_n_days:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.st\u2026on_desc_n_days, cal, day)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setDescription(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_expired_continue_calibration_desc_1_day:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.st\u2026ibration_desc_1_day, cal)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 46
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$id;->mTitle:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpReminderWithColorBtnTopCard;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    return-void
.end method
