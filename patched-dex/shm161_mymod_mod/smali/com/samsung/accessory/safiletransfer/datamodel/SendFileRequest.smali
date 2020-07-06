.class public Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;
.super Ljava/lang/Object;
.source "SendFileRequest.java"


# instance fields
.field private mAccessoryID:J

.field private mAgentClassName:Ljava/lang/String;

.field private mContainerID:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPeerID:Ljava/lang/String;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    .line 59
    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    .line 60
    iput-object p7, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SourcePath"

    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    const-string p1, "DestinationPath"

    .line 79
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    const-string p1, "PeerId"

    .line 80
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    const-string p1, "ContainerId"

    .line 81
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    const-string p1, "AccessoryId"

    .line 82
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    const-string p1, "PackageName"

    .line 83
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "PackageName"

    .line 84
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    const-string p1, "AgentClassName"

    .line 85
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getAccessoryID()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    return-wide v0
.end method

.method public getAgentClassName()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    return-object p0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerID()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    return-object p0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "SourcePath"

    .line 66
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DestinationPath"

    .line 67
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mDestFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PeerId"

    .line 68
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPeerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ContainerId"

    .line 69
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AccessoryId"

    .line 70
    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAccessoryID:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "PackageName"

    .line 71
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AgentClassName"

    .line 72
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequest;->mAgentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
