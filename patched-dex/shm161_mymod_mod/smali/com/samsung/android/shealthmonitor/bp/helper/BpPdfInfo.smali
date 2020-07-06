.class public final Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;
.super Ljava/lang/Object;
.source "PdfBpDataMaker.kt"


# instance fields
.field private mBirthDay:Ljava/lang/String;

.field private mBpDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpData;",
            ">;"
        }
    .end annotation
.end field

.field private mBpDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGender:Ljava/lang/String;

.field private mLastCalibrationDateStr:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPeriodDateStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "birthday"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gender"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "periodDateStr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastCalibration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBirthDay:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mGender:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mPeriodDateStr:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mLastCalibrationDateStr:Ljava/lang/String;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDataList:Ljava/util/ArrayList;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDeviceList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const-string p4, ""

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const-string p5, ""

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMBirthDay()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBirthDay:Ljava/lang/String;

    return-object p0
.end method

.method public final getMBpDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpData;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMBpDeviceList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMGender()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public final getMLastCalibrationDateStr()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mLastCalibrationDateStr:Ljava/lang/String;

    return-object p0
.end method

.method public final getMName()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getMPeriodDateStr()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mPeriodDateStr:Ljava/lang/String;

    return-object p0
.end method

.method public final setMBirthDay(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBirthDay:Ljava/lang/String;

    return-void
.end method

.method public final setMBpDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMBpDeviceList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mBpDeviceList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMGender(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mGender:Ljava/lang/String;

    return-void
.end method

.method public final setMLastCalibrationDateStr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mLastCalibrationDateStr:Ljava/lang/String;

    return-void
.end method

.method public final setMName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public final setMPeriodDateStr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->mPeriodDateStr:Ljava/lang/String;

    return-void
.end method
