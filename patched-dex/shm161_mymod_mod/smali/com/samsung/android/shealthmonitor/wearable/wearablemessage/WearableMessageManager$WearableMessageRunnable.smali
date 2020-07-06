.class Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;
.super Ljava/lang/Object;
.source "WearableMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WearableMessageRunnable"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mIsSender:Z

.field private final mMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mMessageQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 590
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 591
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    .line 594
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mIsSender:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;-><init>(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;)Landroid/os/Handler;
    .locals 0

    .line 587
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;Landroid/os/Message;)V
    .locals 0

    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    .line 626
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WearableMessageRunnable sendMessage() Handler is null. Add queue result : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WearableMessageRunnable sendMessage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "START WearableMessageRunnable.run()"

    .line 599
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 601
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mIsSender:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "[Sender] "

    .line 602
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    .line 603
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$SenderHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$SenderHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "WearableMessageRunnable.run() SenderHandler"

    .line 604
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "[Receiver] "

    .line 606
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    .line 607
    new-instance v0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ReceiverHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ReceiverHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mHandler:Landroid/os/Handler;

    const-string v0, "S HealthMonitor - WearableMessageManager"

    const-string v1, "WearableMessageRunnable.run() ReceiverHandler"

    .line 608
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 613
    invoke-direct {p0, v0}, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LOOP WearableMessageRunnable.run()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "S HealthMonitor - WearableMessageManager"

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$WearableMessageRunnable;->mSubTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "END WearableMessageRunnable.run()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
