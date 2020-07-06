.class Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;
.super Ljava/lang/Object;
.source "SAAgentV2.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 2244
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V
    .locals 0

    .line 2244
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void
.end method


# virtual methods
.method public onConnectionClosed(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 2282
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    .locals 3

    const/16 v0, 0x800

    if-ne p2, v0, :cond_0

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Framework disconnected during connection process!"

    .line 2260
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_2

    const/16 v0, 0x40a

    if-ne p2, v0, :cond_1

    const/16 p2, 0x409

    .line 2266
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2267
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const-string v0, "[SA_SDK]SAAgentV2"

    .line 2269
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

    .line 2270
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2271
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2272
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2273
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onConnectionFailure: mBackgroundWorker is null!"

    .line 2275
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 3

    .line 2247
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2248
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2900(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection success with peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 2254
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$ConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1600(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 2249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
