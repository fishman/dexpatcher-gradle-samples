.class Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAAgent.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 0

    .line 1908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1909
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-void
.end method


# virtual methods
.method public onAgentRegistered()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 1931
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkConnected()V
    .locals 1

    .line 1926
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkDisconnected()V
    .locals 2

    .line 1915
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 1917
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1918
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgent"

    const-string v0, "onFrameworkDisconnected: mBackgroundWorker is null!"

    .line 1920
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
