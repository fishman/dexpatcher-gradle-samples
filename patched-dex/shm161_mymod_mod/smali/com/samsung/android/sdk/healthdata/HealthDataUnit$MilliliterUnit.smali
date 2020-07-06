.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MilliliterUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilliliterUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1097
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "mL"

    .line 1098
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MilliliterUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1099
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MilliliterUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 1096
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$MilliliterUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 2

    .line 1104
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "L"

    .line 1105
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "mL"

    .line 1107
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-wide p1

    :cond_1
    const-string p3, "fl. oz."

    .line 1109
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide v0, 0x3fa15012534d1db4L    # 0.033814022701843

    mul-double/2addr p1, v0

    return-wide p1

    .line 1113
    :cond_2
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
