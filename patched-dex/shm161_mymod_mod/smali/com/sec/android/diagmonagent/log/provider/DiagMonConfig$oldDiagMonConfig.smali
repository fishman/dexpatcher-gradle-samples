.class Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "oldDiagMonConfig"
.end annotation


# instance fields
.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mAuthorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/content/Context;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    const-string p1, ""

    .line 193
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string p1, ""

    .line 194
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    const-string p1, "Samsung Software"

    .line 196
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    const-string p1, ""

    .line 197
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    const-string p1, ""

    .line 198
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mContext:Landroid/content/Context;

    .line 205
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    .line 206
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return p0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthorityList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLogList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setAgree(Ljava/lang/String;)V
    .locals 4

    .line 210
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Y"

    .line 213
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong agreement : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return-void

    .line 223
    :cond_3
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "Empty agreement"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return-void
.end method

.method public setAuthorityList(Ljava/lang/String;)V
    .locals 2

    .line 270
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAuthorityList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.sec.android.log."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLogList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mLogList:Ljava/util/List;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mServiceId:Ljava/lang/String;

    .line 238
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAuthorityList(Ljava/lang/String;)V

    return-void
.end method
