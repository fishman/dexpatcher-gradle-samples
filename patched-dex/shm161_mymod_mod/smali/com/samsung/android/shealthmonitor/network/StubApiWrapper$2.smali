.class Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;
.super Ljava/lang/Object;
.source "StubApiWrapper.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->lambda$getLatestVersionForWearable$1$StubApiWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

.field final synthetic val$emitter:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;->this$0:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-interface {p0, p2}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;",
            ">;)V"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$2;->val$emitter:Lio/reactivex/SingleEmitter;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
