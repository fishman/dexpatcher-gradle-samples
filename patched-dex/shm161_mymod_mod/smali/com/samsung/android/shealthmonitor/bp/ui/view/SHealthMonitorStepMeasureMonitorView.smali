.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.source "SHealthMonitorStepMeasureMonitorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mBackground:I

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mOuter:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    .line 27
    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$layout;->shealth_monitor_first_step_measuring_view:I

    .line 28
    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->how_to_start_bpc:I

    iput v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mBackground:I

    .line 29
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->getMESSAGE_TIMER_START()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mBackground:I

    return p0
.end method

.method public final getVideoURI()Landroid/net/Uri;
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$raw;->how_to_start_bpc_video_720:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final hasVideo()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBack()V
    .locals 1

    const-string v0, "prepare_calibration"

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->cancelCalibration(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->mTimer:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->getMESSAGE_TIMER_STOP()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final startMeasuringActivity()V
    .locals 3

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "shealthmonitor://shealthmonitor.samsung.com/deepLink?type=bp&target=SHealthMonitorMeasurementActivity"

    .line 66
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 65
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final updateCount(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 72
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDescriptionWithCounter:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "mDescriptionWithCounter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_your_watch_will_start_measuring_automatically_in_pd_second:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_0
    sget v2, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDescriptionWithCounter:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "mDescriptionWithCounter"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_bp_your_watch_will_start_measuring_automatically_in_pd_seconds:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$id;->mDescriptionWithCounter:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string p1, "mDescriptionWithCounter"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
