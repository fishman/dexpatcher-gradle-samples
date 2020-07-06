.class public abstract Lcom/samsung/android/sdk/accessory/SAMessage;
.super Ljava/lang/Object;
.source "SAMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;,
        Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSORY_MESSAGE_DISABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_DISABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_ENABLED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_ENABLED"

.field public static final ACTION_ACCESSORY_MESSAGE_RECEIVED:Ljava/lang/String; = "com.samsung.accessory.action.MESSAGE_RECEIVED"

.field static final ERROR_LOCAL_PEER_AGENT_NOT_SUPPORTED:I = -0x705

.field private static final ERROR_NONE:I = 0x700

.field private static final ERROR_PEER_AGENT_INVALID:I = -0x708

.field public static final ERROR_PEER_AGENT_NOT_SUPPORTED:I = 0x703

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x702

.field public static final ERROR_PEER_AGENT_UNREACHABLE:I = 0x701

.field public static final ERROR_PEER_SERVICE_NOT_SUPPORTED:I = 0x704

.field private static final ERROR_REMOTE_PEER_AGENT_NOT_SUPPORTED:I = -0x706

.field public static final ERROR_SERVICE_NOT_SUPPORTED:I = 0x705

.field private static final ERROR_TIMED_OUT:I = -0x707

.field private static final ERROR_TRANSACTION_FAILED:I = -0x709

.field public static final ERROR_UNKNOWN:I = 0x706

.field public static final EXTRA_PEER_ACCESSORY:Ljava/lang/String; = "com.samsung.accessory.device.extra.SAPeerAccessory"

.field private static final INVALID_ID:I = -0x1

.field private static final MESSAGE_KEY:Ljava/lang/String; = "_"

.field public static final MESSAGE_PRIORITY_HIGH:I = 0x3

.field public static final MESSAGE_PRIORITY_LOW:I = 0x1

.field public static final MESSAGE_PRIORITY_MEDIUM:I = 0x2

.field private static final PROVIDER_ID_ALARM:I = 0xd

.field private static final PROVIDER_ID_FMD_SERVICE:I = 0x2

.field private static final PROVIDER_ID_SA_CALL:I = 0x3

.field private static final PROVIDER_ID_WATCH_FACE:I = 0x6

