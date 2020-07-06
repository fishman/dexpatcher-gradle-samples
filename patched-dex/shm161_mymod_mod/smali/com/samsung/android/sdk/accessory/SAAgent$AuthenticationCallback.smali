.class Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 1891
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAAgent$1;)V
    .locals 0

    .line 1891
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void
.end method


# virtual methods
.method public onPeerAgentAuthenticated(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAAgent"

    const-string v1, "Received Authentication response"

    .line 1894
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1897
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1898
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string p1, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    .line 1900
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
