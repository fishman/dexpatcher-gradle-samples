.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$3;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    return-void
.end method


# virtual methods
.method public final checkUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$3;->arg$1:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->lambda$postProcess$2$UpdateCheckController()V

    return-void
.end method
