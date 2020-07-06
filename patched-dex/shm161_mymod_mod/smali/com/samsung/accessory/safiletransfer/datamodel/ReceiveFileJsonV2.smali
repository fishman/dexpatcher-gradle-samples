.class public Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;
.super Ljava/lang/Object;
.source "ReceiveFileJsonV2.java"


# instance fields
.field private mAccept:Z

.field private mFileURI:Ljava/lang/String;

.field private mId:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    .line 36
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    .line 38
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 52
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    const-string p1, "path"

    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    const-string p1, "fileuri"

    .line 54
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    const-string p1, "accepted"

    .line 55
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    return-void
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public isAccept()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 43
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "path"

    .line 44
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileuri"

    .line 45
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mFileURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accepted"

    .line 46
    iget-boolean p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJsonV2;->mAccept:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method
