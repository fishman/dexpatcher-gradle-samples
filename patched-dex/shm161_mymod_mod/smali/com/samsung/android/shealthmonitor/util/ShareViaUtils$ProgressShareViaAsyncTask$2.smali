.class Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;
.super Ljava/lang/Object;
.source "ShareViaUtils.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private msc:Landroid/media/MediaScannerConnection;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->msc:Landroid/media/MediaScannerConnection;

    .line 278
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->access$100(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->access$100(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 279
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->access$100(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->msc:Landroid/media/MediaScannerConnection;

    .line 280
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->connect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    const-string v0, "S HealthMonitor - ShareViaUtils"

    const-string v1, " doInBackground(): onMediaScannerConnected()  "

    .line 286
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->msc:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->val$filePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->this$0:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->access$200(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    const-string p1, "S HealthMonitor - ShareViaUtils"

    const-string p2, " doInBackground(): onScanCompleted()  "

    .line 291
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;->msc:Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method
