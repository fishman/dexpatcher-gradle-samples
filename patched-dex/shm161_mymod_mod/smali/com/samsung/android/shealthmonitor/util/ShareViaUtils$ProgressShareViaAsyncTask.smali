.class Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;
.super Landroid/os/AsyncTask;
.source "ShareViaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressShareViaAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private fileReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private fileReferenceArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

.field private mMimeType:Ljava/lang/String;

.field shareAll:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 163
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 165
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReference:Ljava/lang/ref/WeakReference;

    .line 166
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 172
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 173
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReference:Ljava/lang/ref/WeakReference;

    .line 174
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    .line 175
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 176
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->listener:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 197
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    .line 198
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->listener:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;)Ljava/lang/String;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    const-string p1, "S HealthMonitor - ShareViaUtils"

    const-string v0, " doInBackground() "

    .line 209
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 216
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->shareAll:Z

    if-nez v1, :cond_2

    const-string v1, "S HealthMonitor - ShareViaUtils"

    const-string v2, " doInBackground(): inside on file share "

    .line 217
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :cond_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S HealthMonitor - ShareViaUtils"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " doInBackground(): Image file path  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.shealthmonitor.fileprovider"

    .line 229
    invoke-static {v1, v0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "S HealthMonitor - ShareViaUtils"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " doInBackground(): share Uri through FileProvider  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 233
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$1;-><init>(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    const-string v1, "S HealthMonitor - ShareViaUtils"

    const-string v2, " doInBackground(): inside on many file share "

    .line 258
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->fileReferenceArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    .line 262
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    :cond_4
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "S HealthMonitor - ShareViaUtils"

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " doInBackground(): file path  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.samsung.android.shealthmonitor.fileprovider"

    .line 271
    invoke-static {v3, v0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$FileProvider;->getUriForFile(Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "S HealthMonitor - ShareViaUtils"

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " doInBackground(): share Uri through FileProvider  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v3, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask$2;-><init>(Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p0, 0x1

    .line 300
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 305
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "S HealthMonitor - ShareViaUtils"

    const-string v1, " onPostExecute() "

    .line 306
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/samsung/android/shealthmonitor/base/R$string;->share_image_storage_error:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->mMimeType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->showShareViaDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 318
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils;->access$302(Z)Z

    .line 319
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->listener:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

    if-eqz p1, :cond_2

    .line 320
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->listener:Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;

    invoke-interface {p0}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ShareCompleteNotifier;->onShareCompleted()V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/util/ShareViaUtils$ProgressShareViaAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 203
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string p0, "S HealthMonitor - ShareViaUtils"

    const-string v0, " onPreExecute() "

    .line 204
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
