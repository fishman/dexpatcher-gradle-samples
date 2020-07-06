.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$InchUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InchUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "in"

    .line 566
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$InchUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x1

    .line 567
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$InchUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$InchUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 572
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "cm"

    .line 573
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x4043af5ebd7af74eL    # 39.37007874016

    if-eqz p3, :cond_0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "ft"

    .line 575
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "in"

    .line 577
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-wide p1

    :cond_2
    const-string p3, "m"

    .line 579
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    div-double/2addr p1, v0

    return-wide p1

    :cond_3
    const-string p3, "mm"

    .line 581
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_4

    div-double/2addr p1, v0

    mul-double/2addr p1, v2

    return-wide p1

    :cond_4
    const-string p3, "mi"

    .line 583
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-wide v0, 0x40eef00000000000L    # 63360.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_5
    const-string p3, "km"

    .line 585
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    div-double/2addr p1, v0

    div-double/2addr p1, v2

    return-wide p1

    :cond_6
    const-string p3, "yd"

    .line 587
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    div-double/2addr p1, v0

    return-wide p1

    .line 591
    :cond_7
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
