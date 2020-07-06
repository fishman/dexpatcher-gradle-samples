.class public abstract Lcom/samsung/android/sdk/accessory/SASocket;
.super Ljava/lang/Object;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;,
        Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    }
.end annotation


# static fields
.field public static final CONNECTION_LOST_DEVICE_DETACHED:I = 0x209

.field public static final CONNECTION_LOST_PEER_DISCONNECTED:I = 0x201

.field public static final CONNECTION_LOST_RECEIVE_LIMIT_VIOLATED:I = 0x20b

.field public static final CONNECTION_LOST_RETRANSMISSION_FAILED:I = 0x20a

.field public static final CONNECTION_LOST_UNKNOWN_REASON:I = 0x200

.field private static final DATA_KEY:Ljava/lang/String; = "_"

.field private static final ERROR_CONNECTION_ALREADY_CLOSED:I = 0xa01

.field public static final ERROR_FATAL:I = 0x800

.field private static final ERROR_INVALID_CHANNEL:I = 0xa06

.field private static final ERROR_WRITE_TIMEDOUT:I = 0xa07

.field private static final SOCKET_CONNECTED:I = 0x1

.field private static final SOCKET_DISCONNECTED:I = 0x2

.field private static final SOCKET_FORCE_CLOSED:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

.field private mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

.field private mConnectionId:Ljava/lang/String;

.field private mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

.field private mIsConnected:I

