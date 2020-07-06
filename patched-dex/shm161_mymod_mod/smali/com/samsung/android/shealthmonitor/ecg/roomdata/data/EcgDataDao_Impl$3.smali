.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$3;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
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
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter",
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
    .line 73
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$3;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

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

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getSystolic()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDiastole()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getHeartRate()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 83
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7b

    .line 84
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 88
    :goto_32
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_83

    .line 89
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 93
    :goto_3b
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 94
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 98
    :goto_44
    const/16 v0, 0x9

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getCreateTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 99
    const/16 v0, 0xa

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getStartTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 100
    const/16 v0, 0xb

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUpdateTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 101
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getTimeOffset()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getComment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_93

    .line 103
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 107
    :goto_71
    const/16 v0, 0xe

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 108
    return-void

    .line 86
    :cond_7b
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_32

    .line 91
    :cond_83
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3b

    .line 96
    :cond_8b
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_44

    .line 105
    :cond_93
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_71
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 73
    check-cast p2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$3;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    const-string v0, "UPDATE OR REPLACE `EcgData` SET `systolic` = ?,`diastolic` = ?,`hr` = ?,`mId` = ?,`datauuid` = ?,`deviceuuid` = ?,`pkg_name` = ?,`create_time` = ?,`start_time` = ?,`update_time` = ?,`time_offset` = ?,`comment` = ? WHERE `mId` = ?"

    return-object v0
.end method
