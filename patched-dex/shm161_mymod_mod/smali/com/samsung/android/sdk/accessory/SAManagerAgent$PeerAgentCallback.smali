.class Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;
.source "SAManagerAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeerAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Lcom/samsung/android/sdk/accessory/SAManagerAgent$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentUpdated(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onPeerAgentsFound(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAManagerAgent"

    const-string v1, "FindPeer response received."

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "errorcode"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string v0, "errorcode"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "[SA_SDK]SAManagerAgent"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Peer Not Found:Error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 121
    iput v1, v0, Landroid/os/Message;->what:I

    .line 122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 123
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v0, "peerAgents"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "[SA_SDK]SAManagerAgent"

    const-string p1, "Find Peer - invalid response from Accessory Framework"

    .line 127
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "[SA_SDK]SAManagerAgent"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Peer agent(s) found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 131
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 132
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
