.class public Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;
.super Ljava/lang/Object;
.source "CancelFileRequest.java"


# instance fields
.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

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

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "TransactionId"

    .line 28
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    return-void
.end method

.method public getTransactionId()I
    .locals 0

    .line 17
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TransactionId"

    .line 22
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/CancelFileRequest;->mTransactionId:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method
