.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MicromolesPerLiterUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MicromolesPerLiterUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 977
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "umol/L"

    .line 978
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MicromolesPerLiterUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x4

    .line 979
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MicromolesPerLiterUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 976
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MicromolesPerLiterUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 984
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "mg/dL"

    .line 985
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x403203fd933e35c6L    # 18.015588

    if-eqz p3, :cond_0

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "g/dL"

    .line 987
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    mul-double/2addr p1, v2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "mmol/L"

    .line 989
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    div-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "umol/L"

    .line 991
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-wide p1

    .line 995
    :cond_3
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
