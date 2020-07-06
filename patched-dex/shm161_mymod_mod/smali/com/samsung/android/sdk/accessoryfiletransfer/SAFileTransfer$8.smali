.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->informIncomingFTRequest(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field final synthetic val$agentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;Ljava/lang/String;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->val$agentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iget-object v1, v1, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->mLocalCallback:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;

    .line 874
    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$900()I

    move-result v2

    .line 873
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->registerCallback(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$IFileTransferCallback;I)Z

    .line 875
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$502(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Z)Z

    .line 876
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->val$agentInfo:Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/CallingAgentInfo;->getEventListener()Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$900()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$8;->val$fileName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onTransferRequested(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 880
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    .line 878
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method
