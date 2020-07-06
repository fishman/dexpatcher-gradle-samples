.class Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$3;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
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
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$3;->this$0:Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)V
    .locals 2

    .line 97
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getRefSystolic()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 98
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getRefDiastolic()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getFeature()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_0

    .line 100
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getFeature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x4

    .line 104
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getHeartRate()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_1

    .line 107
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_2

    .line 112
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_3

    .line 117
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 119
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_3
    const/16 p0, 0x9

    .line 121
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xa

    .line 122
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getStartTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xb

    .line 123
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xc

    .line 124
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getComment()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xd

    if-nez p0, :cond_4

    .line 126
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 128
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 p0, 0xe

    .line 130
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p2, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfigDao_Impl$3;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR REPLACE `CalibrationConfig` SET `ref_systolic` = ?,`ref_diastolic` = ?,`feature` = ?,`hr` = ?,`mId` = ?,`datauuid` = ?,`deviceuuid` = ?,`pkg_name` = ?,`create_time` = ?,`start_time` = ?,`update_time` = ?,`time_offset` = ?,`comment` = ? WHERE `mId` = ?"

    return-object p0
.end method
