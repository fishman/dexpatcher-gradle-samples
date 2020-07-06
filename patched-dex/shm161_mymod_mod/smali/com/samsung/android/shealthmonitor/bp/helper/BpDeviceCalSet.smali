.class public final Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;
.super Ljava/lang/Object;
.source "PdfBpDataMaker.kt"


# instance fields
.field private final mCalibrationId:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "calibrationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mDeviceId:Ljava/lang/String;

    .line 101
    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mStartTime:J

    .line 102
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCalibrationId()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMCalibrationId()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMDeviceId()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMStartTime()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mStartTime:J

    return-wide v0
.end method

.method public final getStartTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->mStartTime:J

    return-wide v0
.end method
