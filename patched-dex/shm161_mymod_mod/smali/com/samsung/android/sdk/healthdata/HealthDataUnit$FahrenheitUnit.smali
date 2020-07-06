.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FahrenheitUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FahrenheitUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 839
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "F"

    .line 840
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FahrenheitUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x3

    .line 841
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FahrenheitUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 838
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$FahrenheitUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 6

    .line 846
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "C"

    .line 847
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    if-eqz p3, :cond_0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    sub-double/2addr p1, v4

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_0
    const-string p3, "F"

    .line 849
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-wide p1

    :cond_1
    const-string p3, "K"

    .line 851
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v4, 0x407cbab851eb851fL    # 459.67

    if-eqz p3, :cond_2

    add-double/2addr p1, v4

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    :cond_2
    const-string p3, "R"

    .line 853
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-double/2addr p1, v4

    return-wide p1

    .line 857
    :cond_3
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
