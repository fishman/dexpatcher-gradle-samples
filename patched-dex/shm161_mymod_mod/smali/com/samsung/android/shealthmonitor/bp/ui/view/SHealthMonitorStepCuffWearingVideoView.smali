.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;
.super Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;
.source "SHealthMonitorStepCuffWearingVideoView.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingView;-><init>(Landroid/content/Context;I)V

    const-string p1, "S HealthMonitor - SHealthMonitorStepOneCuffWearingView"

    .line 13
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->TAG:Ljava/lang/String;

    .line 16
    sget p1, Lcom/samsung/android/shealthmonitor/bp/R$drawable;->how_to_wear_bpc:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->setMBackground(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBackgroundDrawableId()I
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->getMBackground()I

    move-result p0

    return p0
.end method

.method public final getVideoURI()Landroid/net/Uri;
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    check-cast p0, Landroid/app/Activity;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/samsung/android/shealthmonitor/bp/R$raw;->how_to_wear_bpc_video_720:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
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
    .locals 0

    return-void
.end method

.method public final setAbNextListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepCuffWearingVideoView;->setMMainNextClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAbPrevListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
