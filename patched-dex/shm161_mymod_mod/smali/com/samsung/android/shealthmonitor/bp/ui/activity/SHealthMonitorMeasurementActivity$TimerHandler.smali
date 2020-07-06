.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;
.super Landroid/os/Handler;
.source "SHealthMonitorMeasurementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerHandler"
.end annotation


# instance fields
.field private final LIMIT_SECS_FOR_ONE_SESSION:I

.field private final MESSAGE_TIMER_END:I

.field private final MESSAGE_TIMER_RESET:I

.field private final MESSAGE_TIMER_START:I

.field private final MESSAGE_TIMER_STOP:I

.field private final TAG:Ljava/lang/String;

.field private final TIME_OUT_POPUP_TAG:Ljava/lang/String;

.field private count:I

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;",
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
            "Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mOuter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    const-string p1, "S HealthMonitor - TimerHandler"

    .line 618
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TAG:Ljava/lang/String;

    const-string p1, "TIME_OUT_POPUP_TAG"

    .line 619
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TIME_OUT_POPUP_TAG:Ljava/lang/String;

    const/16 p1, 0x78

    .line 621
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->LIMIT_SECS_FOR_ONE_SESSION:I

    const/16 p1, 0x3e9

    .line 623
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    const/16 p1, 0x3ea

    .line 624
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_STOP:I

    const/16 p1, 0x3eb

    .line 625
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_END:I

    const/16 p1, 0x3ec

    .line 626
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_RESET:I

    .line 628
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->LIMIT_SECS_FOR_ONE_SESSION:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->count:I

    return-void
.end method


# virtual methods
.method public final getMESSAGE_TIMER_RESET()I
    .locals 0

    .line 626
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_RESET:I

    return p0
.end method

.method public final getMESSAGE_TIMER_START()I
    .locals 0

    .line 623
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    return p0
.end method

.method public final getMESSAGE_TIMER_STOP()I
    .locals 0

    .line 624
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_STOP:I

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 640
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 641
    :goto_0
    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_RESET:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 642
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called MESSAGE_TIMER_RESET "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->LIMIT_SECS_FOR_ONE_SESSION:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->count:I

    .line 644
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessage(I)Z

    return-void

    .line 646
    :cond_3
    :goto_1
    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 647
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->count:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->count:I

    if-nez p1, :cond_5

    .line 648
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_END:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessage(I)Z

    return-void

    .line 650
    :cond_5
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 653
    :cond_6
    :goto_2
    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_END:I

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 654
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called MESSAGE_TIMER_END "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TIME_OUT_POPUP_TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$showDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V

    .line 656
    :cond_9
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_STOP:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessage(I)Z

    return-void

    .line 658
    :cond_a
    :goto_3
    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_STOP:I

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 659
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called MESSAGE_TIMER_STOP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_START:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method public final startTimer()V
    .locals 1

    .line 631
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_RESET:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stopTimer()V
    .locals 1

    .line 635
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->MESSAGE_TIMER_STOP:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$TimerHandler;->sendEmptyMessage(I)Z

    return-void
.end method
