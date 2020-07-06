.class final synthetic Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;


# instance fields
.field private final arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    return-void
.end method


# virtual methods
.method public final checkUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$0;->arg$1:Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->lambda$showUpdateDialog$0$BpUpdateController()V

    return-void
.end method
