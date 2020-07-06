.class Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;
.super Ljava/lang/Object;
.source "SAFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->cancelAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

.field final synthetic val$localKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;Ljava/lang/String;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->val$localKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$000(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$100(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->val$localKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransferManager;->cancelAllTransactions(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 696
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onCancelAllCompleted(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 698
    iget-object v0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$600(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;I)V

    .line 699
    iget-object p0, p0, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$5;->this$0:Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;->access$400(Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer;)Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/samsung/android/sdk/accessoryfiletransfer/SAFileTransfer$EventListener;->onCancelAllCompleted(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAException;->printStackTrace()V

    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 702
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method
