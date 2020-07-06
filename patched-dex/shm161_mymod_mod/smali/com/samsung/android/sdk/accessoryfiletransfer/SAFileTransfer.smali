.class public Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;,
        Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SAP_FILE_TRANSFER_REQUESTED:Ljava/lang/String; = "com.samsung.accessory.ftconnection"

.field public static final ERROR_CHANNEL_IO:I = 0x1

.field public static final ERROR_COMMAND_DROPPED:I = 0x3

.field public static final ERROR_CONNECTION_LOST:I = 0x5

.field public static final ERROR_FATAL:I = 0x800

.field public static final ERROR_FILE_IO:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0xc

.field public static final ERROR_PEER_AGENT_BUSY:I = 0x8

.field public static final ERROR_PEER_AGENT_NO_RESPONSE:I = 0x4

.field public static final ERROR_PEER_AGENT_REJECTED:I = 0x9

.field public static final ERROR_REQUEST_NOT_QUEUED:I = -0x1

.field public static final ERROR_SPACE_NOT_AVAILABLE:I = 0xb

.field public static final ERROR_TRANSACTION_NOT_FOUND:I = 0xd

.field private static final FILE_PROVIDER:Ljava/lang/String; = "android.support.v4.content.FileProvider"

.field private static final INTERNAL_FTREQUEST_ACTION:Ljava/lang/String; = "com.samsung.accessory.ftconnection.internal"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAFileTransfer"

.field private static mCurrentTransaction:I

.field private static mRng:Ljava/util/Random;


# instance fields
.field private final FT_CANCEL_TRANS_ID:I

.field private final FT_DEFAULT_TRANS_ID:I

.field private isTransferRequested:Z

.field private mAgentName:Ljava/lang/String;

.field private mCallingAgent:Ljava/lang/Object;

.field private mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mFTReceiver:Landroid/content/BroadcastReceiver;

.field private mFileTransferHandlerThread:Landroid/os/HandlerThread;

.field private mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

.field private mLastGeneratedSeed:J

.field mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

.field private mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