.field private mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SA_SDK]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 206
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SAAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionResponse(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->handleIncomingData(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->handleConnectionLoss(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    return-object p0
.end method

.method private cleanupSocket()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 639
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->quit()V

    return-void
.end method

.method private static getDataKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleConnectionLoss(I)V
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    .line 700
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 702
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 704
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->onServiceConnectionLost(I)V

    .line 705
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->handleServiceConnectionLostErrorCode(I)V

    .line 707
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void
.end method

.method private handleConnectionResponse(Ljava/lang/String;I)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 685
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "connectionId is null so cleaning up"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionFailure(Lcom/samsung/android/sdk/accessory/SAPeerAgent;I)V

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->cleanupSocket()V

    return-void

    .line 689
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 690
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 691
    iget-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-interface {p1, p2, p0}, Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;->onConnectionSuccess(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void

    .line 694
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "Connection status callback not found! Ignoring response"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleIncomingData(IILandroid/os/Bundle;)V
    .locals 10

    .line 734
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 735
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "Ignoring data, socket is not yet established"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.samsung.accessory.adapter.extra.READ_BYTES"

    .line 738
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 740
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "Failed to reassemble! - null data received!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v8, -0x1

    const-string v2, "com.samsung.accessory.adapter.extra.READ_LENGHT"

    .line 744
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v2, "com.samsung.accessory.adapter.extra.READ_OFFSET"

    .line 745
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 746
    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 747
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleIncomingData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result v3

    move-object v2, p3

    move v4, p2

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAReassembler;->assembleData(Ljava/lang/Object;II[BII)I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p2, v1, :cond_2

    .line 752
    :try_start_1
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->getAppData(Ljava/lang/Object;)[B

    move-result-object v1

    .line 753
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/accessory/SASocket;->onReceive(I[B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move v8, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move v8, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 755
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Failed to reassemble!: closing down the connection"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq p2, v9, :cond_4

    .line 763
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 759
    :goto_1
    :try_start_2
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Error in onRead!"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 761
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v8, v9, :cond_4

    .line 763
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    return-void

    :cond_4
    return-void

    .line 761
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SAAdapter;->recycle([B)V

    if-eq v8, v9, :cond_5

    .line 763
    invoke-static {p3}, Lcom/samsung/android/sdk/accessory/SAReassembler;->shutDown(Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method private handleServiceConnectionLostErrorCode(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    .line 728
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnectionLost() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 725
    :sswitch_0
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> ERROR_FATAL"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 719
    :sswitch_1
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_RETRANSMISSION_FAILED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 713
    :sswitch_2
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_DEVICE_DETACHED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 716
    :sswitch_3
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_PEER_DISCONNECTED"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 722
    :sswitch_4
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p1, "onServiceConnectionLost() -> CONNECTION_LOST_UNKNOWN_REASON"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_4
        0x201 -> :sswitch_3
        0x209 -> :sswitch_2
        0x20a -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private requestClose()V
    .locals 3

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SAAdapter;->closeServiceConnection(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa01

    if-ne v0, v1, :cond_0

    .line 611
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "Connection is already closed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 613
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " close requested successfully"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 616
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v1, "Failed to close connection!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized sendData(I[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_0

    .line 358
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 362
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 363
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    .line 365
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    .line 368
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "sendData: data length is 0"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_3
    array-length v0, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 371
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Data too long:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Data Too long! size:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 373
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v8, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v3

    .line 380
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v4

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, v8

    move-object v7, p2

    .line 379
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 382
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 383
    invoke-direct {p0, p1, v8, p2, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 389
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 386
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p3, "Send Blob failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 356
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move v11, p1

    .line 572
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object v12

    .line 574
    :try_start_0
    iget v2, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 575
    iget-object v2, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    iget-object v3, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getBuffer()[B

    move-result-object v5

    .line 576
    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v7

    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v8

    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getOffset()I

    move-result v9

    move v4, v11

    move/from16 v6, p3

    move/from16 v10, p4

    .line 575
    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/sdk/accessory/SAAdapter;->send(Ljava/lang/String;I[BZIIII)I

    move-result v2

    if-nez v2, :cond_0

    .line 578
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data sent ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->getPayloadLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->getTotalSent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    return-void

    :cond_0
    const/16 v3, 0xa01

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    .line 582
    :try_start_1
    iput v2, v1, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 583
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Write failed: Connection closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Write failed:Connection already closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v3, 0xa06

    if-ne v2, v3, :cond_2

    .line 586
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write failed. Attempt to write on invalid channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Write failed. Attempt to write on invalid channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v3, 0xa07

    if-ne v2, v3, :cond_3

    .line 591
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v3, "Write failed: Timed out!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SASocket;->close()V

    .line 593
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Write failed: Timed out!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :cond_3
    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    return-void

    .line 596
    :cond_4
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v2, "Data send failed, connection closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to send, connection closed!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 600
    :try_start_3
    sget-object v2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v3, "Send failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Send Failed"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 603
    :goto_0
    invoke-virtual {v12}, Lcom/samsung/android/sdk/accessory/SAFragment;->recycleBuffer()V

    throw v1
.end method

.method private startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 545
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 546
    new-instance v1, Lcom/samsung/android/sdk/accessory/SASocket$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessory/SASocket$3;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 561
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 562
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 564
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed get Looper for Socket: initiator:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Peer Id:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 567
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method acceptServiceConnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 1

    .line 521
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 522
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 523
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 524
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    iget-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance v0, Lcom/samsung/android/sdk/accessory/SASocket$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/samsung/android/sdk/accessory/SASocket$2;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAAdapter;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    invoke-virtual {p4, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public close()V
    .locals 3

    .line 468
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 469
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 470
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Application requested to close socket for Peer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->requestClose()V

    return-void

    .line 473
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "Connection is already closed"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method forceClose()V
    .locals 3

    .line 624
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 626
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    .line 628
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x800

    .line 629
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 630
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 631
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has been force closed!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    return-object p0
.end method

.method initiateServiceconnection(Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/android/sdk/accessory/SAAdapter;Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;)V
    .locals 0

    .line 479
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 480
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionStatusCallback:Lcom/samsung/android/sdk/accessory/SASocket$ConnectionStatusCallback;

    .line 481
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mAdapter:Lcom/samsung/android/sdk/accessory/SAAdapter;

    .line 482
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/accessory/SASocket;->startSocketHandler(Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    iget-object p3, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mSocketHandler:Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    new-instance p4, Lcom/samsung/android/sdk/accessory/SASocket$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/samsung/android/sdk/accessory/SASocket$1;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 259
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract onError(ILjava/lang/String;I)V
.end method

.method public abstract onReceive(I[B)V
.end method

.method protected abstract onServiceConnectionLost(I)V
.end method

.method public declared-synchronized secureSend(I[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-gez p1, :cond_0

    .line 418
    :try_start_0
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "Send Failed : there is no service channel at the index"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 422
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mIsConnected:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 423
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Secure Send failed. Socket already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    .line 425
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "secureSend: data is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data to send:NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_2
    array-length v0, p2

    if-nez v0, :cond_3

    .line 428
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string p2, "SecureSend: data length is 0"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalaid data length 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_3
    array-length v0, p2

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 431
    sget-object p1, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecureSend:Data too long:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Secure send:Data Too long! size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Max allowed Size:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectedPeer:Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 433
    invoke-virtual {p2}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getMaxAllowedDataSize()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". check SAPeerAgent.getMaxAllowedDataSize()"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket;->mConnectionId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->getDataKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v8, Lcom/samsung/android/sdk/accessory/SAFragmenter;

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/sdk/accessory/SAFragmenter;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :try_start_2
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxHeaderLength()I

    move-result v3

    .line 441
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getFrameworkMaxFooterLength()I

    move-result v4

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getSsduSize()I

    move-result v5

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->getConnectedPeerAgent()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result v6

    move-object v2, v8

    move-object v7, p2

    .line 440
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->configure(IIII[B)V

    .line 444
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->nextFragment()Lcom/samsung/android/sdk/accessory/SAFragment;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 p2, 0x3

    .line 445
    invoke-direct {p0, p1, v8, v1, p2}, Lcom/samsung/android/sdk/accessory/SASocket;->sendInternal(ILcom/samsung/android/sdk/accessory/SAFragmenter;ZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 451
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 448
    :try_start_4
    sget-object p2, Lcom/samsung/android/sdk/accessory/SASocket;->TAG:Ljava/lang/String;

    const-string v0, "Send Blob failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 451
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Lcom/samsung/android/sdk/accessory/SAFragmenter;->shutdown()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 416
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public send(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 301
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method

.method public sendCompressed(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method

.method public sendUncompressed(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/accessory/SASocket;->sendData(I[BI)V

    return-void
.end method
