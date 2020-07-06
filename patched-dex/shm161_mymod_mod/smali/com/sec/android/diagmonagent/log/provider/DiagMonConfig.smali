.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.super Ljava/lang/Object;
.source "DiagMonConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    }
.end annotation


# instance fields
.field public globalNetworkMode:Z

.field private isCustomConfig:Z

.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field public mIsDefaultNetwork:Z

.field private mServiceId:Ljava/lang/String;

.field private mServiceVer:Ljava/lang/String;

.field private mTrackingId:Ljava/lang/String;

.field private oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    .line 38
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    .line 39
    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgree()Z

    move-result p0

    return p0

    .line 138
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    return p0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaultNetworkMode()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->globalNetworkMode:Z

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceVer()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceVer:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getTrackingId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mTrackingId:Ljava/lang/String;

    return-object p0
.end method

.method protected isCustomConfiguration()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    return p0
.end method

.method public isEnabledDefaultNetwork()Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mIsDefaultNetwork:Z

    return p0
.end method

.method public setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    .line 103
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "You can\'t use agreement as null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 111
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAgree(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 114
    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->isErrorLogAgreed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mAgreement:Z

    :cond_4
    :goto_0
    return-object p0
.end method

.method protected setCustomConfigStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfig:Z

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mServiceId:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setServiceId(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->oldConf:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setAuthorityList(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
