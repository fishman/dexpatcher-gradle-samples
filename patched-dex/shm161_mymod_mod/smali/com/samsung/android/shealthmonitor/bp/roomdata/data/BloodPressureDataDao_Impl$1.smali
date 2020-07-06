.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "BloodPressureDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V
    .locals 2

    .line 44
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getSystolic()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDiastole()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 46
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getHeartRate()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getCalUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_0

    .line 48
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getCalUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x5

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 53
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_1

    .line 54
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_2

    .line 59
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 63
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_3

    .line 64
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x9

    .line 68
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xa

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getStartTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xb

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xc

    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    if-nez p0, :cond_4

    .line 73
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    return-void

    .line 75
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureDataDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR IGNORE INTO `BloodPressureData`(`systolic`,`diastolic`,`hr`,`calibration_datauuid`,`mId`,`datauuid`,`deviceuuid`,`pkg_name`,`create_time`,`start_time`,`update_time`,`time_offset`,`comment`) VALUES (?,?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object p0
.end method
