.class final synthetic Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/lang/String;

.field private final arg$6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$4:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$5:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$4:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$5:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper$$Lambda$1;->arg$6:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/shealthmonitor/network/StubApiWrapper;->lambda$getLatestVersionForWearable$1$StubApiWrapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
