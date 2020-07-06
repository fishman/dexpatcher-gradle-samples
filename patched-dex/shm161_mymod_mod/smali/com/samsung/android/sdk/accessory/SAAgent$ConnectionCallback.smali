.class Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 1849
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V
    .locals 0

    .line 1849
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void
.end method


# virtual methods
.method public onConnectionClosed(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 1887
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$2000(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    const/16 v0, 0x800

    if-ne p2, v0, :cond_0

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Framework disconnected during connection process!"

    .line 1865
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_2

    const/16 v0, 0x40a

    if-ne p2, v0, :cond_1

    const/16 p2, 0x409

    .line 1871
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1872
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v0, "[SA_SDK]SAAgent"

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection attempt failed wih peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1876
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1877
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1878
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onConnectionFailure: mBackgroundWorker is null!"

    .line 1880
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$2000(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 1853
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$2000(Lcom/samsung/android/sdk/accessory/SAAgent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "[SA_SDK]SAAgent"

    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection success with peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 1859
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1500(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1854
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
