.class Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$3;
.super Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.source "HealthSdkSyncedDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$3;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 2

    .line 80
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 81
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 86
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_2

    .line 91
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    .line 95
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getUpdated()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 96
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDeleted()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 97
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_3

    .line 98
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    return-void

    .line 100
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$3;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR REPLACE `HealthSdkSyncedData` SET `datauuid` = ?,`samsung_health_data_uuid` = ?,`sdk_data_type` = ?,`updated` = ?,`deleted` = ? WHERE `datauuid` = ?"

    return-object p0
.end method
