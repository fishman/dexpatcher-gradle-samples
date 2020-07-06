.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;
.super Ljava/lang/Object;
.source "SHealthMonitorMeasurementActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalibrationResult"
.end annotation


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel_calibration"

.field private static final CCD:Ljava/lang/String; = "ccd"

.field private static final DETECT_MOVE:Ljava/lang/String; = "detect_move"

.field private static final ETC:Ljava/lang/String; = "etc"

.field public static final INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

.field private static final LOW_BATTERY:Ljava/lang/String; = "low_battery"

.field private static final LOW_SQI:Ljava/lang/String; = "low_sqi"

.field private static final NONE:Ljava/lang/String; = "none"

.field private static final NOT_ENOUGH_SPACE:Ljava/lang/String; = "not_enough_space"

.field private static final NO_BEAT:Ljava/lang/String; = "nobeat"

.field private static final NO_CONNECTION:Ljava/lang/String; = "no_connection"

.field private static final SQI:Ljava/lang/String; = "sqi"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TIME_OUT:Ljava/lang/String; = "timeout"

.field private static final WEAR_OFF:Ljava/lang/String; = "wearoff"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCANCEL()Ljava/lang/String;
    .locals 0

    .line 56
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->CANCEL:Ljava/lang/String;

    return-object p0
.end method

.method public final getCCD()Ljava/lang/String;
    .locals 0

    .line 60
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->CCD:Ljava/lang/String;

    return-object p0
.end method

.method public final getDETECT_MOVE()Ljava/lang/String;
    .locals 0

    .line 57
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->DETECT_MOVE:Ljava/lang/String;

    return-object p0
.end method

.method public final getETC()Ljava/lang/String;
    .locals 0

    .line 64
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->ETC:Ljava/lang/String;

    return-object p0
.end method

.method public final getLOW_BATTERY()Ljava/lang/String;
    .locals 0

    .line 65
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->LOW_BATTERY:Ljava/lang/String;

    return-object p0
.end method

.method public final getLOW_SQI()Ljava/lang/String;
    .locals 0

    .line 62
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->LOW_SQI:Ljava/lang/String;

    return-object p0
.end method

.method public final getNONE()Ljava/lang/String;
    .locals 0

    .line 54
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->NONE:Ljava/lang/String;

    return-object p0
.end method

.method public final getNOT_ENOUGH_SPACE()Ljava/lang/String;
    .locals 0

    .line 67
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->NOT_ENOUGH_SPACE:Ljava/lang/String;

    return-object p0
.end method

.method public final getNO_BEAT()Ljava/lang/String;
    .locals 0

    .line 58
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->NO_BEAT:Ljava/lang/String;

    return-object p0
.end method

.method public final getNO_CONNECTION()Ljava/lang/String;
    .locals 0

    .line 66
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->NO_CONNECTION:Ljava/lang/String;

    return-object p0
.end method

.method public final getSQI()Ljava/lang/String;
    .locals 0

    .line 61
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->SQI:Ljava/lang/String;

    return-object p0
.end method

.method public final getSUCCESS()Ljava/lang/String;
    .locals 0

    .line 55
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->SUCCESS:Ljava/lang/String;

    return-object p0
.end method

.method public final getTIME_OUT()Ljava/lang/String;
    .locals 0

    .line 63
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->TIME_OUT:Ljava/lang/String;

    return-object p0
.end method

.method public final getWEAR_OFF()Ljava/lang/String;
    .locals 0

    .line 59
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$CalibrationResult;->WEAR_OFF:Ljava/lang/String;

    return-object p0
.end method
