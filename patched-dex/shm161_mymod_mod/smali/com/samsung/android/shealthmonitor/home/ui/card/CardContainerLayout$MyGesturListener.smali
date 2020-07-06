.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$MyGesturListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CardContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGesturListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$MyGesturListener;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string p0, "S HealthMonitor - CardContainerLayout"

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFling: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "S HealthMonitor - CardContainerLayout"

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onFling: X: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "  Y: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
