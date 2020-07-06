.class Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;
.super Landroid/os/Handler;
.source "SAAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgentHandler"
.end annotation


# static fields
.field static final MESSAGE_ACCEPT_SERVICE_CONNECTION:I = 0x7

.field static final MESSAGE_BIND_FRAMEWORK:I = 0x0

.field static final MESSAGE_CLEANUP:I = 0xd

.field static final MESSAGE_CONNECTION_INDICATION:I = 0x5

.field static final MESSAGE_FINDPEER_RESPONSE:I = 0x3

.field static final MESSAGE_FINDPEER_UPDATE:I = 0x4

.field static final MESSAGE_LOAD_AGENT_ID:I = 0xe

.field static final MESSAGE_NETWORK_CONNECTION_RESPONSE:I = 0x10

.field static final MESSAGE_ON_CONNECION_FAILURE:I = 0xc

.field static final MESSAGE_ON_ERROR:I = 0xb

.field static final MESSAGE_PEER_AUTH_REQUEST:I = 0x9

.field static final MESSAGE_PEER_AUTH_RESPONSE:I = 0xa

.field static final MESSAGE_REGISTER:I = 0x1

.field static final MESSAGE_REGISTER_MEX_AGENT:I = 0x11

.field static final MESSAGE_REJECT_SERVICE_CONNECTION:I = 0x8

.field static final MESSAGE_REQUEST_SERVICE_CONNECTION:I = 0x6

.field static final MESSAGE_SET_NETWORK_CONNECTION_TYPE:I = 0xf

.field static final MESSGAE_FINDPEER:I = 0x2


# instance fields
.field serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Looper;)V
    .locals 0

    .line 1168
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1169
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1181
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgent"

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid msg received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1270
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1900(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessageReceived() - Failed to register agent with message! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1263
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1264
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1265
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onNetworkConnectionResponse(II)V

    return-void

    .line 1260
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1800(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    .line 1253
    :pswitch_3
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1700(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Retrieving agent id failed"

    .line 1255
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1249
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1600(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    .line 1242
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1245
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/sdk/accessory/SAAgent;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 1246
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1500(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    .line 1236
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1239
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1233
    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1400(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/os/Bundle;)V

    return-void

    .line 1230
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1300(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1226
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1227
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1200(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1222
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1223
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1100(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1218
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1219
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$1000(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1214
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 1215
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$900(Lcom/samsung/android/sdk/accessory/SAAgent;Landroid/content/Intent;)V

    return-void

    .line 1209
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1210
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1211
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$800(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    .line 1197
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 1199
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1201
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$700(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgent;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1204
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$700(Lcom/samsung/android/sdk/accessory/SAAgent;I)V

    return-void

    .line 1194
    :pswitch_f
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$600(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    .line 1191
    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$500(Lcom/samsung/android/sdk/accessory/SAAgent;)V

    return-void

    .line 1184
    :pswitch_11
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->access$400(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "[SA_SDK]SAAgent"

    const-string v2, "Binding to Accessory Framework failed"

    .line 1186
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgent;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    .line 1173
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgent$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgent;

    return-void
.end method
