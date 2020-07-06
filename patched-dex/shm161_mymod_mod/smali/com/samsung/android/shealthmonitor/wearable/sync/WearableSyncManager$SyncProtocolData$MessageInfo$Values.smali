.class Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo$Values;
.super Ljava/lang/Object;
.source "WearableSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/sync/WearableSyncManager$SyncProtocolData$MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Values"
.end annotation


# static fields
.field public static final ACTION_CHECK_STATUS:Ljava/lang/String; = "CHECK_STATUS"

.field public static final ACTION_LOG_DATA:Ljava/lang/String; = "LOG_DATA"

.field public static final ACTION_REQUEST_DATA:Ljava/lang/String; = "REQUEST_DATA"

.field public static final ACTION_SYNC_DATA:Ljava/lang/String; = "SYNC_DATA"

.field public static final RESULT_CAPABILITY_ERROR:Ljava/lang/String; = "CAPABILITY_ERROR"

.field public static final RESULT_IO_ERROR:Ljava/lang/String; = "IO_ERROR"

.field public static final RESULT_OOBE_ERROR:Ljava/lang/String; = "OOBE_ERROR"

.field public static final RESULT_OOM_ERROR:Ljava/lang/String; = "OOM_ERROR"

.field public static final RESULT_PARSING_ERROR:Ljava/lang/String; = "PARSING_ERROR"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final RESULT_TIME_OUT_ERROR:Ljava/lang/String; = "TIME_OUT_ERROR"

.field public static final RESULT_UNKNOWN_ERROR:Ljava/lang/String; = "UNKNOWN_ERROR"

.field public static final RESULT_VALIDATION_ERROR:Ljava/lang/String; = "VALIDATION_ERROR"

.field public static final TYPE_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final TYPE_RESPONSE:Ljava/lang/String; = "RESPONSE"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
