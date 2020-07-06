.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;
.super Ljava/lang/Object;
.source "SHealthMonitorCompleteView.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->playVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
