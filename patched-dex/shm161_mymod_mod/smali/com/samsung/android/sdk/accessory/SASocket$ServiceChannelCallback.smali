.class final Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;
.super Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceChannelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorcode"

    .line 796
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "errorcode"

    .line 798
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 799
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 801
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onChannelError with no error code!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRead(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "channelId"

    .line 807
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "fragmentIndex"

    .line 808
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 809
    iget-object v3, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v3}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    long-to-int v0, v0

    .line 810
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 811
    iput v2, v3, Landroid/os/Message;->arg2:I

    .line 812
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceChannelCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
