.class public abstract Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;
.super Landroid/os/Binder;
.source "ISAFrameworkManagerV2.java"

# interfaces
.implements Lcom/samsung/accessory/api/ISAFrameworkManagerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.api.ISAFrameworkManagerV2"

.field static final TRANSACTION_acceptServiceConnection:I = 0x7

.field static final TRANSACTION_authenticatePeerAgent:I = 0x5

.field static final TRANSACTION_cleanupAgent:I = 0x13

.field static final TRANSACTION_closeServiceConnection:I = 0xa

.field static final TRANSACTION_findPeerAgents:I = 0x4

.field static final TRANSACTION_getAgentDetails:I = 0xb

.field static final TRANSACTION_getAgentId:I = 0x14

.field static final TRANSACTION_getClientCallback:I = 0xe

.field static final TRANSACTION_getLocalAgentId:I = 0x3

.field static final TRANSACTION_getNetworkConnectionType:I = 0x18

.field static final TRANSACTION_isSocketConnected:I = 0xd

.field static final TRANSACTION_makeFrameworkConnection:I = 0x1

.field static final TRANSACTION_registerComponent:I = 0x2

.field static final TRANSACTION_registerMexCallback:I = 0xf

.field static final TRANSACTION_rejectServiceConnection:I = 0x8

.field static final TRANSACTION_requestServiceConnection:I = 0x6

.field static final TRANSACTION_send:I = 0x9

.field static final TRANSACTION_sendCompressed:I = 0x16

.field static final TRANSACTION_sendMessage:I = 0x11

.field static final TRANSACTION_sendMessageDeliveryStatus:I = 0x12

.field static final TRANSACTION_sendUncompressed:I = 0x15

.field static final TRANSACTION_setNetworkConnectionType:I = 0x17

.field static final TRANSACTION_tearFrameworkConnection:I = 0xc

.field static final TRANSACTION_unregisterMexCallback:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAFrameworkManagerV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    const-string v3, "com.samsung.accessory.api.ISAFrameworkManagerV2"

    const v4, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v1, v4, :cond_d

    const/4 v4, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    .line 469
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 461
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getNetworkConnectionType()I

    move-result v0

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 447
    :pswitch_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISANetworkConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISANetworkConnectionCallback;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->setNetworkConnectionType(JILcom/samsung/accessory/api/ISANetworkConnectionCallback;)I

    move-result v0

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 423
    :pswitch_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v9, v14

    .line 435
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    .line 440
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendCompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 399
    :pswitch_3
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v9, v14

    .line 411
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    .line 416
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendUncompressed(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 385
    :pswitch_4
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentId(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    .line 374
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->cleanupAgent(JLjava/lang/String;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 359
    :pswitch_6
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    move v6, v8

    .line 368
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessageDeliveryStatus(JJII)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 331
    :pswitch_7
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v9, v14

    .line 345
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-wide v1, v3

    move-object v3, v5

    move-object v4, v6

    move-wide v5, v7

    move-object v7, v10

    move v8, v9

    move v9, v11

    move v10, v12

    move v11, v15

    move/from16 v12, v16

    .line 352
    invoke-virtual/range {v0 .. v12}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->sendMessage(JLjava/lang/String;Ljava/lang/String;J[BZIIII)I

    move-result v0

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 320
    :pswitch_8
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->unregisterMexCallback(JLjava/lang/String;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 307
    :pswitch_9
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAMexCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAMexCallback;

    move-result-object v2

    .line 314
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerMexCallback(JLjava/lang/String;Lcom/samsung/accessory/api/ISAMexCallback;)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 291
    :pswitch_a
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getClientCallback(J)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {v0, v13, v14}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v14

    .line 279
    :pswitch_b
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->isSocketConnected(JLjava/lang/String;)Z

    move-result v0

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 269
    :pswitch_c
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->tearFrameworkConnection(J)I

    move-result v0

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 251
    :pswitch_d
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getAgentDetails(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v14

    .line 239
    :pswitch_e
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->closeServiceConnection(JLjava/lang/String;)I

    move-result v0

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 215
    :pswitch_f
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v9, v14

    .line 227
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-wide v1, v3

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    .line 232
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->send(JLjava/lang/String;J[BZIII)I

    move-result v0

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 194
    :pswitch_10
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v4, v1

    .line 207
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-wide v1, v5

    move-wide v5, v7

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->rejectServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;J)I

    move-result v0

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 163
    :pswitch_11
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 170
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v4, v1

    .line 176
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v10

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v11

    move-wide v1, v5

    move-wide v5, v7

    move-object v7, v10

    move-object v8, v11

    .line 181
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->acceptServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;JLcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    .line 184
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 188
    :cond_8
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v14

    .line 140
    :pswitch_12
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v4, v1

    .line 153
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAServiceConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionCallback;

    move-result-object v7

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAServiceChannelCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceChannelCallback;

    move-result-object v8

    move-wide v1, v5

    move-object v5, v7

    move-object v6, v8

    .line 156
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->requestServiceConnection(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAServiceConnectionCallback;Lcom/samsung/accessory/api/ISAServiceChannelCallback;)I

    move-result v0

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 117
    :pswitch_13
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 124
    sget-object v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-object v4, v1

    .line 130
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;

    move-result-object v7

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-wide v1, v5

    move-object v5, v7

    move-wide v6, v8

    .line 133
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->authenticatePeerAgent(JLjava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAgent;Lcom/samsung/accessory/api/ISAPeerAgentAuthCallback;J)I

    move-result v0

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 101
    :pswitch_14
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/accessory/api/ISAPeerAgentCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAPeerAgentCallback;

    move-result-object v8

    move-wide v1, v3

    move-wide v3, v5

    move-object v5, v7

    move-object v6, v8

    .line 110
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->findPeerAgents(JJLjava/lang/String;Lcom/samsung/accessory/api/ISAPeerAgentCallback;)I

    move-result v0

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 83
    :pswitch_15
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->getLocalAgentId(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b

    .line 91
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 95
    :cond_b
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v14

    .line 72
    :pswitch_16
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 77
    invoke-virtual {v0, v3, v4, v1}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->registerComponent(J[B)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    .line 48
    :pswitch_17
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/accessory/api/IDeathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/IDeathCallback;

    move-result-object v4

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;

    move-result-object v6

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/accessory/api/ISAFrameworkManagerV2$Stub;->makeFrameworkConnection(ILjava/lang/String;Lcom/samsung/accessory/api/IDeathCallback;ILcom/samsung/accessory/api/ISAServiceConnectionIndicationCallback;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_c

    .line 62
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 66
    :cond_c
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v14

    .line 43
    :cond_d
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
