.class Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;
.super Landroid/os/Handler;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AgentHandler"
.end annotation


# static fields
.field static final MESSAGE_ACCEPT_SERVICE_CONNECTION:I = 0x8

.field static final MESSAGE_BIND_FRAMEWORK:I = 0x0

.field static final MESSAGE_CLEANUP:I = 0xe

.field static final MESSAGE_CONNECTION_INDICATION:I = 0x5

.field static final MESSAGE_CONNECTION_INDICATION_JOB:I = 0x6

.field static final MESSAGE_FINDPEER_RESPONSE:I = 0x3

.field static final MESSAGE_FINDPEER_UPDATE:I = 0x4

.field static final MESSAGE_LOAD_AGENT_ID:I = 0xf

.field static final MESSAGE_LOW_MEMORY:I = 0x12

.field static final MESSAGE_NETWORK_CONNECTION_RESPONSE:I = 0x11

.field static final MESSAGE_ON_CONNECION_FAILURE:I = 0xd

.field static final MESSAGE_ON_ERROR:I = 0xc

.field static final MESSAGE_PEER_AUTH_REQUEST:I = 0xa

.field static final MESSAGE_PEER_AUTH_RESPONSE:I = 0xb

.field static final MESSAGE_REGISTER:I = 0x1

.field static final MESSAGE_REGISTER_MEX_AGENT:I = 0x13

.field static final MESSAGE_REJECT_SERVICE_CONNECTION:I = 0x9

.field static final MESSAGE_REQUEST_SERVICE_CONNECTION:I = 0x7

.field static final MESSAGE_SET_NETWORK_CONNECTION_TYPE:I = 0x10

.field static final MESSGAE_FINDPEER:I = 0x2


# instance fields
.field private serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Looper;)V
    .locals 0

    .line 1314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1315
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1327
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p0, "[SA_SDK]SAAgentV2"

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid msg received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1439
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2000(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "[SA_SDK]SAAgentV2"

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessageReceived() - Failed to register agent with message! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1435
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onLowMemory()V

    return-void

    .line 1428
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1429
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1430
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onNetworkConnectionResponse(II)V

    return-void

    .line 1425
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1900(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    .line 1418
    :pswitch_4
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v2, "Retrieving agent id failed"

    .line 1420
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1421
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1414
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1700(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    .line 1407
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1410
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onServiceConnectionResponse(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;I)V

    .line 1411
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1600(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    .line 1401
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1404
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1398
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1500(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/Bundle;)V

    return-void

    .line 1395
    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1400(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1391
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1392
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1300(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1387
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1388
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1200(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1383
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1384
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1100(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    .line 1373
    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    .line 1374
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/IJobListener;

    .line 1375
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "params"

    .line 1376
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobParameters;

    .line 1377
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$1000(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/os/PersistableBundle;)V

    .line 1378
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/accessory/IJobListener;->onJobFinished(Landroid/app/job/JobParameters;)V

    return-void

    .line 1369
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 1370
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$900(Lcom/samsung/android/sdk/accessory/SAAgentV2;Landroid/content/Intent;)V

    return-void

    .line 1364
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1365
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onPeerAgentsUpdated([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1366
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$800(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    .line 1343
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_3

    .line 1345
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    instance-of v1, v1, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    if-eqz v1, :cond_2

    .line 1346
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1347
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onPeerFound(ILjava/util/List;)V

    return-void

    .line 1349
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 1350
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1351
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$700(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    .line 1354
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    instance-of v2, v2, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    if-eqz v2, :cond_4

    .line 1355
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAManagerAgent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAManagerAgent;->onPeerFound(ILjava/util/List;)V

    return-void

    .line 1357
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->onFindPeerAgentsResponse([Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 1358
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$700(Lcom/samsung/android/sdk/accessory/SAAgentV2;I)V

    return-void

    .line 1340
    :pswitch_11
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    .line 1337
    :pswitch_12
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$500(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    .line 1330
    :pswitch_13
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$400(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    const-string v0, "[SA_SDK]SAAgentV2"

    const-string v2, "Binding to Accessory Framework failed"

    .line 1332
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1333
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->handleError(ILcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    return-void

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
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

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 1321
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$AgentHandler;->serviceAgent:Lcom/samsung/android/sdk/accessory/SAAgentV2;

    return-void
.end method
