.class final synthetic Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$0;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->lambda$getLatestVersionForMobile$0$StubApiWrapper(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
