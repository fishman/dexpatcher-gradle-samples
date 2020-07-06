.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FootUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FootUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "ft"

    .line 535
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FootUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x1

    .line 536
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FootUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FootUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 541
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "cm"

    .line 542
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x400a3f28fca3f17aL    # 3.280839895013

    if-eqz p3, :cond_0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "ft"

    .line 544
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-wide p1

    :cond_1
    const-string p3, "in"

    .line 546
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "m"

    .line 548
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    const-string p3, "mm"

    .line 550
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_4

    div-double/2addr p1, v0

    mul-double/2addr p1, v2

    return-wide p1

    :cond_4
    const-string p3, "mi"

    .line 552
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-wide v0, 0x3f28d301368f47d7L    # 1.893939E-4

    mul-double/2addr p1, v0

    return-wide p1

    :cond_5
    const-string p3, "km"

    .line 554
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    div-double/2addr p1, v0

    div-double/2addr p1, v2

    return-wide p1

    :cond_6
    const-string p3, "yd"

    .line 556
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide v0, 0x3fd55555318abc87L    # 0.3333333

    mul-double/2addr p1, v0

    return-wide p1

    .line 560
    :cond_7
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
