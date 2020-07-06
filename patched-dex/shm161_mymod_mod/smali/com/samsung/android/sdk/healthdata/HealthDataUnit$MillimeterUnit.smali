.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MillimeterUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MillimeterUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 627
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "mm"

    .line 628
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MillimeterUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x1

    .line 629
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MillimeterUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 626
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MillimeterUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 634
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "cm"

    .line 635
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "ft"

    .line 637
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_1

    const-wide v2, 0x400a3f28fca3f17aL    # 3.280839895013

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "in"

    .line 639
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-wide v2, 0x4043af5ebd7af74eL    # 39.37007874016

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "m"

    .line 641
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    const-string p3, "mm"

    .line 643
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-wide p1

    :cond_4
    const-string p3, "mi"

    .line 645
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-wide v2, 0x3f445c7079626fb0L    # 6.21371192E-4

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_5
    const-string p3, "km"

    .line 647
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_6
    const-string p3, "yd"

    .line 649
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide v2, 0x3ff17f70a7189b75L    # 1.09361329338

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    .line 653
    :cond_7
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
