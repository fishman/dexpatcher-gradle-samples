.class public Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;
.super Lcom/github/mikephil/charting/charts/LineChart;
.source "SHealthMonitorLineChart.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - SHealthMonitorLineChart"


# instance fields
.field private formatter:Ljava/text/SimpleDateFormat;

.field private formatterWithDay:Ljava/text/SimpleDateFormat;

.field private mAvgRatio:[[F

.field private mAvgValue:[F

.field private mColorSet:[I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;"
        }
    .end annotation
.end field

.field private mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

.field private mIsNoDataView:Z

.field private mMaxValue:F

.field private mMinValue:F

.field private mPulseMaxValue:F

.field private mPulseMinValue:F

.field private mSamsung600:Landroid/graphics/Typeface;

.field private mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

.field private mTimeValueFormatter:Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

.field private mTimeWithDay:Z

.field private mWithPulse:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 75
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeWithDay:Z

    .line 53
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeValueFormatter:Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    .line 71
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMM dd"

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatterWithDay:Ljava/text/SimpleDateFormat;

    .line 72
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mma"

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x2

    .line 285
    new-array v1, v1, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    aput-object v2, v1, p1

    new-array p1, v0, [F

    fill-array-data p1, :array_1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    .line 370
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    const/4 p1, 0x4

    .line 377
    new-array p1, p1, [Lcom/github/mikephil/charting/data/LineDataSet;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ebced91    # 0.369f
        0x3f2c0831    # 0.672f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ee66666    # 0.45f
        0x3f52b021    # 0.823f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    const/4 p2, 0x3

    .line 44
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeWithDay:Z

    .line 53
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeValueFormatter:Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatterWithDay:Ljava/text/SimpleDateFormat;

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mma"

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatter:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    .line 285
    new-array v0, v0, [[F

    new-array v1, p2, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, p1

    new-array p1, p2, [F

    fill-array-data p1, :array_1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    .line 370
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    const/4 p1, 0x4

    .line 377
    new-array p1, p1, [Lcom/github/mikephil/charting/data/LineDataSet;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ebced91    # 0.369f
        0x3f2c0831    # 0.672f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ee66666    # 0.45f
        0x3f52b021    # 0.823f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    const/4 p2, 0x3

    .line 44
    new-array p3, p2, [F

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeWithDay:Z

    .line 53
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeValueFormatter:Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    .line 71
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatterWithDay:Ljava/text/SimpleDateFormat;

    .line 72
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mma"

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBestDateFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatter:Ljava/text/SimpleDateFormat;

    const/4 p3, 0x2

    .line 285
    new-array p3, p3, [[F

    new-array v0, p2, [F

    fill-array-data v0, :array_0

    aput-object v0, p3, p1

    new-array p1, p2, [F

    fill-array-data p1, :array_1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    .line 370
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    const/4 p1, 0x4

    .line 377
    new-array p1, p1, [Lcom/github/mikephil/charting/data/LineDataSet;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ebced91    # 0.369f
        0x3f2c0831    # 0.672f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ee66666    # 0.45f
        0x3f52b021    # 0.823f
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeWithDay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatter:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->formatterWithDay:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private makAvgLine()V
    .locals 7

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 292
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v6, v6, v2

    aget v6, v6, v3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 294
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v6, v6, v2

    aget v6, v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v0, v2

    .line 295
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v2, v6, v2

    aget v2, v2, v1

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    aput v4, v0, v1

    goto/16 :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v6, v6, v3

    aget v6, v6, v3

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 298
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    iget v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v6, v6, v3

    aget v6, v6, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v0, v2

    goto/16 :goto_0

    .line 301
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v0, v0, v3

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v4, v4, v2

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v4, v4, v2

    aget v4, v4, v2

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v5, v5, v2

    aget v5, v5, v3

    sub-float/2addr v4, v5

    div-float/2addr v0, v4

    .line 303
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v5, v5, v2

    aget v5, v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    .line 304
    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    .line 306
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    .line 307
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v0, v0, v1

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v5, v5, v2

    aget v5, v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v2, v5, v2

    aget v2, v2, v1

    sub-float/2addr v4, v2

    div-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMaxValue:F

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v0, v0, v3

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v4, v4, v2

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v4, v4, v3

    aget v2, v4, v2

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v4, v4, v3

    aget v4, v4, v3

    sub-float/2addr v2, v4

    div-float/2addr v0, v2

    .line 310
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v2, v2, v3

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgRatio:[[F

    aget-object v4, v4, v3

    aget v4, v4, v3

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    .line 311
    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    .line 318
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMaxValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 329
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    :goto_2
    if-ge v3, v1, :cond_4

    const-string v2, "S HealthMonitor - SHealthMonitorLineChart"

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [setData] mAvgValue = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->makeLimitLine(F)Lcom/github/mikephil/charting/components/LimitLine;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    .line 337
    iget-boolean v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v2, :cond_5

    const-string v2, "S HealthMonitor - SHealthMonitorLineChart"

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setData] Pulse mAvgValue = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "S HealthMonitor - SHealthMonitorLineChart"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setData] Pulse max = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMaxValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "S HealthMonitor - SHealthMonitorLineChart"

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [setData] Pulse min = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v1, v2, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->makeLimitLine(F)Lcom/github/mikephil/charting/components/LimitLine;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    :cond_5
    return-void
.end method

.method private makeData(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 180
    iget-object v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const v7, -0x3b864000    # -999.0f

    const/4 v8, -0x1

    if-ge v4, v2, :cond_2

    .line 189
    iget-object v9, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v9}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v9

    if-eq v9, v8, :cond_1

    .line 191
    iget-object v7, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v8, v7, v3

    int-to-float v10, v9

    add-float/2addr v8, v10

    aput v8, v7, v3

    if-ge v6, v9, :cond_0

    move v6, v9

    .line 195
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v9, v4

    invoke-direct {v8, v9, v10}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v10, v4

    invoke-direct {v9, v10, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_3

    .line 202
    iput-boolean v9, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    .line 203
    iget-object v5, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aput v4, v5, v3

    goto :goto_2

    .line 205
    :cond_3
    iget-object v10, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget-object v11, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v11, v11, v3

    int-to-float v5, v5

    div-float/2addr v11, v5

    aput v11, v10, v3

    .line 206
    iput-boolean v3, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    :goto_2
    move v10, v3

    move v11, v10

    const v12, 0x1869f

    :goto_3
    if-ge v10, v2, :cond_6

    .line 212
    iget-object v13, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v13}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v13

    if-eq v13, v8, :cond_5

    .line 214
    iget-object v14, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v15, v14, v9

    int-to-float v5, v13

    add-float/2addr v15, v5

    aput v15, v14, v9

    if-le v12, v13, :cond_4

    move v12, v13

    .line 218
    :cond_4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    new-instance v14, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v15, v10

    invoke-direct {v14, v15, v5}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 221
    :cond_5
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v14, v10

    invoke-direct {v13, v14, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    if-nez v11, :cond_7

    .line 225
    iget-object v5, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aput v4, v5, v9

    .line 226
    iput-boolean v9, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    goto :goto_5

    .line 228
    :cond_7
    iget-object v5, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget-object v10, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v10, v10, v9

    int-to-float v11, v11

    div-float/2addr v10, v11

    aput v10, v5, v9

    .line 229
    iput-boolean v3, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    :goto_5
    move v5, v3

    move v10, v5

    move v11, v10

    const v13, 0x1869f

    :goto_6
    const/4 v14, 0x2

    if-ge v5, v2, :cond_b

    .line 235
    iget-object v15, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {v15}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v15

    if-eq v15, v8, :cond_a

    .line 237
    iget-object v8, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v16, v8, v14

    int-to-float v3, v15

    add-float v16, v16, v3

    aput v16, v8, v14

    if-ge v11, v15, :cond_8

    move v11, v15

    :cond_8
    if-le v13, v15, :cond_9

    move v13, v15

    .line 244
    :cond_9
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v14, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v15, v5

    invoke-direct {v14, v15, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 247
    :cond_a
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v14, v5

    invoke-direct {v8, v14, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v8, -0x1

    goto :goto_6

    :cond_b
    if-nez v10, :cond_c

    .line 251
    iget-object v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aput v4, v1, v14

    .line 252
    iput-boolean v9, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    goto :goto_8

    .line 254
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    iget-object v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    aget v2, v2, v14

    int-to-float v3, v10

    div-float/2addr v2, v3

    aput v2, v1, v14

    const/4 v1, 0x0

    .line 255
    iput-boolean v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    .line 258
    :goto_8
    iget-boolean v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIsNoDataView:Z

    const/16 v2, 0x3c

    const/16 v3, 0x8c

    if-eqz v1, :cond_d

    move v12, v2

    move v13, v12

    move v11, v3

    goto :goto_9

    :cond_d
    move v3, v6

    :goto_9
    if-eqz v3, :cond_f

    if-eqz v12, :cond_f

    int-to-float v1, v3

    .line 266
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    int-to-float v1, v12

    .line 267
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    int-to-float v1, v11

    .line 268
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMaxValue:F

    int-to-float v1, v13

    .line 269
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 274
    iget-boolean v1, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v1, :cond_e

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMaxValue:F

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mPulseMinValue:F

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    return-void

    .line 278
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v0, v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    :cond_f
    return-void
.end method

.method private makeLimitLine(F)Lcom/github/mikephil/charting/components/LimitLine;
    .locals 1

    .line 167
    new-instance p0, Lcom/github/mikephil/charting/components/LimitLine;

    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 168
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    const/high16 p1, 0x40a00000    # 5.0f

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, p1, v0}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    const p1, -0x4c666667

    .line 170
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    return-object p0
.end method

.method private maxShowCount(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetTop()F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetBottom()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setViewPortOffsets(FFFF)V

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    const/4 v1, 0x0

    .line 546
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 547
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    const/4 v1, 0x1

    .line 548
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 549
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 555
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 556
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 557
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setYOffset(F)V

    const v1, -0x6f6f70

    .line 558
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 559
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSamsung600:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setTypeface(Landroid/graphics/Typeface;)V

    .line 560
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeValueFormatter:Lcom/github/mikephil/charting/formatter/IndexAxisValueFormatter;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    const p1, 0x40900831    # 4.501f

    .line 564
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibleXRangeMaximum(F)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibleXRangeMinimum(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40800000    # 4.0f

    .line 567
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibleXRangeMaximum(F)V

    .line 568
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setVisibleXRangeMinimum(F)V

    :goto_0
    const-string p1, "S HealthMonitor - SHealthMonitorLineChart"

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " offset left = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeViewSets(Z)V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 349
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->makAvgLine()V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object p1

    .line 353
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 354
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 357
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public getAvgValue()[F
    .locals 0

    .line 579
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    return-object p0
.end method

.method public initChart(FF[I)V
    .locals 3

    .line 87
    iput p2, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    .line 88
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    .line 89
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mColorSet:[I

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/shealthmonitor/bp/R$font;->samsungone_600:I

    invoke-static {p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSamsung600:Landroid/graphics/Typeface;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setTouchEnabled(Z)V

    const p3, 0x3f666666    # 0.9f

    .line 96
    invoke-virtual {p0, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setDragDecelerationFrictionCoef(F)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setDragEnabled(Z)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setScaleEnabled(Z)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setDrawGridBackground(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setHighlightPerDragEnabled(Z)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setPinchZoom(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/shealthmonitor/bp/R$color;->shealth_monitor_base_gray_background:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setBackgroundColor(I)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->animateX(I)V

    .line 107
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v1

    invoke-direct {p3, p0, v0, v1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorValueRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 109
    new-instance p3, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    invoke-direct {p3, v0, v1, v2}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorMultiLineRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p3

    .line 117
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    const/high16 v0, 0x41300000    # 11.0f

    .line 119
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    const/high16 v0, -0x1000000

    .line 120
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setTextColor(I)V

    .line 121
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 122
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setHorizontalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;)V

    .line 123
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->HORIZONTAL:Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/Legend;->setOrientation(Lcom/github/mikephil/charting/components/Legend$LegendOrientation;)V

    .line 124
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 126
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p3

    .line 130
    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 131
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 132
    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 133
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p3

    const/high16 v0, -0x10000

    .line 145
    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 146
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 147
    iget v0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {p3, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 148
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 149
    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 150
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 151
    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    .line 155
    invoke-static {}, Lcom/github/mikephil/charting/utils/ColorTemplate;->getHoloBlue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 156
    iget p3, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMaxValue:F

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaximum(F)V

    .line 157
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mMinValue:F

    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 159
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 160
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawZeroLine(Z)V

    .line 161
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 162
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 163
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    return-void
.end method

.method final synthetic lambda$setData$0$SHealthMonitorLineChart(Ljava/util/List;I)V
    .locals 0

    .line 530
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->maxShowCount(Ljava/util/List;)V

    int-to-float p1, p2

    .line 531
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->moveViewToX(F)V

    return-void
.end method

.method public declared-synchronized setData(Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    monitor-enter p0

    .line 379
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 380
    iput-object v2, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mData:Ljava/util/List;

    .line 381
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 382
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    const/4 v8, 0x1

    aput v7, v5, v8

    .line 383
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mAvgValue:[F

    const/4 v9, 0x2

    aput v7, v5, v9

    .line 385
    iput-boolean v3, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    .line 387
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v10, v6

    :goto_0
    const/4 v11, 0x3

    if-ge v10, v11, :cond_0

    .line 389
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {v1, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->makeData(Ljava/util/ArrayList;)V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->makAvgLine()V

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v11, v9

    .line 399
    :goto_1
    new-array v3, v11, [Lcom/github/mikephil/charting/data/LineDataSet;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    .line 456
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->fitScreen()V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/LineData;->clearValues()V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->notifyDataSetChanged()V

    :cond_3
    move v10, v6

    :goto_2
    const/16 v11, 0xf4

    const/16 v12, 0x41

    const/high16 v13, 0x40a00000    # 5.0f

    const/16 v14, 0x75

    if-ge v10, v9, :cond_4

    .line 466
    new-instance v15, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/util/List;

    const-string v9, ""

    invoke-direct {v15, v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    aput-object v15, v3, v10

    .line 468
    aget-object v8, v3, v10

    sget-object v9, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 469
    aget-object v8, v3, v10

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 471
    aget-object v8, v3, v10

    iget-object v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mColorSet:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 472
    aget-object v8, v3, v10

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 473
    aget-object v8, v3, v10

    invoke-virtual {v8, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 474
    aget-object v8, v3, v10

    invoke-virtual {v8, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 475
    aget-object v8, v3, v10

    iget-object v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mColorSet:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 476
    aget-object v8, v3, v10

    invoke-static {v11, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 477
    aget-object v8, v3, v10

    invoke-virtual {v8, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 478
    aget-object v8, v3, v10

    iget-object v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 479
    aget-object v8, v3, v10

    invoke-virtual {v8, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    .line 481
    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v9, v3, v10

    aput-object v9, v8, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto :goto_2

    .line 484
    :cond_4
    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    new-instance v9, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string v15, ""

    invoke-direct {v9, v5, v15}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    aput-object v9, v8, v10

    .line 485
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    sget-object v8, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 486
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    const v8, -0x50506

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 488
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mColorSet:[I

    aget v8, v8, v10

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 489
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 490
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    invoke-virtual {v5, v13}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleRadius(F)V

    .line 491
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    invoke-virtual {v5, v12}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 492
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    iget-object v7, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mColorSet:[I

    aget v7, v7, v10

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 493
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    invoke-static {v11, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 494
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 495
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    const/high16 v7, 0x40600000    # 3.5f

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleRadius(F)V

    .line 496
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextSize(F)V

    .line 497
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSamsung600:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTypeface(Landroid/graphics/Typeface;)V

    .line 498
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    const v8, -0xdadadb

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueTextColor(I)V

    .line 499
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    iget-object v9, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mIntFormatter:Lcom/github/mikephil/charting/formatter/ValueFormatter;

    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 500
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    .line 502
    iget-boolean v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mWithPulse:Z

    if-eqz v5, :cond_5

    .line 503
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSets:[Lcom/github/mikephil/charting/data/LineDataSet;

    aget-object v5, v5, v10

    aput-object v5, v3, v10

    .line 506
    :cond_5
    new-instance v5, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v5, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 507
    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineData;->setValueTextColor(I)V

    .line 508
    invoke-virtual {v5, v7}, Lcom/github/mikephil/charting/data/LineData;->setValueTextSize(F)V

    .line 509
    iget-object v3, v1, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mSamsung600:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Lcom/github/mikephil/charting/data/LineData;->setValueTypeface(Landroid/graphics/Typeface;)V

    .line 512
    invoke-virtual {v1, v5}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 514
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->maxShowCount(Ljava/util/List;)V

    int-to-float v3, v4

    .line 516
    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->moveViewToX(F)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineData;->getXMin()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/LineData;->getXMax()F

    move-result v5

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->notifyDataChanged()V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->notifyDataSetChanged()V

    .line 529
    new-instance v3, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;

    invoke-direct {v3, v1, v2, v4}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart$$Lambda$0;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;Ljava/util/List;I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 378
    monitor-exit p0

    throw v2
.end method

.method public setTimeFormatWithDay(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/chart/SHealthMonitorLineChart;->mTimeWithDay:Z

    return-void
.end method
