.class public final Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$Delete;
.super Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$CommonColumns;
.source "WearableDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Delete"
.end annotation


# static fields
.field public static final DATA_UUID:Ljava/lang/String; = "data_uuid"

.field public static final HEALTH_DATA_TYPE:Ljava/lang/String; = "delete_data"

.field public static final TABLE_NAME:Ljava/lang/String; = "table_name"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$Delete;->this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;

    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$CommonColumns;-><init>(Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants;)V

    return-void
.end method