.field private static final PROVIDER_ID_WIDGETS_SERVICE:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static final WHITE_LIST_FOR_PRIORITY_HIGH:[I


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mAgentId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SAMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    .line 194
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->WHITE_LIST_FOR_PRIORITY_HIGH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x6
        0xd
        0xf
    .end array-data
.end method

.method protected constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;)V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 271
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string p1, "SAMessage() - empty agent instance!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message creation failed! - invalid agent instance supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 275
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getAgentHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    .line 277
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgent;->registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgentAsync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 285
    sget-object p0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string p1, "SAMessage() - empty agent instance!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message creation failed! - invalid agent instance supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/sdk/accessory/SAAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 289
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getAgentHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    .line 291
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->registerMessageInstance(Lcom/samsung/android/sdk/accessory/SAMessage;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->registerAgentAsync(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onMessageReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onStatusReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->postStatusAsynch(Landroid/os/Bundle;)V

    return-void
.end method

.method private static getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPriorityHigh(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z
    .locals 4

    .line 652
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 653
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->WHITE_LIST_FOR_PRIORITY_HIGH:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onMessageReceived(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 585
    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 586
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "onMessageReceived(): Agent info empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 591
    :cond_0
    const-class v3, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 592
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    .line 593
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v4, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    .line 594
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "fragmentIndex"

    .line 595
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v4, "peerAgent"

    .line 596
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v4, "transactionId"

    .line 597
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v11, :cond_b

    .line 598
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_b

    .line 602
    :cond_1
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v12

    .line 603
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-static {v4, v12, v13, v5}, Lcom/samsung/android/sdk/accessory/SAMessage;->getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v8, 0x706

    const/4 v6, 0x2

    .line 605
    :try_start_0
    invoke-virtual {v11}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v4, v14

    move v15, v6

    move v6, v2

    move-object v8, v3

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleMessage(Ljava/lang/Object;III[BII)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 608
    :try_start_2
    invoke-static {v14}, Lcom/samsung/android/sdk/accessory/SAReassembler;->getAppData(Ljava/lang/Object;)[B

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {v1, v11, v5}, Lcom/samsung/android/sdk/accessory/SAMessage;->onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x700

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v5, v4

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move v5, v4

    move-object v4, v0

    goto :goto_7

    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :goto_0
    const/16 v5, 0x706

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    .line 622
    :goto_1
    iget-object v6, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v6, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-lez v5, :cond_6

    .line 625
    :try_start_3
    invoke-direct {v1, v12, v13, v2, v5}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessageDeliveryStatus(JII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 628
    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send message status! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eq v4, v15, :cond_7

    goto :goto_4

    :goto_2
    if-eq v4, v15, :cond_5

    .line 631
    invoke-static {v14}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :goto_3
    if-eq v4, v15, :cond_7

    :goto_4
    invoke-static {v14}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    goto :goto_8

    :cond_7
    return-void

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move v15, v6

    :goto_5
    move-object v2, v0

    const/4 v5, -0x1

    goto :goto_a

    :catch_3
    move-exception v0

    move v15, v6

    :goto_6
    move-object v4, v0

    const/4 v5, -0x1

    .line 619
    :goto_7
    :try_start_5
    sget-object v6, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in onRead! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 622
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    const/16 v3, 0x706

    .line 625
    :try_start_6
    invoke-direct {v1, v12, v13, v2, v3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessageDeliveryStatus(JII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v5, v15, :cond_8

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_9

    :catch_4
    move-exception v0

    .line 628
    :try_start_7
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send message status! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eq v5, v15, :cond_8

    goto :goto_4

    :goto_8
    return-void

    :cond_8
    return-void

    :goto_9
    if-eq v5, v15, :cond_9

    .line 631
    invoke-static {v14}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_9
    throw v1

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 622
    :goto_a
    iget-object v1, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v5, v15, :cond_a

    .line 631
    invoke-static {v14}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_a
    throw v2

    .line 599
    :cond_b
    :goto_b
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "onMessageReceived(): PeerAgent is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onStatusReceived(Landroid/os/Bundle;)V
    .locals 3

    .line 638
    const-class v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "peerAgent"

    .line 639
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    const-string v1, "transactionId"

    .line 640
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errorcode"

    .line 641
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x700

    if-ne p1, v2, :cond_0

    .line 644
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    return-void

    .line 646
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    return-void
.end method

.method private postStatusAsynch(Landroid/os/Bundle;)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move/from16 v3, p4

    if-nez v2, :cond_0

    .line 481
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: peerAgent null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Send Message Failed! - Peer Agent is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez v8, :cond_1

    .line 485
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: data null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data to send!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_1
    array-length v4, v8

    if-nez v4, :cond_2

    .line 489
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: invalid data length 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data length 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_2
    array-length v4, v8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 493
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Send: Data too big:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data Too long..! Data size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Max allowed Size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " .Please check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_3
    iget-object v4, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 499
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    const-string v2, "Send: agentId not retrieved!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to send message - Agent info empty!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->checkMexFeature(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)I

    move-result v4

    const/16 v5, 0x700

    if-eq v4, v5, :cond_5

    const/4 v3, -0x1

    .line 505
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/accessory/SAMessage;->onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V

    return v3

    :cond_5
    const/4 v4, 0x3

    if-lez v3, :cond_6

    if-le v3, v4, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 514
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/accessory/SAMessage;->isPriorityHigh(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 515
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MEX Priority : High ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v4

    goto :goto_0

    :cond_8
    move/from16 v17, v3

    :goto_0
    const/16 v9, -0x709

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v3

    .line 521
    iget-object v5, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v4, v6}, Lcom/samsung/android/sdk/accessory/SAMessage;->getMessageKey(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz p3, :cond_9

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v3

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto :goto_1

    .line 523
    :goto_2
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending data:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v14, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    const/4 v3, 0x2

    invoke-direct {v14, v3, v15}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V

    .line 526
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxMsgHeaderLength()I

    move-result v4

    .line 527
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v5

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getMxduSize()I

    move-result v6

    move-object v3, v14

    .line 526
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v3, v9

    .line 530
    :goto_3
    :try_start_1
    invoke-virtual {v14}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_b

    .line 532
    :try_start_2
    iget-object v6, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v7, v1, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v8

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->getBuffer()[B

    move-result-object v11

    .line 534
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v16

    .line 535
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->getOffset()I

    move-result v18
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v12, p3

    move/from16 v13, v17

    move-object v1, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v18

    .line 532
    :try_start_3
    invoke-virtual/range {v6 .. v16}, Lcom/samsung/android/sdk/accessory/SAAdapter;->sendMessage(Ljava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v6
    :try_end_3
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v6, :cond_a

    .line 537
    :try_start_4
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-> msg<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ">["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] sent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getTotalSent()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 537
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 557
    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v14, v1

    move-object v15, v5

    move v3, v6

    move-object/from16 v1, p0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    move v9, v6

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :cond_a
    packed-switch v6, :pswitch_data_0

    :try_start_6
    const-string v2, "Send Message Failed - internal error!"

    goto :goto_4

    :pswitch_0
    const-string v2, "Send Message Failed - Message timed out!"

    goto :goto_4

    :pswitch_1
    const-string v2, "Send Message Failed - Peer Agent is invalid!"

    .line 552
    :goto_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v14

    :goto_5
    move-object v2, v0

    move v9, v3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v14

    :goto_6
    move-object v2, v0

    move v6, v3

    .line 555
    :goto_7
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Send Message Failed"

    invoke-direct {v3, v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    move v9, v6

    .line 557
    :goto_8
    :try_start_8
    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_b
    move-object v1, v14

    .line 564
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    return v3

    :catch_5
    move-exception v0

    move-object v1, v14

    move-object v2, v0

    move v9, v3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v14

    :goto_9
    move-object v2, v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v14

    :goto_a
    move-object v2, v0

    .line 561
    :goto_b
    :try_start_9
    sget-object v3, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Send Message Failed! <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_9

    .line 564
    :goto_c
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw v2

    :pswitch_data_0
    .packed-switch -0x708
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMessageDeliveryStatus(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/accessory/SAAdapter;->sendMessageDeliveryStatus(JII)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 573
    sget-object p1, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ack failed! "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Send Failed"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method checkMexFeature(Lcom/samsung/android/sdk/accessory/SAPeerAgent;)I
    .locals 0

    .line 298
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isActiveFrameworkMexSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x705

    return p0

    :cond_0
    const/4 p0, 0x2

    .line 301
    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->checkFeatureEnabled(I)I

    move-result p0

    return p0
.end method

.method protected abstract onError(Lcom/samsung/android/sdk/accessory/SAPeerAgent;II)V
.end method

.method protected abstract onReceive(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)V
.end method

.method protected abstract onSent(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V
.end method

.method postAsynch(Landroid/os/Bundle;)V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/accessory/SAMessage$MessageCallbackRunnable;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method registerAgent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterMexCallback(Ljava/lang/String;)V

    .line 458
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mMexCallback:Lcom/samsung/android/sdk/accessory/SAMessage$MexCallback;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->registerMexCallback(Ljava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    return-void
.end method

.method registerAgentAsync(Ljava/lang/String;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/accessory/SAMessage$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessory/SAMessage$1;-><init>(Lcom/samsung/android/sdk/accessory/SAMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public secureSend(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 381
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p0

    return p0
.end method

.method public secureSend(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 385
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p0

    return p0
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 339
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p0

    return p0
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/accessory/SAMessage;->sendMessage(Lcom/samsung/android/sdk/accessory/SAPeerAgent;[BZI)I

    move-result p0

    return p0
.end method

.method unregisterAgent()V
    .locals 3

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAMessage;->mAgentId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->unregisterMexCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 468
    sget-object v0, Lcom/samsung/android/sdk/accessory/SAMessage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to un-register Mex callback! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
