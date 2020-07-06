.class Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAService.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mParams:Landroid/content/Intent;

.field private mRequestType:I

.field mService:Lcom/samsung/android/sdk/accessory/SAService;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;Lcom/samsung/android/sdk/accessory/SAService;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mRequestType:I

    .line 176
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mParams:Landroid/content/Intent;

    .line 177
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    return-void
.end method


# virtual methods
.method public onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mRequestType:I

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mParams:Landroid/content/Intent;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/sdk/accessory/SAService;->access$000(Lcom/samsung/android/sdk/accessory/SAService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "[SA_SDK]SAService"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Agent initialization error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". ErrorMsg: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAService;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAService;->access$100(Lcom/samsung/android/sdk/accessory/SAService;)V

    return-void
.end method
