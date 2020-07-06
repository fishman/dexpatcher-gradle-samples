.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;
.super Ljava/lang/Object;
.source "SHealthMonitorVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsSurfaceValid:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Landroid/net/Uri;

.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "S HealthMonitor - SHealthMonitorVideoView"

    .line 13
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mIsSurfaceValid:Z

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private setVideo()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const-string v0, "S HealthMonitor - SHealthMonitorVideoView"

    const-string v1, " set prepare done!!"

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "S HealthMonitor - SHealthMonitorVideoView"

    const-string v1, " start done !!!"

    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "S HealthMonitor - SHealthMonitorVideoView"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [surfaceCreated] exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {p0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 118
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method

.method public setVideoPath(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "S HealthMonitor - SHealthMonitorVideoView"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " set URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mUri:Landroid/net/Uri;

    .line 34
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mIsSurfaceValid:Z

    if-eqz p1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setVideo()V

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p0, "S HealthMonitor - SHealthMonitorVideoView"

    const-string p1, " start surfaceChanged !!!"

    .line 78
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mIsSurfaceValid:Z

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->setVideo()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "S HealthMonitor - SHealthMonitorVideoView"

    const-string v0, " start surfaceDestroyed !!!"

    .line 83
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 86
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mIsSurfaceValid:Z

    .line 89
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method
