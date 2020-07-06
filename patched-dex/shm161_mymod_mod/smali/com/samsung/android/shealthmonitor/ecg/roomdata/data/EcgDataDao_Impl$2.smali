.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$2;
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
    .line 64
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$2;->this$0:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)V
    .registers 7
    .param p1, "supportSQLiteStatement"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "bloodPressureData"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->getId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 71
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 64
    check-cast p2, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "DELETE FROM `EcgData` WHERE `mId` = ?"

    return-object v0
.end method
