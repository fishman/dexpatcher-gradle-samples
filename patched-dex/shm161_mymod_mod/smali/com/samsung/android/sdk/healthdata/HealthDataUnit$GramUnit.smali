.class Lcom/samsung/android/sdk/healthdata/HealthDataUnit$GramUnit;
.super Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.source "HealthDataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GramUnit"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 752
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;-><init>()V

    const-string v0, "g"

    .line 753
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$GramUnit;->mUnit:Ljava/lang/String;

    const/4 v0, 0x2

    .line 754
    iput v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$GramUnit;->mUnitType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataUnit$1;)V
    .locals 0

    .line 751
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUnit$GramUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public convertTo(DLcom/samsung/android/sdk/healthdata/HealthDataUnit;)D
    .locals 4

    .line 759
    iget-object p0, p3, Lcom/samsung/android/sdk/healthdata/HealthDataUnit;->mUnit:Ljava/lang/String;

    const-string p3, "g"

    .line 760
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    const-string p3, "kg"

    .line 762
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-wide v0, 0x408f400000000000L    # 1000.0

    if-eqz p3, :cond_1

    div-double/2addr p1, v0

    return-wide p1

    :cond_1
    const-string p3, "lb"

    .line 764
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide v2, 0x4001a31098d477bcL    # 2.2046215

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    return-wide p1

    .line 768
    :cond_2
    new-instance p0, Ljava/util/UnknownFormatConversionException;

    const-string p1, "No conversion is defined"

    invoke-direct {p0, p1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
