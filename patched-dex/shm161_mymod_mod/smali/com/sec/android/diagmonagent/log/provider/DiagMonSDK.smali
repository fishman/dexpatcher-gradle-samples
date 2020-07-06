.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
    }
.end annotation


# static fields
.field private static elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field private static instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

.field private static isEnableDefaultConfig:Z

.field private static isEnableUncaughtExceptionLogging:Z

.field private static mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static srObj:Landroid/os/Bundle;

.field private static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.log.diagmonagent/"

    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;)Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Bundle;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 15
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result p0

    return p0
.end method

.method private static checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 475
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 479
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "serviceId"

    .line 480
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.sec.android.log.diagmonagent/"

    .line 482
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v3, "request_deviceid"

    const-string v4, "request_deviceid"

    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0

    :catch_1
    return v0

    :cond_0
    return v1
.end method

.method public static enableUncaughtExceptionLogging(Landroid/content/Context;)V
    .locals 9

    .line 336
    :try_start_0
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    if-eqz v0, :cond_0

    .line 337
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "UncaughtExceptionLogging is already enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_1

    .line 342
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "UncaughtExceptionLogging Can\'t be enabled because Configuration is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 346
    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    if-eqz v0, :cond_2

    .line 347
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "UncaughtException Logging and SetConfiguration can\'t be used at the same time"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_2
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 355
    :cond_3
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 356
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDefaultNetworkMode()Z

    move-result v0

    const-string v2, "D"

    :goto_0
    move v7, v0

    :goto_1
    move-object v8, v2

    goto :goto_3

    .line 358
    :cond_4
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfiguration()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isEnabledDefaultNetwork()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 360
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDefaultNetworkMode()Z

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    .line 365
    :goto_2
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 368
    :cond_6
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "value for uncaughtException will be default"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "D"

    move v7, v1

    goto :goto_1

    .line 373
    :goto_3
    sput-boolean v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    .line 374
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 375
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;

    sget-object v5, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v6, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 378
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to enableUncaughtExceptionLogging"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 2

    .line 196
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid DiagMonConfiguration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLegacyEventBuilder(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid EventBuilder"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 206
    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Valid EventBuilder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v0, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventobjAsIntent(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Report your logs"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 5

    const/4 v0, 0x0

    .line 151
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v1, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventObjAsBundle(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "No EventObject"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 159
    :cond_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v2, :cond_1

    .line 160
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "No Configuration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "You have to set DiagMonConfiguration"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 165
    :cond_1
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid SR object"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 170
    :cond_2
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v1, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateErObj(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Invalid ER object"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 174
    :cond_3
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Valid SR, ER object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Report your logs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "networkMode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getNetworkMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 179
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v3, "event_report"

    const-string v4, "eventReport"

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 180
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getZipPath()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 184
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->removeZipFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public static getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 1

    .line 320
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object v0
.end method

.method public static getElp()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 1

    .line 316
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "605012"

    return-object v0
.end method

.method public static getSDKtype()Ljava/lang/String;
    .locals 1

    const-string v0, "S"

    return-object v0
.end method

.method public static isEnableDefaultConfiguration()Z
    .locals 1

    .line 423
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    return v0
.end method

.method public static sendSRObj(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    .line 288
    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid SR object"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 290
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return v0

    .line 293
    :cond_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Valid SR object"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Request Service Registration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 297
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v3, "register_service"

    const-string v4, "registration"

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 299
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "result"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 3

    .line 30
    :try_start_0
    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 34
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "DiagMonConfiguration is null"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    monitor-exit v0

    return-object v1

    .line 38
    :cond_0
    sget-boolean p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    if-eqz p0, :cond_1

    .line 39
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "You can\'t use setConfiguration with enableDefaultConfiguration"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    monitor-exit v0

    return-object v1

    .line 43
    :cond_1
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 44
    monitor-exit v0

    return-object v1

    :cond_2
    const/4 p0, 0x1

    .line 47
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->toggleConfigurationStatus(Z)V

    .line 48
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 79
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 73
    :pswitch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    .line 74
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object p0

    .line 75
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    goto :goto_1

    .line 58
    :pswitch_1
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 59
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Invalid DiagMonConfiguration"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration is aborted"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    .line 62
    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    .line 66
    :cond_3
    new-instance p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;-><init>()V

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    .line 67
    new-instance p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    .line 68
    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    .line 69
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Valid DiagMonConfiguration"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :pswitch_2
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Not installed DMA"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration is aborted"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    :goto_0
    const-string v1, "Exceptional case"

    .line 79
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SetConfiguration is aborted"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 85
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to setConfiguration"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_2
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static toggleConfigurationStatus(Z)V
    .locals 2

    .line 427
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_0

    .line 428
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "can\'t handle toggleConfigurationStatus"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 434
    sput-boolean v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    .line 435
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setCustomConfigStatus(Z)V

    .line 436
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "Status is chaged to CustomLogging"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_1
    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    .line 440
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setCustomConfigStatus(Z)V

    .line 441
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "Status is chaged to UncaughtException"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
