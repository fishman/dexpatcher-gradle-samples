.class Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;
.super Landroid/os/Handler;
.source "HealthResultHolderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private invokeCallback(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;->onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, "Health.ResultHolder"

    const-string p1, "No default handler"

    .line 202
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 199
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;->invokeCallback(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    return-void
.end method

.method send(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 190
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultHolderImpl$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
