.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$5;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$$Lambda$5;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;->lambda$showExpiredCalibrationCard$5$SHealthMonitorBpTopCard(Landroid/view/View;)V

    return-void
.end method
