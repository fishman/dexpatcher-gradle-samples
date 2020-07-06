.class public Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$WearableDataSync;
.super Ljava/lang/Object;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WearableDataSync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$WearableDataSync$ResultValue;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_UPDATED:Ljava/lang/String; = "com.samsung.android.shealthmonitor.wearable.DATA_UPDATED"

.field public static final ACTION_RESPONSE_RECEIVED:Ljava/lang/String; = "com.samsung.android.shealthmonitor.wearable.RESPONSE_RECEIVED"

.field public static final EXTRA_INSERTED_DATA_INFO:Ljava/lang/String; = "EXTRA_INSERTED_DATA_INFO"

.field public static final EXTRA_NODE:Ljava/lang/String; = "EXTRA_NODE"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EXTRA_RESULT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
