.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$HbA1cPercentUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HbA1cPercentUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1019
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "%"

    .line 1020
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$HbA1cPercentUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1021
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$HbA1cPercentUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 1018
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$HbA1cPercentUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 2

    .line 1026
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "mmol/mol"

    .line 1027
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide v0, 0x4025dc28f5c28f5cL    # 10.93

    mul-double/2addr p1, v0

    const-wide v0, 0x4037800000000000L    # 23.5

    sub-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "%"

    .line 1029
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide p1

    .line 1033
    :cond_1
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
