.class Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
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
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 2

    .line 38
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 39
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-nez p0, :cond_1

    .line 44
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 48
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    if-nez p0, :cond_2

    .line 49
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_2
    const/4 p0, 0x4

    .line 53
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getUpdated()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x5

    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDeleted()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `HealthSdkSyncedData`(`datauuid`,`samsung_health_data_uuid`,`sdk_data_type`,`updated`,`deleted`) VALUES (?,?,?,?,?)"

    return-object p0
.end method
