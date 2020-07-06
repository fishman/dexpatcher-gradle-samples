.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "CalibrationConfigDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)V
    .locals 2

    .line 43
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getRefSystolic()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 44
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getRefDiastolic()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 45
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getFeature()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 46
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getFeature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x4

    .line 50
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getHeartRate()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 51
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_1

    .line 53
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 57
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_2

    .line 58
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_3

    .line 63
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x9

    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xa

    .line 68
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getStartTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xb

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xc

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getComment()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    if-nez p0, :cond_4

    .line 72
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    return-void

    .line 74
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `CalibrationConfig`(`ref_systolic`,`ref_diastolic`,`feature`,`hr`,`mId`,`datauuid`,`deviceuuid`,`pkg_name`,`create_time`,`start_time`,`update_time`,`time_offset`,`comment`) VALUES (?,?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object p0
.end method
