.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$CentimeterUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CentimeterUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 503
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "cm"

    .line 504
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$CentimeterUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x1

    .line 505
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$CentimeterUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$CentimeterUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 510
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "cm"

    .line 511
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    const-string p3, "ft"

    .line 513
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    if-eqz p3, :cond_1

    const-wide v2, 0x400a3f28fca3f17aL    # 3.280839895013

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "in"

    .line 515
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-wide v2, 0x4043af5ebd7af74eL    # 39.37007874016

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "m"

    .line 517
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    const-string p3, "mm"

    .line 519
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_4
    const-string p3, "mi"

    .line 521
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-wide v2, 0x3f445c7079626fb0L    # 6.21371192E-4

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_5
    const-string p3, "km"

    .line 523
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-wide v0, 0x40f86a0000000000L    # 100000.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_6
    const-string p3, "yd"

    .line 525
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide v2, 0x3ff17f70a7189b75L    # 1.09361329338

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    .line 529
    :cond_7
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
