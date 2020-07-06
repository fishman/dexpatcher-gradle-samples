.class public final Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;
.super Ljava/lang/Object;
.source "PdfGeneratorTaskHelper.kt"


# static fields
.field private static final BOTTOM_MARGIN_SIZE:I = 0x54

.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

.field private static final PAGE_ECG_LR_PADDING_SIZE:I = 0x28

.field private static final PAGE_EXTRA_PADDING_SIZE:I = 0x34

.field private static final PAGE_HEIGHT:I = 0x318

.field private static final PAGE_TOP_PADDING_SIZE:I = 0x24

.field private static final PAGE_WIDTH:I = 0x264

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - PdfGenHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->INSTANCE:Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBOTTOM_MARGIN_SIZE()I
    .locals 0

    .line 17
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->BOTTOM_MARGIN_SIZE:I

    return p0
.end method

.method public final getPAGE_ECG_LR_PADDING_SIZE()I
    .locals 0

    .line 19
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->PAGE_ECG_LR_PADDING_SIZE:I

    return p0
.end method

.method public final getPAGE_EXTRA_PADDING_SIZE()I
    .locals 0

    .line 20
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->PAGE_EXTRA_PADDING_SIZE:I

    return p0
.end method

.method public final getPAGE_HEIGHT()I
    .locals 0

    .line 16
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->PAGE_HEIGHT:I

    return p0
.end method

.method public final getPAGE_TOP_PADDING_SIZE()I
    .locals 0

    .line 18
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->PAGE_TOP_PADDING_SIZE:I

    return p0
.end method

.method public final getPAGE_WIDTH()I
    .locals 0

    .line 15
    sget p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->PAGE_WIDTH:I

    return p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 21
    sget-object p0, Lcom/samsung/android/shealthmonitor/helper/pdf/PdfConstants;->TAG:Ljava/lang/String;

    return-object p0
.end method
