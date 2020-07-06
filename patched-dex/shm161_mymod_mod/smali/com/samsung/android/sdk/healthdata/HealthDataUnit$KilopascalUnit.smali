.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$KilopascalUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KilopascalUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1057
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "kPa"

    .line 1058
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$KilopascalUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1059
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$KilopascalUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 1056
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$KilopascalUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 2

    .line 1064
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "mmHg"

    .line 1065
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide v0, 0x401e009d495182aaL    # 7.5006

    mul-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "kPa"

    .line 1067
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide p1

    .line 1071
    :cond_1
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
