.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;->arg$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;->arg$1:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$6;->arg$2:Z

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->lambda$checkSave$7$SHealthMonitorHistoryItemActivity(ZLandroid/view/View;)V

    return-void
.end method
