.class Lcom/samsung/android/sdk/accessory/SASocket$1;
.super Ljava/lang/Object;
.source "SASocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SASocket;->initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;

.field final synthetic val$localAgentId:Ljava/lang/String;

.field final synthetic val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 486
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection request failed for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Reason: PeerAgent does not support Socket communication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const/16 v2, 0x401

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 492
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void

    .line 498
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$500(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$localAgentId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    new-instance v3, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    new-instance v4, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {v4, v6, v5}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->requestServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 502
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to initiate connection!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 506
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection request enqued successfully for peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection request failed for peer:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Cleaning up now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 511
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->val$peerAgent:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 513
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$1;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method
