.class public Lcom/samsung/android/sdk/accessory/SAPeerAgent;
.super Ljava/lang/Object;
.source "SAPeerAgent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAgent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAPeerAgent"


# instance fields
.field private final MEX_ERROR_NONE:I

.field private mCompatabilityVersion:I

.field private mContainerId:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mMexSupport:I

.field private mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

.field private mPeerId:Ljava/lang/String;

.field private mProfileVersion:Ljava/lang/String;

.field private mSocketSupport:I

.field private mTransactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 43
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 47
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-string v1, "[SA_SDK]SAPeerAgent"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Peeragent:Framework version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    .line 86
    const-class v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAPeerAccessory;II)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 43
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 47
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 59
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    .line 65
    iput p7, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x700

    .line 43
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->MEX_ERROR_NONE:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 47
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    const/4 v0, 0x4

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v0, 0x5

    .line 75
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    .line 76
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    invoke-interface {p1, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-void
.end method


# virtual methods
.method checkFeatureEnabled(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 211
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 208
    :pswitch_0
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    goto :goto_0

    .line 199
    :pswitch_1
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x700

    goto :goto_0

    .line 201
    :cond_0
    iget p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p0, 0x704

    goto :goto_0

    .line 203
    :cond_1
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    if-nez p0, :cond_2

    const/16 p0, 0x703

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 226
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    if-eqz v1, :cond_6

    .line 227
    check-cast p1, Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "[SA_SDK]SAPeerAgent"

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid peerAgent instance.Peer ID - this:null PeerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[SA_SDK]SAPeerAgent"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Peer ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getPeerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string p0, "[SA_SDK]SAPeerAgent"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid peerAgent instance.Container ID - this:null PeerAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "[SA_SDK]SAPeerAgent"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Container ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getContainerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 251
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "[SA_SDK]SAPeerAgent"

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid peerAgent instance.Accessory ID - this:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " PeerAgent:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getAccessoryId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public getAccessory()Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    return-object p0
.end method

.method public getAccessoryId()J
    .locals 2

    .line 177
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method getCompatibilityVersion()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    return p0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    return-object p0
.end method

.method getContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getContent()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getEncryptionPaddingLength()I
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getEncryptionPaddingLength()I

    move-result p0

    return p0
.end method

.method public getMaxAllowedDataSize()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x100000

    return p0
.end method

.method public getMaxAllowedMessageSize()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getApduSize()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x100000

    return p0
.end method

.method getMxduSize()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 304
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getMxduSize()I

    move-result p0

    return p0

    :cond_0
    const p0, 0xfff4

    return p0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileVersion()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    return-object p0
.end method

.method getSsduSize()I
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getSsduSize()I

    move-result p0

    return p0

    :cond_0
    const p0, 0xfffa

    return p0
.end method

.method getTransactionId()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 267
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    .line 269
    invoke-virtual {v1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v1

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->getId()J

    move-result-wide v3

    const/16 p0, 0x20

    ushr-long/2addr v3, p0

    xor-long/2addr v1, v3

    long-to-int v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 190
    :pswitch_0
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    .line 188
    :pswitch_1
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setCompatibilityVersion(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    return-void
.end method

.method setTransactionId(J)V
    .locals 0

    .line 311
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mTransactionId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PeerAgent - id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "containerId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendlyName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Profile Version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MexSupport:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SocketSupport:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x9

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mProfileVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mPeerAccessory:Lcom/samsung/android/sdk/accessory/SAPeerAccessory;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const-string p2, "[SA_SDK]SAPeerAgent"

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCompatibilityVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    if-nez p2, :cond_2

    .line 283
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->getActiveFrameworkVersion()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 284
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMexSupported()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isActiveFrameworkMexSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 285
    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 288
    :cond_2
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mCompatabilityVersion:I

    if-lt p2, v0, :cond_3

    .line 289
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mMexSupport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAgent;->mSocketSupport:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    return-void
.end method
