.class public final Lcom/samsung/android/shealthmonitor/util/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;
    }
.end annotation


# static fields
.field public static ENABLE_NAME_TAG:Z = true

.field private static ENABLE_PRIVACY_LOGGER:Z = true

.field private static final LOG_DELIMITER:Ljava/lang/String; = "-----<<<<<"

.field private static NO_SHIP_BINARY:Z = false

.field private static hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger; = null

.field public static final prefix:Ljava/lang/String; = "S HealthMonitor - "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/LOG;->isNoShipBinary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->PRIVACY_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    goto :goto_0

    .line 197
    :cond_0
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/util/LOG;->ENABLE_NAME_TAG:Z

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NOR_NAME_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    .line 200
    :cond_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->NORMAL_LOGGER:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    .line 206
    :goto_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/LOG;->isNoShipBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/shealthmonitor/util/LOG;->NO_SHIP_BINARY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 248
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 232
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 260
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 276
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 264
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThreadName()Ljava/lang/String;
    .locals 4

    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 252
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnableD()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    .line 224
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/util/LOG;->NO_SHIP_BINARY:Z

    if-nez v0, :cond_1

    const-string v0, "S HealthMonitor - "

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnableV()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogTagMismatch"
        }
    .end annotation

    .line 219
    sget-boolean v0, Lcom/samsung/android/shealthmonitor/util/LOG;->NO_SHIP_BINARY:Z

    if-eqz v0, :cond_0

    const-string v0, "S HealthMonitor - "

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLogEnabledForGed()Z
    .locals 3

    .line 310
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "._debug_log_ged_"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static isNoShipBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 300
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "-----<<<<<Was caused by"

    .line 304
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-----<<<<<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->logThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printTrace()V
    .locals 9

    .line 316
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 319
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    const-string v6, "S HealthMonitor - TRACE"

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 228
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 256
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 240
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/LOG;->hLogger:Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG$EcgBpLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
