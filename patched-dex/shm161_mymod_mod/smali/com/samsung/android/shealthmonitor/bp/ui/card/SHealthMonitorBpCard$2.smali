.class Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;
.super Ljava/lang/Object;
.source "SHealthMonitorBpCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;
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

    .line 252
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;->access$100(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpCard;I)V

    .line 256
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->getInstance()Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BloodPressureController;->forceRefreshTopCard()V

    return-void
.end method
