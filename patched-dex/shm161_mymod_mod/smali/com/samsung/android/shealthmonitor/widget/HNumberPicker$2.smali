.class Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;
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
.method constructor <init>(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 403
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 404
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->requestLayout()V

    return-void

    .line 409
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker$2;->this$0:Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;->access$1200(Lcom/samsung/android/shealthmonitor/widget/HNumberPicker;IILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
