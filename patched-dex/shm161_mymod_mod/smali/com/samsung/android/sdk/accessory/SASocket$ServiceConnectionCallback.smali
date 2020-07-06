.class final Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;
.super Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-direct {p0}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Lcom/samsung/android/sdk/accessory/SASocket$1;)V
    .locals 0

    .line 772
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;-><init>(Lcom/samsung/android/sdk/accessory/SASocket;)V

    return-void
.end method


# virtual methods
.method public final onConnectionLost(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "errorcode"

    .line 775
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "errorcode"

    .line 777
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 778
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 780
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onConnectionLost with no error code!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onConnectionResponse(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "errorcode"

    const/16 v2, 0x500

    .line 787
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-string v1, "connectionId"

    const/4 v2, 0x0

    .line 788
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 789
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SASocket$ServiceConnectionCallback;->this$0:Lcom/samsung/android/sdk/accessory/SASocket;

    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SASocket;->access$900(Lcom/samsung/android/sdk/accessory/SASocket;)Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
