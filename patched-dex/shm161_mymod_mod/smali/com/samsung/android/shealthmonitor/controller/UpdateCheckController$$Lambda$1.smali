.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    iput-boolean p2, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;->arg$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$1;->arg$2:Z

    check-cast p1, Lcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->lambda$requestMobileAppUpdateInfo$1$UpdateCheckController(ZLcom/samsung/android/shealthmonitor/data/UpdateCheckXmlResponse;)V

    return-void
.end method
