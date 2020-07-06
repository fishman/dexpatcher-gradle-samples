.class public Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;
.super Ljava/lang/Object;
.source "BaseDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$RelativeDate;,
        Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;
    }
.end annotation


# static fields
.field public static final DAYS_IN_WEEK:B = 0x7t

.field public static final DAY_IN_MONTH:B = 0x1ft

.field public static final HOURS_IN_DAY:B = 0x18t

.field public static final LAST_DAY_IN_WEEK:B = 0x6t

.field public static final LAST_HOUR_IN_DAY:B = 0x17t

.field public static final LAST_MILLI_IN_SECOND:I = 0x3e7

.field public static final LAST_MINUTE_IN_HOUR:B = 0x3bt

.field public static final LAST_SECOND_IN_MINUTE:B = 0x3bt

.field public static final MILLIS_IN_DAY:I = 0x5265c00

.field public static final MILLIS_IN_HALFDAY:I = 0x2932e00

.field public static final MILLIS_IN_HOUR:I = 0x36ee80

.field public static final MILLIS_IN_MINUTE:I = 0xea60

.field public static final MILLIS_IN_MONTH:J = 0x9fa52400L

.field public static final MILLIS_IN_SECOND:I = 0x3e8

.field public static final MILLIS_IN_WEEK:I = 0x240c8400

.field public static final MINUTES_IN_HOUR:B = 0x3ct

.field public static final MONTH_IN_YEAR:I = 0xc

.field public static final SECONDS_IN_MINUTE:B = 0x3ct

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BaseDateUtils"

.field public static final WEEK_STARTS_FROM_SUNDAY:B

