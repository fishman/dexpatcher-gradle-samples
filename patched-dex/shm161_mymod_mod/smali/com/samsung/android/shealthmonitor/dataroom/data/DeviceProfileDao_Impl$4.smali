.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$4;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$4;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V
    .locals 2

    .line 185
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 186
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 190
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getModel()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 191
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getModel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 195
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_2

    .line 196
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 198
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getManufacturer()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    .line 200
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceGroup()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 201
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getConnectivityType()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x6

    .line 202
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceType()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 203
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getFixedName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    if-nez p0, :cond_3

    .line 204
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 206
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getFixedName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 208
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCapability()[B

    move-result-object p0

    const/16 v0, 0x8

    if-nez p0, :cond_4

    .line 209
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 211
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCapability()[B

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_4
    const/16 p0, 0x9

    .line 213
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 214
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getUuid()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    if-nez p0, :cond_5

    .line 215
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 217
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 219
    :goto_5
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb

    if-nez p0, :cond_6

    .line 220
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 222
    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 224
    :goto_6
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getPkgName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xc

    if-nez p0, :cond_7

    .line 225
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 227
    :cond_7
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_7
    const/16 p0, 0xd

    .line 229
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCreateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xe

    .line 230
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getStartTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0xf

    .line 231
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getUpdateTime()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x10

    .line 232
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getTimeOffset()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 233
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getComment()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x11

    if-nez p0, :cond_8

    .line 234
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 236
    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getComment()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 p0, 0x12

    .line 238
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$4;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR REPLACE `DeviceProfile` SET `name` = ?,`model` = ?,`manufacturer` = ?,`device_group` = ?,`connectivity_type` = ?,`device_type` = ?,`fixed_name` = ?,`capability` = ?,`mId` = ?,`datauuid` = ?,`deviceuuid` = ?,`pkg_name` = ?,`create_time` = ?,`start_time` = ?,`update_time` = ?,`time_offset` = ?,`comment` = ? WHERE `mId` = ?"

    return-object p0
.end method
