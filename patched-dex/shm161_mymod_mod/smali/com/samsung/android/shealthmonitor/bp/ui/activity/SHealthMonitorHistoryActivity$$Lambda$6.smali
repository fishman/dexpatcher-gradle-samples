.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Landroid/widget/TextView;

.field private final arg$2:F

.field private final arg$3:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;FLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$1:Landroid/widget/TextView;

    iput p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$2:F

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$1:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$2:F

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$$Lambda$6;->arg$3:Landroid/widget/TextView;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->lambda$changeYPos$7$SHealthMonitorHistoryActivity(Landroid/widget/TextView;FLandroid/widget/TextView;)V

    return-void
.end method
