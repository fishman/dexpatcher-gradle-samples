.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1$1;
.super Ljava/lang/Object;
.source "SHealthMonitorCompleteView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$playVideo$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$showVideo(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)V

    return-void
.end method
