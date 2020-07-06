.class public final Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;
.super Ljava/lang/Object;
.source "EcgDeviceCalSet.java"


# instance fields
.field private final mCalibrationId:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "j"    # J
    .param p4, "str2"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const-string v0, "calibrationId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mDeviceId:Ljava/lang/String;

    .line 16
    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mStartTime:J

    .line 17
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final getCalibrationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMCalibrationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mCalibrationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMStartTime()J
    .registers 3

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mStartTime:J

    return-wide v0
.end method

.method public final getStartTime()J
    .registers 3

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceCalSet;->mStartTime:J

    return-wide v0
.end method
