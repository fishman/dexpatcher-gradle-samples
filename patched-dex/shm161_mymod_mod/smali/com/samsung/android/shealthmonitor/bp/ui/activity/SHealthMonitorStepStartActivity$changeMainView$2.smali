.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;
.super Ljava/lang/Object;
.source "SHealthMonitorStepStartActivity.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->changeMainView(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnCompletion Video"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$changeMainView$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->access$playVideo(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;Z)V

    return-void
.end method
