.class public final Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;
.super Ljava/lang/Object;
.source "InformationJsonObject.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mAppVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_version"
    .end annotation
.end field

.field private mBtAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bt_address"
    .end annotation
.end field

.field private mDeviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_name"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mPlatformVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform_version"
    .end annotation
.end field

.field private mTnc:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tnc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mAppVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getBtAddress()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mBtAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlatformVersion()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mPlatformVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final isTnc()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mTnc:Z

    return p0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final setPlatformVersion(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mPlatformVersion:Ljava/lang/String;

    return-void
.end method

.method public final setTnc(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/data/InformationJsonObject;->mTnc:Z

    return-void
.end method
