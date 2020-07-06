.class public final Lcom/samsung/android/sdk/accessory/SASdkConfig;
.super Ljava/lang/Object;
.source "SASdkConfig.java"


# static fields
.field public static ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.samsung.accessory"

.field static final ACCESSORY_FRAMEWORK_VERSION_1:I = 0x1

.field public static final ACCESSORY_FRAMEWORK_VERSION_2:I = 0x2

.field public static final ACCESSORY_FRAMEWORK_VERSION_MESSAGE_SERVICE_SUPPORT:I = 0x197

.field public static final ACCESSORY_FRAMEWORK_VERSION_MXDU_SUPPORT:I = 0xcd

.field public static final ACCESSORY_FRAMEWORK_VERSION_PRELOADED:I = 0x141

.field public static final ACCESSORY_FRAMEWORK_VERSION_RECEIVER_RECYCLING_SUPPORT:I = 0x4f

.field public static final ACCESSORY_FRAMEWORK_VERSION_SCS_PEER_ID:I = 0x47

.field public static final ACCESSORY_FRAMEWORK_VERSION_SDK_UPDATE_SUPPORT:I = 0x12a

.field public static final ACCESSORY_FRAMEWORK_VERSION_SENDER_RECYCLING_SUPPORT:I = 0x4b

.field public static final OLD_VERSION_CODE:I = 0x6

.field static final PEER_AGENT_FEATURE_NOT_AVAILABLE:I = 0x0

.field static final PEER_FEATURE_AVAILABLE:I = 0x1

.field static final PEER_FWK_FEATURE_NOT_AVAILABLE:I = 0x2

.field public static final REVISION:Ljava/lang/String; = "5"

.field public static final SDK_VERSION_CODE_1:I = 0x1

.field public static final SDK_VERSION_CODE_2:I = 0x2

.field public static final SDK_VERSION_CODE_3:I = 0x3

.field public static final SDK_VERSION_CODE_4:I = 0x4

.field public static final SDK_VERSION_CODE_5:I = 0x5

.field public static final SDK_VERSION_CODE_6:I = 0x6

.field public static final SDK_VERSION_CODE_7:I = 0x7

.field public static final SDK_VERSION_CODE_8:I = 0x8

.field public static final SDK_VERSION_CODE_9:I = 0x9

.field static final STRING_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SASdkConfig"

.field public static final VERSION_CODE:I = 0x9

.field public static final VERSION_NAME:Ljava/lang/String; = "2.6.3"

.field private static sActiveFrameworkVersion:I = 0x1

.field private static sFrameworkMaxFooterLen:I = 0x0

.field private static sFrameworkMaxHeaderLen:I = 0x0

.field private static sFrameworkMaxMsgHeaderLen:I = 0x0

.field private static sFrameworkProcessId:I = 0x0

.field private static sFrameworkSupported:Z = false

.field private static sFrameworkVersion:I = 0x1

.field private static sFrameworkVersionName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/accessory/SAException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 160
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x2

    .line 164
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    .line 167
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersionName:Ljava/lang/String;

    const-string v2, "[SA_SDK]SASdkConfig"

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Accessory Framework:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Accessory SDK:2.6.3"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " r5"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V

    return-void

    :cond_1
    :try_start_1
    const-string p0, "[SA_SDK]SASdkConfig"

    const-string p1, "Accessory Framework Not installed"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "Accessory Framework Not installed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string p0, "[SA_SDK]SASdkConfig"

    const-string p1, "Accessory Framework Not installed"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance p0, Lcom/samsung/android/sdk/accessory/SAException;

    const-string p1, "Accessory Framework Not installed"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/accessory/SAException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method static checkAccessoryPermission(Landroid/content/Context;)Z
    .locals 6

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[SA_SDK]SASdkConfig"

    const-string v2, "Package Manager is null"

    .line 199
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v2, 0x1000

    .line 202
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "[SA_SDK]SASdkConfig"

    const-string v2, "PackageInfo is null"

    .line 204
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 207
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 212
    :goto_0
    array-length v3, p0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    const-string v3, "com.samsung.accessory.permission.ACCESSORY_FRAMEWORK"

    .line 213
    aget-object v5, p0, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_5

    const-string p0, "[SA_SDK]SASdkConfig"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessory service permission not granted for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-string p0, "[SA_SDK]SASdkConfig"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accessory service permission available for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "[SA_SDK]SASdkConfig"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Admin Permission check failed for Package"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private checkIfThinSdkSupported(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 184
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/samsung/accessory/api/ISAFrameworkManagerV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->ACCESSORY_FRAMEWORK_PACKAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 186
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 190
    sput-boolean p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "[SA_SDK]SASdkConfig"

    const-string p1, "Accessory framework does not support thin-sdk"

    .line 188
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getActiveFrameworkVersion()I
    .locals 1

    .line 273
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    return v0
.end method

.method static getFrameworkMaxFooterLength()I
    .locals 1

    .line 261
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    return v0
.end method

.method static getFrameworkMaxHeaderLength()I
    .locals 1

    .line 249
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    return v0
.end method

.method static getFrameworkMaxMsgHeaderLength()I
    .locals 1

    .line 253
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    return v0
.end method

.method static getFrameworkProcessid()I
    .locals 1

    .line 237
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    return v0
.end method

.method public static getFrameworkVersion()I
    .locals 1

    .line 265
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    return v0
.end method

.method static getStringEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public static getsFrameworkVersionName()Ljava/lang/String;
    .locals 1

    .line 269
    sget-object v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static isActiveFrameworkMexSupported()Z
    .locals 2

    .line 293
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isFileTransferSupported()Z
    .locals 2

    .line 301
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0xda

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isMexSupported()Z
    .locals 2

    .line 289
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0x197

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isMxduSupported()Z
    .locals 2

    .line 297
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkVersion:I

    const/16 v1, 0xcd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNewFTVersionSupported()Z
    .locals 3

    const-string v0, "[SA_SDK]SASdkConfig"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Active F/W version is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    const/16 v1, 0x1a2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static isThinSdkSupported()Z
    .locals 1

    .line 281
    sget-boolean v0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkSupported:Z

    return v0
.end method

.method public static setActiveFrameworkVersion(I)V
    .locals 0

    .line 277
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sActiveFrameworkVersion:I

    return-void
.end method

.method static setFrameworkMaxFooterLength(I)V
    .locals 0

    .line 257
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxFooterLen:I

    return-void
.end method

.method static setFrameworkMaxHeaderLength(I)V
    .locals 0

    .line 241
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxHeaderLen:I

    return-void
.end method

.method static setFrameworkMaxMsgHeaderLength(I)V
    .locals 0

    .line 245
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkMaxMsgHeaderLen:I

    return-void
.end method

.method static setFrameworkProcessId(I)V
    .locals 0

    .line 233
    sput p0, Lcom/samsung/android/sdk/accessory/SASdkConfig;->sFrameworkProcessId:I

    return-void
.end method
