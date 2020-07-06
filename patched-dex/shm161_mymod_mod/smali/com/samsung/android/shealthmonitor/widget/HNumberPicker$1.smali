.class Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;
.super Landroid/os/Handler;
.source "HNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;Landroid/os/Looper;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 395
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$1200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$100(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$400(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v1, v2, v2, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$300(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$100(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v3

    const/high16 v2, 0x43960000    # 300.0f

    if-ge v0, v1, :cond_3

    .line 371
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 372
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/widget/Scroller;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v6

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v2

    add-int v8, v1, v2

    mul-int/lit8 v9, v0, 0x3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$800(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)I

    move-result v1

    :goto_0
    move v2, v0

    goto :goto_1

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$600(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 377
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/widget/Scroller;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v6

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v8

    mul-int/lit8 v9, v0, 0x3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 378
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$500(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$800(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)I

    move-result v1

    goto :goto_0

    .line 380
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->postInvalidate()V

    goto :goto_2

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0, v2}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$700(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$800(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;I)I

    move-result v1

    .line 386
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v4}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$900(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)I

    move-result v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v3, v4, v1, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$300(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$1000(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Z

    move-result v0

    const-wide/16 v3, 0x2

    if-eqz v0, :cond_5

    .line 388
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$1100(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/os/Handler;

    move-result-object p0

    int-to-long v0, v2

    mul-long/2addr v0, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 390
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$1;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$400(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)Landroid/os/Handler;

    move-result-object p0

    int-to-long v0, v2

    mul-long/2addr v0, v3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
