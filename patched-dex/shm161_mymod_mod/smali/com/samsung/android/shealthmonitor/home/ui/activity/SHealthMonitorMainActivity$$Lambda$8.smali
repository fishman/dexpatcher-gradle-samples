.class final synthetic Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

.field private final arg$2:[I


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;->arg$2:[I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;->arg$1:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity$$Lambda$8;->arg$2:[I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorMainActivity;->lambda$checkSystem$9$SHealthMonitorMainActivity([ILandroid/view/View;)V

    return-void
.end method
