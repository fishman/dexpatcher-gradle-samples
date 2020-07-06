.class public Lcom/samsung/android/shealthmonitor/util/calendar/CalendarFactory;
.super Ljava/lang/Object;
.source "CalendarFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/GregorianCalendar;
    .locals 2

    .line 20
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 21
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isWeekStartsFromSunday()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 22
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getInstance(III)Ljava/util/GregorianCalendar;
    .locals 1

    .line 52
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 53
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isWeekStartsFromSunday()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 54
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getInstance(J)Ljava/util/GregorianCalendar;
    .locals 1

    .line 65
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 66
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 67
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isWeekStartsFromSunday()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;)Ljava/util/GregorianCalendar;
    .locals 1

    .line 35
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 36
    invoke-static {}, Lcom/samsung/android/shealthmonitor/util/calendar/BaseDateUtils;->isWeekStartsFromSunday()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    return-object v0
.end method
