.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;
.super Ljava/lang/Object;
.source "CardContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [onTouch] mSingleTouchListener : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
