.class public Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult$StatusCode;
.super Ljava/lang/Object;
.source "WearableDataConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataConstants$DataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusCode"
.end annotation


# static fields
.field public static final STATUS_FAILED:I = 0x4

.field public static final STATUS_INVALID_INPUT_DATA:I = 0x8

.field public static final STATUS_NO_DATA:I = 0x20

.field public static final STATUS_OUT_OF_SPACE:I = 0x10

.field public static final STATUS_SUCCESSFUL:I = 0x1

.field public static final STATUS_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
