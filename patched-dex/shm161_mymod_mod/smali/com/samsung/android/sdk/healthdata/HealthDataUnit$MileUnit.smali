.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MileUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MileUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 658
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "mi"

    .line 659
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MileUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x1

    .line 660
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MileUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MileUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 665
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "cm"

    .line 666
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x3f445c7079626fb0L    # 6.21371192E-4

    if-eqz p3, :cond_0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "ft"

    .line 668
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-wide v0, 0x3f28d301368f47d7L    # 1.893939E-4

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "in"

    .line 670
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-wide v0, 0x40eef00000000000L    # 63360.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "m"

    .line 672
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    const-string p3, "mm"

    .line 674
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_4

    div-double/2addr p1, v0

    mul-double/2addr p1, v2

    return-wide p1

    :cond_4
    const-string p3, "mi"

    .line 676
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-wide p1

    :cond_5
    const-string p3, "km"

    .line 678
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    div-double/2addr p1, v0

    div-double/2addr p1, v2

    return-wide p1

    :cond_6
    const-string p3, "yd"

    .line 680
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide v0, 0x409b800000000000L    # 1760.0

    mul-double/2addr p1, v0

    return-wide p1

    .line 684
    :cond_7
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
