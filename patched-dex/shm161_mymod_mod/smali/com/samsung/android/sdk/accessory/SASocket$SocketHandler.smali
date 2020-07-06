.class final Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;
.super Landroid/os/Handler;
.source "SASocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SASocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocketHandler"
.end annotation


# static fields
.field static final MESSAGE_CHANNEL_ERROR:I = 0x3

.field static final MESSAGE_CHANNEL_READ:I = 0x2

.field static final MESSAGE_SERVICE_CONNECTION_LOSS:I = 0x1

.field static final MESSAGE_SERVICE_CONNECTION_RESPONSE:I = 0x4


# instance fields
.field mSocket:Lcom/samsung/android/sdk/accessory/SASocket;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/accessory/SASocket;Landroid/os/Looper;)V
    .locals 0

    .line 654
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 655
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    return-void
.end method


# virtual methods
.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    .line 660
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 671
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASocket;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 665
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$700(Lcom/samsung/android/sdk/accessory/SASocket;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    monitor-exit p0

    return-void

    .line 668
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$800(Lcom/samsung/android/sdk/accessory/SASocket;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    .line 662
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/accessory/SASocket;->access$600(Lcom/samsung/android/sdk/accessory/SASocket;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 659
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized quit()V
    .locals 1

    monitor-enter p0

    .line 677
    :try_start_0
    invoke-super {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    .line 678
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SASocket$SocketHandler;->mSocket:Lcom/samsung/android/sdk/accessory/SASocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 676
    monitor-exit p0

    throw v0
.end method
