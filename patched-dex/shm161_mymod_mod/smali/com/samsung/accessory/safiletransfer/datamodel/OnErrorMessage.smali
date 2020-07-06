.class public Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;
.super Ljava/lang/Object;
.source "OnErrorMessage.java"


# instance fields
.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mTransactionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 15
    iput v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    .line 21
    iput p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    .line 22
    iput-object p3, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

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

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 47
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    const-string p1, "errorCode"

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    const-string p1, "errorMsg"

    .line 49
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public getErrorCode()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    return p0
.end method

.method getErrorMsg()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getTransactionId()I
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    return p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 39
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mTransactionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 40
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorMsg"

    .line 41
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/OnErrorMessage;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
