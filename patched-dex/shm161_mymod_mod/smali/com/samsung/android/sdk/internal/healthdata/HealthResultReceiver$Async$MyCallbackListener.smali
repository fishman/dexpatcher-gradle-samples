.class Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;
.super Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/ICallbackRegister$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->onCancelResult(I)V

    return-void
.end method

.method public setCallback(ILcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyCallbackListener;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->access$1002(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;)Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;

    return-void
.end method
