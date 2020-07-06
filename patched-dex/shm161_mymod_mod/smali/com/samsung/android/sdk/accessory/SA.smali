.class public Lcom/samsung/android/sdk/accessory/SA;
.super Ljava/lang/Object;
.source "SA.java"

# interfaces
.implements Lcom/samsung/android/sdk/SsdkInterface;


# static fields
.field public static final DEVICE_ACCESSORY:I = 0x0

.field public static final SERVICE_FILETRANSFER:I = 0x1

.field public static final SERVICE_MESSAGE:I = 0x2

.field public static final SERVICE_SOCKET:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SA"


# instance fields
.field private mIsCalledinsertLog:Z

.field private mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    return-void
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 1

    const-string p0, "SACU"

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {p1, p0, v0}, Lcom/samsung/android/sdk/accessory/SAGSIMLog;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected clearSdkConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;

    return-void
.end method

.method public getVersionCode()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    const-string p0, "2.6.3"

    return-object p0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 161
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal argument: context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;

    if-nez v0, :cond_2

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    if-nez v0, :cond_1

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SA;->insertLog(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mIsCalledinsertLog:Z

    .line 171
    :cond_1
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SA;->mSdkConfig:Lcom/samsung/android/sdk/accessory/SASdkConfig;
    :try_end_0
    .catch Lcom/samsung/android/sdk/accessory/SAException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "[SA_SDK]SA"

    const-string v0, "Initializing SA"

    .line 177
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->getDefault()Lcom/samsung/android/sdk/accessory/SABufferAccessor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/accessory/SABufferAccessor;->initializePool(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAException;->getErrorCode()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public isFeatureEnabled(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 207
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 204
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result p0

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isFileTransferSupported()Z

    move-result p0

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
