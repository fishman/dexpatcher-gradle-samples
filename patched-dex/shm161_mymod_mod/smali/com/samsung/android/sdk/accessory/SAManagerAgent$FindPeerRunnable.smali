.class final Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;
.super Ljava/lang/Object;
.source "SAManagerAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindPeerRunnable"
.end annotation


# instance fields
.field private mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getLocalAgentId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    const/16 v2, 0x800

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    return-void

    .line 169
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v2, v2, Lcom/samsung/android/sdk/accessory/SAAgentV2;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    .line 170
    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->access$100(Lcom/samsung/android/sdk/accessory/SAManagerAgent;)Lcom/samsung/android/sdk/accessory/SAManagerAgent$PeerAgentCallback;

    move-result-object v3

    .line 169
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->findPeerAgents(Ljava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[SA_SDK]SAManagerAgent"

    const-string v2, "Find peer request enqueued successfully."

    .line 172
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "[SA_SDK]SAManagerAgent"

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Find peer failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, "[SA_SDK]SAManagerAgent"

    const-string v2, "Find Peer request failed!"

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    return-void

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$FindPeerRunnable;->mManagerAgent:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    throw v1
.end method
