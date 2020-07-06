.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$2;
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

    .line 80
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V
    .locals 2

    .line 88
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getId()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p2, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTableDao_Impl$2;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `DeleteTable` WHERE `mId` = ?"

    return-object p0
.end method
