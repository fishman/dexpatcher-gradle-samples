.class Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;
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

    .line 435
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 438
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 441
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    .line 445
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 461
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2300(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)V

    goto/16 :goto_1

    .line 467
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const-string p2, "S HealthMonitor - CardContainerLayout"

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " onTouch : diffY : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x41600000    # 14.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;->setSkipClick(Z)V

    .line 473
    :cond_1
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2400(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2500(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)V

    goto :goto_0

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2600(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 477
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, " change the card !!! mCurrentFrontCard = "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v3}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p2

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)I

    const-string p1, "S HealthMonitor - CardContainerLayout"

    .line 479
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " change the card22 !!! mCurrentFrontCard = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1800(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    goto :goto_0

    .line 483
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2700(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)V

    .line 497
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0, v2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1902(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    return v0

    .line 448
    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1900(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)F

    move-result p2

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_4

    return v0

    .line 451
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 452
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2000(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    .line 453
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2002(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 455
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$1902(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    .line 456
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout$4;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$100(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2200(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;I)F

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;->access$2102(Lcom/samsung/android/shealthmonitor/home/ui/card/CardContainerLayout;F)F

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
