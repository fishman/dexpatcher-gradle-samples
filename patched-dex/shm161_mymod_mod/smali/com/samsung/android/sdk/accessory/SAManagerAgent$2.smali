.class Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;
.super Ljava/lang/Object;
.source "SAManagerAgent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessory/SAManagerAgent;->getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

.field final synthetic val$agentClassName:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessory/SAManagerAgent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->val$agentClassName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[SA_SDK]SAManagerAgent"

    const-string v1, "Fetching agent id from Framework"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    iget-object v0, v0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->val$agentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getAgentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "[SA_SDK]SAManagerAgent"

    const-string v2, "Failed to fetch agent ID."

    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent$2;->this$0:Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    const-string v1, "Accessory Framework has died!"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;I)V

    return-object v2
.end method
