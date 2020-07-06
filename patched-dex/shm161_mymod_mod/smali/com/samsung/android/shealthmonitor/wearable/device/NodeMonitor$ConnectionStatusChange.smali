.class public Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor$ConnectionStatusChange;
.super Ljava/lang/Object;
.source "NodeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionStatusChange"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.android.samd.bp.wearable.CONNECTION_STATUS_CHANGE"

.field public static final EXTRA_IS_CONNECTED:Ljava/lang/String; = "EXTRA_IS_CONNECTED"

.field public static final EXTRA_NODE:Ljava/lang/String; = "EXTRA_NODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
