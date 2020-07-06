.class public Lcom/samsung/android/sdk/accessory/SAServiceProfile;
.super Ljava/lang/Object;
.source "SAServiceProfile.java"


# static fields
.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final ROLE_CONSUMER:I = 0x0

.field public static final ROLE_PROVIDER:I = 0x1

.field protected static final SDK_VERSION:Ljava/lang/String; = "SDK_VERSION"

.field public static final SERVICE_LIMIT_ANY:I = 0x0

.field public static final SERVICE_LIMIT_ONE_ACCESSORY:I = 0x1

.field public static final SERVICE_LIMIT_ONE_PEERAGENT:I = 0x2

.field public static final TRANSPORT_TYPE_BLE:I = 0x4

.field public static final TRANSPORT_TYPE_BT:I = 0x1

.field public static final TRANSPORT_TYPE_USB:I = 0x8

.field public static final TRANSPORT_TYPE_WIFI:I = 0x2


# instance fields
.field private isMexSupported:I

.field private isSocketSupported:I

.field private mAppName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRole:Ljava/lang/String;

.field private mServiceChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceImpl:Ljava/lang/String;

.field private mServiceLimit:I

.field private mServiceTimeout:I

.field private mTransportType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;II)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mAppName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mRole:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceImpl:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mVersion:Ljava/lang/String;

    .line 48
    iput p7, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceLimit:I

    .line 49
    iput p8, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceTimeout:I

    .line 50
    iput p9, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mTransportType:I

    .line 51
    iput-object p10, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    .line 52
    iput p11, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isMexSupported:I

    .line 53
    iput p12, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isSocketSupported:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRole()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mRole:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceChannelList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/accessory/SAServiceChannel;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceChannelList:Ljava/util/List;

    return-object p0
.end method

.method public getServiceImpl()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceImpl:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceLimit()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceLimit:I

    return p0
.end method

.method public getServiceTimeout()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mServiceTimeout:I

    return p0
.end method

.method public getTransportType()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mTransportType:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public isMexSupported()Z
    .locals 1

    .line 97
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isMexSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSocketSupported()Z
    .locals 1

    .line 101
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceProfile;->isSocketSupported:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
