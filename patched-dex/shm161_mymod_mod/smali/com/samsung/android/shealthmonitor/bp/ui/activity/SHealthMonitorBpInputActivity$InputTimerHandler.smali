.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;
.super Landroid/os/Handler;
.source "SHealthMonitorBpInputActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputTimerHandler"
.end annotation


# instance fields
.field private final MESSAGE_TIMER_END:I

.field private final MESSAGE_TIMER_START:I

.field private final MESSAGE_TIMER_STOP:I

.field private final TAG:Ljava/lang/String;

.field private final TIME_OUT_POPUP_TAG:Ljava/lang/String;

.field private count:I

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mOuter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    const-string p1, "S HealthMonitor - InputTimerHandler"

    .line 603
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->TAG:Ljava/lang/String;

    const-string p1, "TIME_OUT_POPUP_TAG"

    .line 604
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->TIME_OUT_POPUP_TAG:Ljava/lang/String;

    const/16 p1, 0x3e9

    .line 606
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_START:I

    const/16 p1, 0x3ea

    .line 607
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_STOP:I

    const/16 p1, 0x3eb

    .line 608
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_END:I

    const/16 p1, 0x3c

    .line 610
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->count:I

    return-void
.end method


# virtual methods
.method public final getMESSAGE_TIMER_START()I
    .locals 0

    .line 606
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_START:I

    return p0
.end method

.method public final getMESSAGE_TIMER_STOP()I
    .locals 0

    .line 607
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_STOP:I

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 618
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 619
    :cond_1
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_START:I

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 620
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->count:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->count:I

    if-nez p1, :cond_3

    .line 621
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_END:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->sendEmptyMessage(I)Z

    return-void

    .line 623
    :cond_3
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_START:I

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 626
    :cond_4
    :goto_1
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_END:I

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_7

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;->access$showTimeOutDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity;)V

    goto :goto_3

    :cond_6
    return-void

    .line 627
    :cond_7
    :goto_2
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_STOP:I

    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_9

    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->MESSAGE_TIMER_START:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->removeMessages(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final resetCount()V
    .locals 1

    const/16 v0, 0x3c

    .line 613
    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorBpInputActivity$InputTimerHandler;->count:I

    return-void
.end method