.field public static infoWeekFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areTimesInSamePeriod(JJI)Z
    .locals 0

    .line 843
    invoke-static {p0, p1, p4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfCurrentPeriod(JI)J

    move-result-wide p0

    invoke-static {p2, p3, p4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfCurrentPeriod(JI)J

    move-result-wide p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static calendarDaysDifference(JJ)J
    .locals 3

    .line 1117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1118
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 1121
    invoke-virtual {p0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 1125
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xc

    .line 1126
    invoke-virtual {v0, p3, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 1127
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1128
    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1130
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1131
    invoke-virtual {p0, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1132
    invoke-virtual {p0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 1133
    invoke-virtual {p0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1138
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convertHoursToMillis(I)I
    .locals 0

    .line 830
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertHoursToMinutes(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertMinutesToMillis(I)I

    move-result p0

    return p0
.end method

.method public static convertHoursToMinutes(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static convertIntoDayTime(Ljava/util/Calendar;)F
    .locals 2

    const/16 v0, 0xb

    .line 896
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static convertMillisToHours(I)I
    .locals 0

    .line 758
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertMillisToMinutes(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static convertMillisToMinutes(I)I
    .locals 0

    .line 748
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertMillisToSeconds(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static convertMillisToSeconds(I)I
    .locals 0

    .line 739
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static convertMinutesToHours(I)I
    .locals 0

    .line 785
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static convertMinutesToMillis(I)I
    .locals 0

    .line 821
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertMinutesToSeconds(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertSecondsToMillis(I)I

    move-result p0

    return p0
.end method

.method public static convertMinutesToSeconds(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method public static convertSecondsToHours(I)I
    .locals 0

    .line 776
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertSecondsToMinutes(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->convertMinutesToHours(I)I

    move-result p0

    return p0
.end method

.method public static convertSecondsToMillis(I)I
    .locals 0

    mul-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static convertSecondsToMinutes(I)I
    .locals 0

    .line 767
    div-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method private static formatDateTimeByLocale(Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1349
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;->$SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1353
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static getCalendar(J)Ljava/util/Calendar;
    .locals 2

    .line 1217
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1218
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1219
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static getCalendar(JI)Ljava/util/Calendar;
    .locals 1

    .line 1210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1211
    invoke-static {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getTimeZone(JI)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1212
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static getCountDaysToNow(J)I
    .locals 3

    .line 296
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfYear(J)J

    move-result-wide v0

    .line 298
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 300
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 301
    invoke-virtual {v2, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 302
    invoke-virtual {v2, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 303
    invoke-virtual {v2, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 304
    invoke-virtual {v2, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 306
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getCountMonthsFromStart(J)I
    .locals 1

    .line 281
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    .line 285
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getCountUnitsFromStart(JI)I
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 267
    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getCountMonthsFromStart(J)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentSystemDateFormatType()Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;
    .locals 5

    .line 433
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 434
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    if-eqz v2, :cond_4

    const-string v1, "dd"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYMMDD:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0

    :cond_2
    const-string v1, "MM"

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYDDMM:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0

    .line 448
    :cond_3
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->DDMMYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0

    :cond_4
    const-string v1, "dd"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 453
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->DDMMYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0

    :cond_5
    const-string v1, "MM"

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 455
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->MMDDYYYY:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0

    .line 457
    :cond_6
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;->YYYYMMDD:Lcom/samsung/android/shealthmonitor/util/calendar/DateFormatType;

    return-object v0
.end method

.method public static getCurrentSystemTimeFormatType()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 469
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 470
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 474
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDateInAndroidFormat(J)Ljava/lang/String;
    .locals 1

    .line 318
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 322
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 323
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 325
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateInAndroidFormatWithoutYear(J)Ljava/lang/String;
    .locals 3

    .line 336
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 341
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 342
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[^\\p{Alpha}]*y+[^\\p{Alpha}]*"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateInAndroidFormatWithoutYear(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 355
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 359
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 360
    check-cast p0, Ljava/text/SimpleDateFormat;

    .line 361
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[^\\p{Alpha}]*y+[^\\p{Alpha}]*"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 363
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 365
    :cond_0
    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 367
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateInWorkOutDetailFormat(J)Ljava/lang/String;
    .locals 2

    .line 928
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 929
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateInstance(J)Ljava/util/Date;
    .locals 2

    .line 661
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 663
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 665
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static getDateTime(JILcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;
    .locals 0

    .line 1296
    invoke-static {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getCalendar(JI)Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(Ljava/util/Calendar;Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(JILcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Z)Ljava/lang/String;
    .locals 0

    .line 1309
    invoke-static {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getCalendar(JI)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(Ljava/util/Calendar;Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(JLcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;
    .locals 0

    .line 1284
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getCalendar(J)Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getDateTime(Ljava/util/Calendar;Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(Ljava/util/Calendar;Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string v0, "yyyy"

    .line 1319
    :cond_0
    sget-object v1, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$1;->$SwitchMap$com$samsung$android$shealthmonitor$util$calendar$BaseDateUtils$Type:[I

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1321
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "H"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->setCustomFormat(Ljava/lang/String;)V

    .line 1330
    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getLocalizeFormat(Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getFormattedString(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1332
    invoke-static {p1, p0, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->formatDateTimeByLocale(Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEndOfCurrentPeriod(JI)J
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 692
    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDecade(J)J

    move-result-wide p0

    return-wide p0

    .line 689
    :pswitch_2
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfYear(J)J

    move-result-wide p0

    return-wide p0

    .line 686
    :pswitch_3
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfMonth(J)J

    move-result-wide p0

    return-wide p0

    .line 683
    :pswitch_4
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfWeek(J)J

    move-result-wide p0

    return-wide p0

    .line 680
    :pswitch_5
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDay(J)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEndOfDay(J)J
    .locals 1

    .line 197
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/16 p1, 0x17

    .line 202
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    const/16 p1, 0xc

    .line 203
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 204
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 p1, 0x3e7

    .line 205
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 207
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfDecade(J)J
    .locals 2

    .line 240
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 243
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 244
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 245
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 246
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    const/4 p1, 0x6

    .line 247
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 248
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static getEndOfHour(J)J
    .locals 1

    .line 219
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0x3b

    const/16 p1, 0xc

    .line 224
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 225
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 p1, 0x3e7

    .line 226
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 228
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfMonth(J)J
    .locals 1

    .line 145
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/16 p1, 0x17

    .line 148
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    const/16 p1, 0xc

    .line 149
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 150
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 p1, 0x3e7

    .line 151
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    const/4 p1, 0x2

    .line 152
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->roll(II)V

    const/4 p1, 0x5

    .line 153
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    const/4 p1, -0x1

    .line 154
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->roll(II)V

    .line 156
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfWeek(J)J
    .locals 1

    .line 167
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isWeekStartsFromSunday()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 168
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfWeek(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfWeek(JI)J
    .locals 1

    .line 179
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    .line 181
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    .line 182
    invoke-virtual {v0, p0, p0}, Ljava/util/Calendar;->add(II)V

    const/16 p0, 0x3b

    const/16 p1, 0xc

    .line 183
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 184
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/16 p1, 0x3e7

    .line 185
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 186
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfYear(J)J
    .locals 2

    .line 122
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    const/16 p1, 0x17

    .line 125
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0x3b

    const/16 v1, 0xc

    .line 126
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 127
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    const/16 v1, 0x3e7

    .line 128
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 129
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    const/4 v1, 0x5

    .line 130
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->roll(II)V

    const/4 p0, 0x6

    const/4 p1, -0x1

    .line 132
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->roll(II)V

    .line 134
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndTime(IJ)J
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1517
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDay(J)J

    move-result-wide p0

    return-wide p0

    .line 1514
    :pswitch_0
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfMonth(J)J

    move-result-wide p0

    return-wide p0

    .line 1511
    :pswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfWeek(J)J

    move-result-wide p0

    return-wide p0

    .line 1508
    :pswitch_2
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getEndOfDay(J)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFormattedString(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1336
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1337
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 1338
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizeFormat(Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;)Ljava/lang/String;
    .locals 1

    .line 1343
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils$Type;->getCustomFormat()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLongTimeInAndroidFormat(J)Ljava/lang/String;
    .locals 2

    .line 395
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 398
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd hh:mm:ss.SSS a"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 399
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 401
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStartOfCurrentPeriod(JI)J
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-wide/16 p0, 0x0

    return-wide p0

    :pswitch_0
    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    .line 724
    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDecade(J)J

    move-result-wide p0

    return-wide p0

    .line 721
    :pswitch_2
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfYear(J)J

    move-result-wide p0

    return-wide p0

    .line 718
    :pswitch_3
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfMonth(J)J

    move-result-wide p0

    return-wide p0

    .line 715
    :pswitch_4
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfWeek(J)J

    move-result-wide p0

    return-wide p0

    .line 712
    :pswitch_5
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStartOfDay(J)J
    .locals 1

    .line 521
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 523
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 524
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 525
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 526
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 527
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 528
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfDayForElapsed(JI)J
    .locals 1

    .line 533
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 535
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 536
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 537
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 538
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 539
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    .line 540
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    .line 541
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfDecade(J)J
    .locals 1

    .line 631
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 633
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 634
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 635
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 636
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 637
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    const/4 p1, 0x6

    .line 638
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 639
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 641
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfHour(J)J
    .locals 1

    .line 572
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 574
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xc

    .line 575
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 576
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 577
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 579
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfMonth(J)J
    .locals 1

    .line 611
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 613
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 614
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 615
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 616
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 617
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    const/4 p1, 0x1

    .line 618
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 620
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getStartOfWeek(J)J
    .locals 1

    .line 552
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 554
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 555
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p0

    const/4 p1, 0x7

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 556
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 557
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 558
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 559
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 561
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfWeekFromDay(JI)J
    .locals 1

    .line 503
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    .line 505
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 506
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 507
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 508
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 509
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 511
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfYear(J)J
    .locals 1

    .line 591
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 594
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 595
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 596
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 597
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    const/4 p1, 0x1

    .line 598
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 600
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartTime(IJ)J
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1501
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p0

    return-wide p0

    .line 1498
    :pswitch_0
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfMonth(J)J

    move-result-wide p0

    return-wide p0

    .line 1495
    :pswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfWeek(J)J

    move-result-wide p0

    return-wide p0

    .line 1492
    :pswitch_2
    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->getStartOfDay(J)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStartTimeOfFirstDayOfWeek(J)J
    .locals 5

    .line 1477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    const-string v2, "S HealthMonitor - BaseDateUtils"

    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startDayOfWeek:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-string v4, "SUN"

    goto :goto_0

    :cond_0
    const-string v4, "MON"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    .line 1481
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 1482
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1483
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 1484
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 1485
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1486
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTime(III)J
    .locals 2

    .line 646
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 648
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 649
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    .line 650
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 651
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTimeInAndroidFormat(J)Ljava/lang/String;
    .locals 1

    .line 378
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 381
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 382
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 384
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeInAndroidFormat(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 412
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 415
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 416
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-nez p2, :cond_0

    .line 418
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 420
    :cond_0
    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setNumberFormat(Ljava/text/NumberFormat;)V

    .line 422
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeInApplicationFormat(J)Ljava/lang/String;
    .locals 5

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 489
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    .line 491
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    const-string v4, "0"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, v3, :cond_1

    const-string v1, "0"

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " E"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeWithoutSeconds(J)J
    .locals 1

    .line 939
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x0

    const/16 p1, 0xd

    .line 941
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 942
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 943
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getTimeZone(JI)Ljava/util/TimeZone;
    .locals 3

    .line 1239
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1240
    invoke-virtual {v0, p2}, Ljava/util/TimeZone;->setRawOffset(I)V

    const-string p2, "S HealthMonitor - BaseDateUtils"

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeZone() name - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "S HealthMonitor - BaseDateUtils"

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeZone() DSTSaving - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "S HealthMonitor - BaseDateUtils"

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeZone() offset - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isDateToday(J)Z
    .locals 1

    .line 918
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 919
    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isDateToday(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public static isDateToday(Ljava/util/Date;)Z
    .locals 3

    .line 906
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;->getInstance()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 908
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWeekStartsFromSunday()Z
    .locals 1

    .line 887
    sget v0, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->infoWeekFormat:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static makeItBold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b><font color=#34470b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</font></b>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeItBoldTransparentDateBar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b><font color=#ffffff>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</font></b>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeItGreen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=#34470b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</font>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeItWhiteDateBar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b><font color=#ffffff>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</font></b>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static moveDay(JI)J
    .locals 2

    .line 1535
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1536
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x5

    .line 1537
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 1538
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1539
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1540
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 1541
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 1542
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static moveMonth(JI)J
    .locals 2

    .line 1557
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1558
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x2

    .line 1559
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 1560
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1561
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1562
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 1563
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 1564
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static moveTime(IJI)J
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1530
    invoke-static {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->moveDay(JI)J

    move-result-wide p0

    return-wide p0

    .line 1528
    :pswitch_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->moveMonth(JI)J

    move-result-wide p0

    return-wide p0

    .line 1526
    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->moveWeek(JI)J

    move-result-wide p0

    return-wide p0

    .line 1524
    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->moveDay(JI)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static moveWeek(JI)J
    .locals 2

    .line 1546
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 1547
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x4

    .line 1548
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x0

    const/16 p1, 0xb

    .line 1549
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1550
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1551
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 1552
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 1553
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method
