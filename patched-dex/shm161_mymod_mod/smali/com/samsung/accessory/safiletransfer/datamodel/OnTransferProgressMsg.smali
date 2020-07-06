.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;
.super Ljava/lang/Object;
.source "OnTransferProgressMsg.java"


# instance fields
.field private mProgress:J

.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    .line 18
    iput-wide p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    const-string p1, "progress"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    return-void
.end method

.method public getProgress()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    return-wide v0
.end method

.method public getTransactionId()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 31
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mTransactionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "progress"

    .line 32
    iget-wide v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnTransferProgressMsg;->mProgress:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
