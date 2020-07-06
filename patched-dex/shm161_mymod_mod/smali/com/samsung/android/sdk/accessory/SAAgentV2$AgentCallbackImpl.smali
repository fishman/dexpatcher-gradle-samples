.class Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAAgentV2.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAdapter$AgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 0

    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

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

    .line 2326
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkConnected()V
    .locals 1

    .line 2321
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFrameworkDisconnected()V
    .locals 2

    .line 2310
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 2312
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2313
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentCallbackImpl;->mAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mBackgroundWorker:Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string v0, "onFrameworkDisconnected: mBackgroundWorker is null!"

    .line 2315
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
