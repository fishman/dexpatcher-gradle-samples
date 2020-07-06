.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;
.super Ljava/lang/Object;
.source "SHealthMonitorCompleteView.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;-><init>(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnCompletion Video"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView$4;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;->access$playVideo(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorCompleteView;Z)V

    return-void
.end method
