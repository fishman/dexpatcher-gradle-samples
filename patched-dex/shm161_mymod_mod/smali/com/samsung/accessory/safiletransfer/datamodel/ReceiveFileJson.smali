.class public Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;
.super Ljava/lang/Object;
.source "ReceiveFileJson.java"


# instance fields
.field private mAccept:Z

.field private mId:I

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    .line 30
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

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

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    const-string p1, "path"

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    const-string p1, "accepted"

    .line 46
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    return-void
.end method

.method public getId()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    return p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public isAccept()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 36
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "path"

    .line 37
    iget-object v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "accepted"

    .line 38
    iget-boolean p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/ReceiveFileJson;->mAccept:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method
