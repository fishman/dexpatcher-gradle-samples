.class Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;
.super Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;
.source "HealthDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/IHealthDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->access$000(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->access$000(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->access$000(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->onChange(Ljava/lang/String;)V

    return-void
.end method
