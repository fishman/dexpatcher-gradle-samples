.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DiagMonHelper"
.end annotation


# direct methods
.method public static eventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)V
    .locals 2

    .line 262
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    .line 264
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "LEGACY DMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    .line 269
    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$400(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    return-void

    .line 271
    :cond_1
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 272
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "NEW DMA"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 274
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 276
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$500()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 277
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$300()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    .line 279
    :cond_2
    invoke-static {p0, p2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$600(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    return-void

    .line 281
    :cond_3
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string p1, "Wrong Status"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 3

    .line 214
    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez p0, :cond_0

    .line 219
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "DiagMonConfiguration is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 253
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 247
    :pswitch_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 248
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$302(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 249
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$300()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->sendSRObj(Landroid/os/Bundle;)Z

    goto :goto_1

    .line 233
    :pswitch_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 234
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Invalid DiagMonConfiguration"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration is aborted"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    .line 240
    :cond_1
    new-instance p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;-><init>()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    .line 241
    new-instance p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;-><init>()V

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$202(Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;)Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    .line 242
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$200()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    .line 243
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Valid DiagMonConfiguration"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    :pswitch_2
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Not installed DMA"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration is aborted"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    goto :goto_1

    :goto_0
    const-string v1, "Exceptional case"

    .line 253
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "SetConfiguration is aborted"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
