.class Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;
.super Landroid/os/Handler;
.source "SAAgentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHandler"
.end annotation


# static fields
.field static final CREATE_AGENT:I = 0x1

.field static final DESTROY_AGENT:I = 0x2


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1476
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1491
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1571
    :pswitch_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    .line 1574
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1575
    invoke-static {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2800(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    :cond_0
    const-string p0, "[SA_SDK]SAAgentV2"

    const-string p1, "Stale agent entry. Agent already destroyed. Ignoring..."

    .line 1577
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1493
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;

    .line 1494
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2200(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Landroid/content/Context;

    move-result-object v1

    .line 1495
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2300(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Ljava/lang/String;

    move-result-object v2

    .line 1496
    invoke-static {v0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;->access$2400(Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceCreator;)Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    move-result-object v3

    .line 1497
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1499
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1502
    invoke-static {v4}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2600(Lcom/samsung/android/sdk/accessory/SAAgentV2;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/16 p0, 0xa04

    .line 1505
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class could not be initialized: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Error occurred while releasing agent."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/2addr p1, v5

    .line 1511
    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1512
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1513
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    .line 1514
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    if-eqz v3, :cond_5

    .line 1520
    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    .line 1525
    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/16 p0, 0xa03

    .line 1527
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 1528
    new-array v0, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 1529
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1530
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1558
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2500()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/accessory/SAAgentV2;

    if-nez p1, :cond_4

    .line 1560
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class could not be initialized: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Call super inside constructor."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz v3, :cond_5

    .line 1566
    invoke-interface {v3, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onAgentAvailable(Lcom/samsung/android/sdk/accessory/SAAgentV2;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 1552
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 1553
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception occurred while calling constructor of class: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1556
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_1
    move-exception p1

    .line 1548
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1549
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class instantiation error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Invalid context passed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1544
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 1545
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class constructor not accessible: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1540
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 1541
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class instantiation error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 1536
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/16 p0, 0xa02

    .line 1537
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Constructor with Context argument not found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p0

    .line 1532
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/16 p0, 0xa01

    .line 1533
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Class not found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1556
    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SAAgentV2;->access$2700()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 0

    .line 1480
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAAgentV2$InstanceHandler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    return-void
.end method
