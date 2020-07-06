.class final synthetic Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$3;->arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$3;->arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->bridge$lambda$1$BpUpdateController(Ljava/lang/Throwable;)V

    return-void
.end method
