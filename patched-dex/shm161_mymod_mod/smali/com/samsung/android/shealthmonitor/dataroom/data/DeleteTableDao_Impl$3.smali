.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$3;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.source "DeleteTableDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$3;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getTableName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 100
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 105
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x3

    .line 109
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_2

    .line 111
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 115
    :goto_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_3

    .line 116
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 118
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 120
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_4

    .line 121
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/4 p0, 0x7

    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    .line 126
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getStartTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x9

    .line 127
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xa

    .line 128
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 129
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getComment()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb

    if-nez p0, :cond_5

    .line 130
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 132
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 p0, 0xc

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$3;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR REPLACE `DeleteTable` SET `table_name` = ?,`data_uuid` = ?,`mId` = ?,`datauuid` = ?,`deviceuuid` = ?,`pkg_name` = ?,`create_time` = ?,`start_time` = ?,`update_time` = ?,`time_offset` = ?,`comment` = ? WHERE `mId` = ?"

    return-object p0
.end method
