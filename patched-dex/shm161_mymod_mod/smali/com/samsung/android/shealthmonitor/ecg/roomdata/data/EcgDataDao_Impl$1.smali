.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "EcgDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)V
    .registers 11
    .param p1, "supportSQLiteStatement"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "bloodPressureData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getSystolic()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDiastole()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 36
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getHeartRate()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 37
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 38
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_72

    .line 39
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 43
    :goto_32
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7a

    .line 44
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 48
    :goto_3b
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_82

    .line 49
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 53
    :goto_44
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getCreateTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 54
    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getStartTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 55
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUpdateTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 56
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getTimeOffset()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 57
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 58
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 62
    :goto_71
    return-void

    .line 41
    :cond_72
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_32

    .line 46
    :cond_7a
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3b

    .line 51
    :cond_82
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_44

    .line 60
    :cond_8a
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_71
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 28
    check-cast p2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const-string v0, "INSERT OR IGNORE INTO `EcgData`(`systolic`,`diastolic`,`hr`,`mId`,`datauuid`,`deviceuuid`,`pkg_name`,`create_time`,`start_time`,`update_time`,`time_offset`,`comment`) VALUES (?,?,?,nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object v0
.end method
