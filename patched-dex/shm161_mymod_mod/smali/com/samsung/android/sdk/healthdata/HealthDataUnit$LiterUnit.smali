.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$LiterUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiterUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1076
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "L"

    .line 1077
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$LiterUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1078
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$LiterUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 1075
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$LiterUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 1083
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "L"

    .line 1084
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    const-string p3, "mL"

    .line 1086
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_1

    mul-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "fl. oz."

    .line 1088
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide v2, 0x3fa15012534d1db4L    # 0.033814022701843

    mul-double/2addr p1, v2

    mul-double/2addr p1, v0

    return-wide p1

    .line 1092
    :cond_2
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
