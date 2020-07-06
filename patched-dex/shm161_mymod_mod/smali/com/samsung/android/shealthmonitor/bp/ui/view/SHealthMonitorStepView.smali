.class public abstract Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.super Landroid/widget/RelativeLayout;
.source "SHealthMonitorStepView.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "S HealthMonitor - SHealthMonitorStepView"

    .line 20
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cancelCalibration(Ljava/lang/String;)V
    .locals 2

    const-string v0, "nextAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;)V

    check-cast v1, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->cancelCalibration(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Connected watch was not found!"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public abstract getBackgroundDrawableId()I
.end method

.method public getInTransition()Landroid/transition/Transition;
    .locals 1

    .line 41
    new-instance p0, Landroid/transition/Slide;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/transition/Slide;-><init>(I)V

    check-cast p0, Landroid/transition/Transition;

    return-object p0
.end method

.method public getOutTransition()Landroid/transition/Transition;
    .locals 1

    .line 45
    new-instance p0, Landroid/transition/Fade;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/transition/Fade;-><init>(I)V

    check-cast p0, Landroid/transition/Transition;

    return-object p0
.end method

.method public getVideoURI()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onBack()V
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public abstract setAbNextListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setAbPrevListener(Landroid/view/View$OnClickListener;)V
.end method
