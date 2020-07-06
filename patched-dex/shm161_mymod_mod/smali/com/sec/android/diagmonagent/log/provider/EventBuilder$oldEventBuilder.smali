.class Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldEventBuilder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mRelayClient:Ljava/lang/String;

.field private mRelayVer:Ljava/lang/String;

.field private mResultCode:Ljava/lang/String;

.field private mUiMode:Z

.field private mWifiOnly:Z

.field final synthetic this$0:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;Landroid/content/Context;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->this$0:Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mUiMode:Z

    .line 223
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    const-string p1, ""

    .line 224
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    const-string p1, ""

    .line 225
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    const-string p1, ""

    .line 226
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    const-string p1, ""

    .line 227
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    const-string p1, ""

    .line 228
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mEventId:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClient()Ljava/lang/String;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayClient:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mRelayVer:Ljava/lang/String;

    return-object p0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiOnly()Z
    .locals 0

    .line 255
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    return p0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mResultCode:Ljava/lang/String;

    return-void
.end method

.method public setWifiOnly(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->mWifiOnly:Z

    return-void
.end method
