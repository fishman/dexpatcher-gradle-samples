.class public final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;
.super Landroid/os/Handler;
.source "SHealthMonitorStepMeasureMonitorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerHandler"
.end annotation


# instance fields
.field private final MESSAGE_TIMER_END:I

.field private final MESSAGE_TIMER_START:I

.field private final MESSAGE_TIMER_STOP:I

.field private count:I

.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;",
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
            "Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mOuter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    const/16 p1, 0x3e9

    .line 79
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_START:I

    const/16 p1, 0x3ea

    .line 80
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_STOP:I

    const/16 p1, 0x3eb

    .line 81
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_END:I

    const/16 p1, 0xf

    .line 82
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    return p0
.end method

.method public final getMESSAGE_TIMER_START()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_START:I

    return p0
.end method

.method public final getMESSAGE_TIMER_STOP()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_STOP:I

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 85
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_START:I

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 90
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->updateCount(I)V

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    .line 92
    :cond_3
    :goto_1
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    if-eqz p1, :cond_4

    .line 94
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_START:I

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 93
    :cond_4
    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_END:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->sendEmptyMessage(I)Z

    return-void

    .line 97
    :cond_5
    :goto_2
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_END:I

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_8

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView;->startMeasuringActivity()V

    goto :goto_4

    :cond_7
    return-void

    .line 98
    :cond_8
    :goto_3
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_STOP:I

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_a

    iget p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->MESSAGE_TIMER_START:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->removeMessages(I)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final setCount(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepMeasureMonitorView$TimerHandler;->count:I

    return-void
.end method
