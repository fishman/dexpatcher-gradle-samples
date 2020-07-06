.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CardContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleCardMyGesturListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onFling: X: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "  Y: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$SingleCardMyGesturListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->onOutsideClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
