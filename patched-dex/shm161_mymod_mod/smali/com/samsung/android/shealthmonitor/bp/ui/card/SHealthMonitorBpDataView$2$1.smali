.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpDataView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->lambda$onReceive$0$SHealthMonitorBpDataView$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;->this$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;->this$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$800(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;->this$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    iget-object v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$400(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/samsung/android/shealthmonitor/bp/R$string;->shealth_monitor_sync:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2$1;->this$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$900(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method
