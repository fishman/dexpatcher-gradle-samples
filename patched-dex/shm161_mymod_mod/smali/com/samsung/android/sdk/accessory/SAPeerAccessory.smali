.class public Lcom/samsung/android/sdk/accessory/SAPeerAccessory;
.super Ljava/lang/Object;
.source "SAPeerAccessory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/accessory/SAPeerAccessory;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_APDU_SIZE:I = 0x100000

.field static final DEFAULT_ENCRYPTION_PADDING_LENGTH:I = 0x0

.field static final DEFAULT_MXDU_SIZE:I = 0xfff4

.field static final DEFAULT_SSDU_SIZE:I = 0xfffa

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAPeerAccesssosry"

.field static final TRANSPORT_ALL:I = 0xff

.field public static final TRANSPORT_BLE:I = 0x4

.field public static final TRANSPORT_BT:I = 0x2

.field public static final TRANSPORT_MOBILE:I = 0x10

.field public static final TRANSPORT_USB:I = 0x8

.field public static final TRANSPORT_WIFI:I = 0x1


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mApduSize:I

.field private mCompatabilityVersion:I

.field private mEncryptionPaddingLength:I

.field private mId:J

.field private mMxduSize:I

.field private mName:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mSsduSize:I

.field private mTransportType:I

.field private mUniqueId:Ljava/lang/String;

.field private mVendorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 183
    iput-wide p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 184
    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 186
    iput p5, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 187
    iput-object p6, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 188
    iput-object p7, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 189
    iput p8, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 190
    iput p9, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 191
    iput p10, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 192
    iput p11, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    .line 193
    iput-object p12, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/accessory/SAPeerAccessory$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    .line 168
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    const/4 v0, 0x1

    .line 169
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    const/4 v0, 0x2

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    const/4 v0, 0x3

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    const/4 v0, 0x4

    .line 172
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    const/4 v0, 0x5

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    const/4 v0, 0x6

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    const/4 v0, 0x7

    .line 175
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    const/16 v0, 0x8

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    const/16 v0, 0x9

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    const/16 v0, 0xa

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAccessoryId()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method getApduSize()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    return p0
.end method

.method getCompatibilityVersion()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    return p0
.end method

.method getContent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    iget-wide v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method getEncryptionPaddingLength()I
    .locals 0

    .line 285
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    return p0
.end method

.method public getId()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    return-wide v0
.end method

.method getMxduSize()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    return-object p0
.end method

.method getSsduSize()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    return p0
.end method

.method public getTransportType()I
    .locals 0

    .line 259
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    return p0
.end method

.method public getVendorId()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    return-object p0
.end method

.method setCompatibilityVersion(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 321
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PeerAccessory - "

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Address:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " TransportType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ProductId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " VendorId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " APDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " SSDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Accessory ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " MXDU:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Encryption padding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x9

    .line 298
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-wide v0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mTransportType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mVendorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mSsduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p2, "[SA_SDK]SAPeerAccesssosry"

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCompatibilityVersion = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/accessory/SASdkConfig;->isMxduSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 311
    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mCompatabilityVersion:I

    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    .line 313
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mMxduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    :cond_1
    :goto_0
    iget p2, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mApduSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAPeerAccessory;->mEncryptionPaddingLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
