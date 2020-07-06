.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;
.super Ljava/lang/Object;
.source "SHealthMonitorBpDataView.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 165
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "S HealthMonitor - SHealthMonitorBpDataView"

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " [mBpDataReadObserver:onChanged] item Count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 176
    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpMeasuredDataExist(Z)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$200(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;I)V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$300(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;Ljava/util/List;)V

    .line 179
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "S HealthMonitor - SHealthMonitorBpDataView"

    const-string v1, " [mBpDataReadObserver:onChanged] item is empty : "

    .line 169
    invoke-static {p1, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpSharedPreferenceHelper;->setBpMeasuredDataExist(Z)V

    .line 171
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)V

    .line 172
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpDataView;)Lcom/samsung/android/shealthmonitor/widget/HColorButton;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/widget/HColorButton;->setVisibility(I)V

    return-void
.end method
