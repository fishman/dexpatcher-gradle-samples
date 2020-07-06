.class Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;
.super Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 2286
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAAgentV2$1;)V
    .locals 0

    .line 2286
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

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

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v1, "Received Authentication response"

    .line 2289
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2292
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2293
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AuthenticationCallback;->this$0:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "onPeerAgentAuthenticated: mBackgroundWorker is null!"

    .line 2295
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
