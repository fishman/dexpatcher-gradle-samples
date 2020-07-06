.class Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;
.super Ljava/lang/Object;
.source "SAJobService.java"

# interfaces
.implements Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgentCallbackImpl"
.end annotation


# instance fields
.field private mParams:Landroid/app/job/JobParameters;

.field private mRequestType:I

.field private mService:Lcom/samsung/android/sdk/accessory/SAJobService;


# direct methods
.method public constructor <init>(ILandroid/app/job/JobParameters;Lcom/samsung/android/sdk/accessory/SAJobService;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mRequestType:I

    .line 137
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mParams:Landroid/app/job/JobParameters;

    .line 138
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAJobService;

    return-void
.end method


# virtual methods
.method public onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mService:Lcom/samsung/android/sdk/accessory/SAJobService;

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mRequestType:I

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, p1, p0}, Lcom/samsung/android/sdk/accessory/SAJobService;->access$000(Lcom/samsung/android/sdk/accessory/SAJobService;ILcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "[SA_SDK]SAJobService"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request failed. Type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAJobService$AgentCallbackImpl;->mRequestType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". ErrorCode : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". ErrorMsg: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
