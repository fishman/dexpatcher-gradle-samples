.class public final Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;
.super Ljava/lang/Object;
.source "EcgDeviceInfo.java"


# instance fields
.field private mDayOfUse:Ljava/lang/String;

.field private mDeviceNickname:Ljava/lang/String;

.field private mEndTime:J

.field private mLastCalibrationDate:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "j"    # J
    .param p4, "str2"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDayOfUse:Ljava/lang/String;

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    .line 15
    const-string v0, "deviceNickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "lastCalibrationDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mStartTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public final getMDayOfUse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDayOfUse:Ljava/lang/String;

    return-object v0
.end method

.method public final getMDeviceNickname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getMEndTime()J
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    return-wide v0
.end method

.method public final getMLastCalibrationDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getMStartTime()J
    .registers 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mStartTime:J

    return-wide v0
.end method

.method public final setMDayOfUse(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDayOfUse:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final setMDeviceNickname(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public final setMEndTime(J)V
    .registers 4
    .param p1, "j"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    .line 54
    return-void
.end method

.method public final setMLastCalibrationDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final setMStartTime(J)V
    .registers 4
    .param p1, "j"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mStartTime:J

    .line 46
    return-void
.end method

.method public final updateDayOfUse(J)V
    .registers 10
    .param p1, "j"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    .line 69
    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    .line 70
    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mStartTime:J

    sget-object v4, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "str2":Ljava/lang/String;
    const-string v2, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    .line 79
    .local v0, "str":Ljava/lang/String;
    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mDayOfUse:Ljava/lang/String;

    .line 80
    return-void

    .line 74
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "str2":Ljava/lang/String;
    :cond_33
    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mStartTime:J

    sget-object v4, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "str2":Ljava/lang/String;
    const-string v2, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/ecg/helper/EcgDeviceInfo;->mEndTime:J

    sget-object v4, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "str":Ljava/lang/String;
    const-string v2, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_19
.end method
