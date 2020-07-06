.class Lcom/samsung/android/shealthmonitor/OomExceptionHandler$1;
.super Ljava/lang/Thread;
.source "OomExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/OomExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/OomExceptionHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/OomExceptionHandler;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/OomExceptionHandler$1;->this$0:Lcom/samsung/android/shealthmonitor/OomExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 39
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 40
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
