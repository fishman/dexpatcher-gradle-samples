.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$2;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$2;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->bridge$lambda$0$UpdateCheckController(Ljava/lang/Throwable;)V

    return-void
.end method
