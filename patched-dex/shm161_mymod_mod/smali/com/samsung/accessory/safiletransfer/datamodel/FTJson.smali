.class public Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;
.super Ljava/lang/Object;
.source "FTJson.java"


# instance fields
.field private opCode:I

.field private params:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    .line 24
    iput-object p2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "OpCode"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    const-string p1, "Parameters"

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-void
.end method

.method public getOpCode()I
    .locals 0

    .line 15
    iget p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    return p0
.end method

.method public getParams()Lorg/json/JSONObject;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    return-object p0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "OpCode"

    .line 29
    iget v2, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->opCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Parameters"

    .line 30
    iget-object p0, p0, Lcom/samsung/accessory/safiletransfer/datamodel/FTJson;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
