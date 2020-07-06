.class public Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;
.super Ljava/lang/Object;
.source "SendFileRequestV2.java"


# instance fields
.field private mAccessoryID:J

.field private mAgentClassName:Ljava/lang/String;

.field private mContainerID:Ljava/lang/String;

.field private mDestFilePath:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mFileURI:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPeerID:Ljava/lang/String;

.field private mSrcFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    .line 77
    iput-wide p5, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    .line 78
    iput-wide p7, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    .line 79
    iput-object p9, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    .line 80
    iput-object p10, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    .line 82
    iput-object p12, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

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

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "SourcePath"

    .line 102
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    const-string p1, "DestinationPath"

    .line 103
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    const-string p1, "PeerId"

    .line 104
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    const-string p1, "ContainerId"

    .line 105
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    const-string p1, "AccessoryId"

    .line 106
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    const-string p1, "FileSize"

    .line 107
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    const-string p1, "FileName"

    .line 108
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    const-string p1, "FileURI"

    .line 109
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    const-string p1, "PackageName"

    .line 110
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "PackageName"

    .line 111
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    const-string p1, "AgentClassName"

    .line 112
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getAccessoryID()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    return-wide v0
.end method

.method public getAgentClassName()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    return-object p0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    return-wide v0
.end method

.method public getFileURI()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerID()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    return-object p0
.end method

.method public getSrcFilePath()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "SourcePath"

    .line 87
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mSrcFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DestinationPath"

    .line 88
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mDestFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PeerId"

    .line 89
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPeerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ContainerId"

    .line 90
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mContainerID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AccessoryId"

    .line 91
    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAccessoryID:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FileSize"

    .line 92
    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FileName"

    .line 93
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "FileURI"

    .line 94
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mFileURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PackageName"

    .line 95
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AgentClassName"

    .line 96
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/SendFileRequestV2;->mAgentClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
