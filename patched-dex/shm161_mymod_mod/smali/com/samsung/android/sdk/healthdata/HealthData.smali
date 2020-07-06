.class public final Lcom/samsung/android/sdk/healthdata/HealthData;
.super Ljava/lang/Object;
.source "HealthData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBlob:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mDeviceUuid:Ljava/lang/String;

.field private final mInputStream:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

.field private mResultId:Ljava/lang/String;

.field private mStrongReference:Ljava/lang/Object;

.field private mUuid:Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;->assignNewUuid()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mDeviceUuid:Ljava/lang/String;

    .line 100
    sget-object v0, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthData$1;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    .line 83
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    .line 84
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mStrongReference:Ljava/lang/Object;

    return-void
.end method

.method private assignNewUuid()V
    .locals 5

    .line 90
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 92
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    .line 462
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mDeviceUuid:Ljava/lang/String;

    .line 463
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mStrongReference:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mStrongReference:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 469
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mStrongReference:Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 472
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthData;->assignNewUuid()V

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getBlob(Ljava/lang/String;)[B
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->getByteArray(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_2
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public final getBlobKeySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getContentValues()Landroid/content/ContentValues;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public final getDouble(Ljava/lang/String;)D
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 223
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 210
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 309
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    .line 311
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mResultId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/internal/healthdata/StreamUtil;->getInputStream(Lcom/samsung/android/sdk/healthdata/IDataResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getInputStreamKeySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getKeySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getLong(Ljava/lang/String;)J
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 239
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getSourceDevice()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mDeviceUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 156
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getUuid() is not allowed for read operation. use getString() instead."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public final putBlob(Ljava/lang/String;[B)V
    .locals 3

    if-nez p2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putDouble(Ljava/lang/String;D)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method

.method public final putInputStream(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3

    if-nez p2, :cond_0

    .line 424
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final putNull(Ljava/lang/String;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mBlob:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mInputStream:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setSourceDevice(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mDeviceUuid:Ljava/lang/String;

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mDeviceUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthData;->mValues:Landroid/content/ContentValues;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
