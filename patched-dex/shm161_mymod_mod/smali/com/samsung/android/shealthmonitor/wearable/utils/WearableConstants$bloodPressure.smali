.class public Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$bloodPressure;
.super Ljava/lang/Object;
.source "WearableConstants.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants$SessionMeasurement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/utils/WearableConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bloodPressure"
.end annotation


# static fields
.field public static final DIASTOLIC:Ljava/lang/String; = "diastolic"

.field public static final HEALTH_DATA_TYPE:Ljava/lang/String; = "com.samsung.health.bp"

.field public static final HR:Ljava/lang/String; = "hr"

.field public static final SYSTOLIC:Ljava/lang/String; = "systolic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
