.class public final enum Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;
.super Ljava/lang/Enum;
.source "SamsungHealthDataSyncManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkStoreConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

.field public static final enum CONNECTED:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

.field public static final enum CONNECTING:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

.field public static final enum DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

.field public static final enum SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const-string v2, "DISCONNECT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const-string v2, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTING:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const-string v2, "CONNECTED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTED:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const-string v2, "SYNCABLE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->$VALUES:[Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;
    .locals 1

    const-class v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;
    .locals 1

    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->$VALUES:[Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    return-object v0
.end method