.field private mTransactions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 257
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgent;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 240
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 250
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_DEFAULT_TRANS_ID:I

    const/4 v0, -0x1

    .line 252
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_CANCEL_TRANS_ID:I

    .line 819
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 294
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 297
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez p1, :cond_1

    .line 298
    new-instance p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 300
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    .line 305
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Agent already registered"

    .line 306
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 308
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    if-eqz p1, :cond_2

    .line 309
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 310
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandler()Landroid/os/Handler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 311
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 312
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    :cond_2
    return-void

    .line 292
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FileEventCallback parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SAAgentV2;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 2

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 240
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 250
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_DEFAULT_TRANS_ID:I

    const/4 v0, -0x1

    .line 252
    iput v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->FT_CANCEL_TRANS_ID:I

    .line 819
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$7;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    .line 1000
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$9;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 332
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 336
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez p1, :cond_1

    .line 337
    new-instance p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 339
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    .line 344
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Agent already registered"

    .line 345
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 347
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    if-eqz p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 349
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getHandler()Landroid/os/Handler;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 350
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 351
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V

    .line 352
    iget-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V

    :cond_2
    return-void

    .line 331
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FileEventCallback parameter cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->changeFileName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->handleOnTransferCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->handleOnCancelAllCompletedErrorCode(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 52
    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 52
    sput p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    return p0
.end method

.method private changeFileName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1146
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/"

    .line 1148
    invoke-virtual {p2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 1149
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    .line 1150
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1153
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[SA_SDK]SAFileTransfer"

    .line 1154
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "File successfully renamed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "File rename failed"

    .line 1156
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1160
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "File successfully renamed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_2
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "File rename failed"

    .line 1163
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private checkReceiveParams(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    move v0, v1

    goto/16 :goto_1

    .line 958
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 961
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "checkReceiveParams return false, internal path"

    .line 962
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 965
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string v0, "given path is a directory"

    .line 967
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v3, "/"

    .line 970
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "."

    .line 971
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "No extension provided"

    .line 972
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 975
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_5

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "extension length is 0"

    .line 976
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 979
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 981
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string v2, "Directory does not exist!"

    .line 983
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string v0, "getParentFile() is null "

    .line 986
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 992
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "transactionId already exist"

    .line 993
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_8
    return v0
.end method

.method private checkSource(Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_8

    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkPathPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    const-string v0, "."

    .line 910
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SA_SDK]SAFileTransfer"

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File has a valid extentsion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v0, "file"

    .line 919
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URI scheme is SCHEME_FILE  File Path : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "content"

    .line 923
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "_data"

    .line 925
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 928
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 929
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 931
    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "[SA_SDK]SAFileTransfer"

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI ContentResolver is SCHEME_CONTENT File Path : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 936
    throw p1

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 940
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_4
    :goto_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 945
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File doesnot exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 946
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 947
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File is a directory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 948
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_7

    .line 949
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File length is 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "File is valid !!"

    .line 951
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    .line 914
    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 915
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong file..does not have extension"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 907
    :cond_8
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong file path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getContentURIAuthority()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    .line 803
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x0

    .line 802
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 805
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 809
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 810
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-string v3, "android.support.v4.content.FileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Authority:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object p0, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 888
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    .line 889
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getUniqueId()I
    .locals 4

    .line 897
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 898
    iget-wide v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 899
    iput-wide v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLastGeneratedSeed:J

    .line 900
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 901
    sget-object p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mRng:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method private handleOnCancelAllCompletedErrorCode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelAllCompleted() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onCancelAllCompleted() -> ERROR_TRANSACTION_NOT_FOUND"

    .line 1138
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onCancelAllCompleted() -> ERROR_NOT_SUPPORTED"

    .line 1135
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOnTransferCompletedErrorCode(I)V
    .locals 2

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0x800

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTransferCompleted() error_code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_REJECTED"

    .line 1115
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_BUSY"

    .line 1109
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_CONNECTION_LOST"

    .line 1100
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_PEER_AGENT_NO_RESPONSE"

    .line 1112
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_COMMAND_DROPPED"

    .line 1097
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_5
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_FILE_IO"

    .line 1103
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_6
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_CHANNEL_IO"

    .line 1094
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_7
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_NONE"

    .line 1106
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_REQUEST_NOT_QUEUED"

    .line 1118
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_FATAL"

    .line 1124
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "onTransferCompleted() -> ERROR_SPACE_NOT_AVAILABLE"

    .line 1121
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :goto_0
    const-string v0, "transId"

    const/4 v1, -0x1

    .line 827
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    const-string v0, "agentClass"

    .line 829
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 831
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccessoryPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "peerId"

    .line 832
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "[SA_SDK]SAFileTransfer"

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class now:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p2, "Target agent was cleared. Re-registering"

    .line 836
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.accessory.action.REGISTER_AGENT"

    .line 842
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-nez v1, :cond_2

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "Calling agent was cleared"

    .line 848
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 851
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "[SA_SDK]SAFileTransfer"

    .line 852
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Class name not matched with "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 855
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getCallingAgentInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "AgentInfo is NULL! Re-Registering"

    .line 857
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->register()Z

    goto/16 :goto_0

    .line 862
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "[SA_SDK]SAFileTransfer"

    .line 863
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "callback is not registered for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string p1, "filePath"

    .line 866
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[SA_SDK]SAFileTransfer"

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Informing app of incoming file transfer request on registered callback-tid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private register()Z
    .locals 7

    .line 763
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FileTransferHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    .line 765
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$BackgroundExceptionHandler;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 766
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "FileTransferHandlerThread started"

    .line 767
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    if-eqz v0, :cond_1

    .line 773
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 774
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFileTransferHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    .line 776
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.accessory.ftconnection.internal"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 778
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->register(Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;)V

    .line 779
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$6;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong transaction id used for cancel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$4;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 636
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelAll()V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getDefaultStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccessoryPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "Your service was not found. Please re-register"

    .line 686
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v2, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "Using invalid instance of SAFileTransfer. Please re-register."

    .line 679
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method checkPathPermission(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[SA_SDK]SAFileTransfer"

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkPathPermission calling pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file Path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "/data/data"

    .line 1232
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1233
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public close()V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot close as File Transfer is in progress!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-eqz v0, :cond_3

    const-string v0, "[SA_SDK]SAFileTransfer"

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopFileTransferService() called by : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 746
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 747
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mFTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Could not unregister receiver. Calling context is null"

    .line 749
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    .line 752
    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->unregister(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    .line 757
    iput-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-void

    :cond_3
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string v0, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 759
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isInternalPath(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "/data/data"

    .line 1244
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public receive(ILjava/lang/String;)V
    .locals 8

    .line 493
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 498
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-eq p1, v0, :cond_1

    goto/16 :goto_7

    .line 503
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 504
    iput p1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 505
    iput-object p2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v1, :cond_2

    .line 509
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 513
    invoke-virtual {v1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    .line 516
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v2

    .line 518
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-nez p2, :cond_3

    :try_start_1
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "File path is wrong!!"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    move-object v3, v4

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v3, v4

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v3, v4

    goto/16 :goto_3

    :cond_3
    const-string v3, "[SA_SDK]SAFileTransfer"

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "File :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_temp_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "[SA_SDK]SAFileTransfer"

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Temporary File Created for content URI : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the content URI !"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "temp file deleted successfully "

    .line 532
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "temp file could not be deleted "

    .line 534
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 537
    :cond_5
    iput-object p2, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mSource:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_3

    .line 551
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the File !"

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 547
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the content URI !!"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 543
    :goto_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Cannot create the content URI !"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v2, v4

    :goto_5
    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 555
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 556
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "temp file deleted successfully "

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "temp file could not be deleted "

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    if-nez v2, :cond_9

    .line 563
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 564
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Content URI needs to be implemented for receiving to internal folders. Please refer to sdk documentation for more details"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string v0, "[SA_SDK]SAFileTransfer"

    const-string v1, "Accessory Framework doesn\'t support content URI !!"

    .line 568
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :cond_9
    if-eqz v2, :cond_a

    .line 570
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;

    invoke-direct {v1, p0, p1, p2, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$2;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_b
    :goto_7
    const-string p2, "[SA_SDK]SAFileTransfer"

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TransactionId: Given["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Current ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    .line 501
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong filepath or transaction id used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_8
    const-string p1, "[SA_SDK]SAFileTransfer"

    const-string p2, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 494
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-boolean v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isTransferRequested:Z

    return-void
.end method

.method public reject(I)V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    .line 603
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkReceiveParams(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCurrentTransaction:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    .line 606
    iput p1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    const-string v1, ""

    .line 607
    iput-object v1, v0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$3;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 604
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong transaction id used in reject()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string p0, "[SA_SDK]SAFileTransfer"

    const-string p1, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 600
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public send(Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;)I
    .locals 12

    .line 375
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mCallingAgent:Ljava/lang/Object;

    const/4 v10, -0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    if-nez p1, :cond_1

    .line 381
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PeerAgent cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->checkSource(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getUniqueId()I

    move-result v11

    .line 384
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    if-nez v1, :cond_2

    .line 385
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 389
    invoke-virtual {v1}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->printStackTrace()V

    .line 394
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getFileTransferPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->getContentURIAuthority()Ljava/lang/String;

    move-result-object v3

    .line 396
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mSaft:Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAft;->getcontentURISupport()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    if-nez p2, :cond_3

    :try_start_1
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "File path is wrong!!"

    .line 399
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    const-string v4, "[SA_SDK]SAFileTransfer"

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "File :"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v4, "Cannot create the content URI !"

    .line 406
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 408
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v3, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 417
    :goto_1
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "Cannot create the content URI !! "

    .line 418
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 413
    :goto_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "Cannot create the content URI !"

    .line 414
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v3, v5

    :goto_4
    if-nez v3, :cond_6

    .line 420
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->isInternalPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "content uri needs to be implemented for sending from internal folders.Please check file-transfer sdk documentation for more details"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v3, "FTCore version doesnot support content uri"

    .line 426
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 429
    :cond_6
    new-instance v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;

    invoke-direct {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;-><init>()V

    if-eqz v3, :cond_7

    .line 430
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_5

    :cond_7
    move-object v8, v5

    .line 431
    :goto_5
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->isFTBound()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 434
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mAgentName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    move-object v7, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->sendFile(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_2 .. :try_end_2} :catch_3

    move v10, v3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 439
    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 437
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_6
    const-string v3, "[SA_SDK]SAFileTransfer"

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "received tx from FTCore"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iput v10, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 444
    iput-object p2, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 445
    iget-object v2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    .line 447
    iput v3, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mTransactionId:I

    .line 448
    iput-object p2, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;->mFilePath:Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "[SA_SDK]SAFileTransfer"

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "returning temporary transaction id"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v9, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mHandler:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;

    new-instance v10, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$1;-><init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$FTHandler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    return v11

    :cond_9
    :goto_8
    const-string v1, "[SA_SDK]SAFileTransfer"

    const-string v2, "Using invalid instance of SAFileTransfer(). Please re-register."

    .line 376
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method
