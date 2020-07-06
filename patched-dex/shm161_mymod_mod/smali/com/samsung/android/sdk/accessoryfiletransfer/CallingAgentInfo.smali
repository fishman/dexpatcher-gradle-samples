.class public Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;
.super Ljava/lang/Object;
.source "CallingAgentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;
    }
.end annotation


# instance fields
.field private mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

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
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;Landroid/os/HandlerThread;Landroid/os/Handler;Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;",
            "Landroid/os/HandlerThread;",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p5, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    iput-object p4, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    return-void
.end method


# virtual methods
.method getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-object p0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method getHandlerThread()Landroid/os/HandlerThread;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method getLocalCallback()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    return-object p0
.end method

.method getTransactionsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo$TransactionDetails;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mTransactions:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method setEventListener(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mEventListener:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    return-void
.end method

.method setLocalCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    return-void
.end method
