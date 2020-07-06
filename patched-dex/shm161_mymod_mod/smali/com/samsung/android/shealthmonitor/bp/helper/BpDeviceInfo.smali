.class public final Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;
.super Ljava/lang/Object;
.source "PdfBpDataMaker.kt"


# instance fields
.field private mDayOfUse:Ljava/lang/String;

.field private mDeviceNickname:Ljava/lang/String;

.field private mEndTime:J

.field private mLastCalibrationDate:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    const-string v0, "deviceNickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastCalibrationDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    .line 143
    iput-wide p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mStartTime:J

    const-wide/16 p1, -0x1

    .line 144
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    const-string p1, ""

    .line 145
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDayOfUse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMDayOfUse()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDayOfUse:Ljava/lang/String;

    return-object p0
.end method

.method public final getMDeviceNickname()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getMEndTime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    return-wide v0
.end method

.method public final getMLastCalibrationDate()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    return-object p0
.end method

.method public final getMStartTime()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mStartTime:J

    return-wide v0
.end method

.method public final setMDayOfUse(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDayOfUse:Ljava/lang/String;

    return-void
.end method

.method public final setMDeviceNickname(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDeviceNickname:Ljava/lang/String;

    return-void
.end method

.method public final setMEndTime(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    return-void
.end method

.method public final setMLastCalibrationDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    return-void
.end method

.method public final setMStartTime(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mStartTime:J

    return-void
.end method

.method public final updateDayOfUse(J)V
    .locals 2

    .line 149
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    .line 153
    iget-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 154
    iget-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mStartTime:J

    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mLastCalibrationDate:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_0
    iget-wide p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mStartTime:J

    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mEndTime:J

    sget-object p2, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v0, v1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseDateUtils.getDateTim\u2026tils.Type.DATE_TIME_YEAR)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ~ "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->mDayOfUse:Ljava/lang/String;

    return-void
.end method
