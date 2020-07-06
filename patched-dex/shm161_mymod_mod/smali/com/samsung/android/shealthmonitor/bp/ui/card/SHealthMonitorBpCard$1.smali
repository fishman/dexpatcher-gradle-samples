.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpCard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
