.class public final Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;
.super Ljava/lang/Object;
.source "PdfBpDataMaker.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/helper/pdf/PdfDataMakerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/shealthmonitor/helper/pdf/PdfDataMakerInterface<",
        "Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfBpDataMaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfBpDataMaker.kt\ncom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker\n*L\n1#1,164:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final makePdfDataForDisplay(Landroid/content/Context;J)Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;
    .locals 20

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "start_time"

    const-string v7, " ASC"

    move-wide/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getBloodPressureDataSync(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getUserProfile()Lcom/samsung/android/shealthmonitor/data/UserProfile;

    move-result-object v1

    const-string v2, "KR"

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Locale.getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userProfile"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userProfile"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 29
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v2

    const-string v3, "userProfile.dateOfBirth"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v3

    const-string v5, "userProfile.dateOfBirth"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getMonthInt()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    move-result-object v5

    const-string v6, "userProfile.dateOfBirth"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->getDate()I

    move-result v5

    invoke-static {v2, v3, v5}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getTime(III)J

    move-result-wide v2

    .line 30
    sget-object v5, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v2, v3, v5}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/data/UserProfile;->getGender()Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;

    const-string v2, "birthDay"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gender"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 v2, 0x0

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide v5, 0x7fffffffffffffffL

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v8, v2

    move-object v2, v7

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    const-string v10, "bpData"

    .line 42
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v10

    sget-object v12, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_MONTH_DAY:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v14

    .line 43
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v10

    sget-object v12, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v10, v11, v12}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v15

    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDataList()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;

    const-string v12, "dateStr"

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "timeStr"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result v16

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result v17

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result v18

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object v12

    const-string v13, "bpData.comment"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v11

    move-object/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/shealthmonitor/bp/helper/BpData;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 47
    new-instance v2, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v10

    const-string v11, "bpData.deviceUuid"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getCalUuid()Ljava/lang/String;

    move-result-object v13

    const-string v14, "bpData.calUuid"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 48
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_3

    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v8

    .line 57
    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-gez v10, :cond_1

    .line 58
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v5

    goto/16 :goto_2

    .line 64
    :cond_4
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v5, v6, v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v2, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v8, v9, v2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ~ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->setMPeriodDateStr(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;

    .line 72
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getDataSyncByDeviceId(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    move-result-object v3

    .line 73
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->getCalibrationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/shealthmonitor/bp/roomdata/manager/DataRoomBpManager;->getCalibrationConfigDataSync(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    move-result-object v4

    const-string v5, "deviceInfo"

    .line 75
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCapability()[B

    move-result-object v3

    const-string v5, "deviceInfo.capability"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "device_nick_name"

    .line 76
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "calibrationInfo"

    .line 78
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getStartTime()J

    move-result-wide v4

    sget-object v6, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->DATE_TIME_YEAR:Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v5, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;

    const-string v6, "deviceNickname"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->getStartTime()J

    move-result-wide v8

    const-string v6, "calibrationTime"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3, v8, v9, v4}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    if-eqz v7, :cond_5

    .line 82
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceCalSet;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->updateDayOfUse(J)V

    .line 85
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;->getMBpDeviceList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v5

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    const-wide/16 v2, -0x1

    .line 89
    invoke-virtual {v7, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/helper/BpDeviceInfo;->updateDayOfUse(J)V

    :cond_7
    return-object v1
.end method

.method public final bridge synthetic makePdfDataForDisplay(Landroid/content/Context;J)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/helper/PdfBpDataMaker;->makePdfDataForDisplay(Landroid/content/Context;J)Lcom/samsung/android/shealthmonitor/bp/helper/BpPdfInfo;

    move-result-object p0

    return-object p0
.end method
