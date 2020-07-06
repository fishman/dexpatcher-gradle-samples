.class Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$2;
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

    .line 57
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V
    .locals 1

    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 66
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedDataDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `HealthSdkSyncedData` WHERE `datauuid` = ?"

    return-object p0
.end method
