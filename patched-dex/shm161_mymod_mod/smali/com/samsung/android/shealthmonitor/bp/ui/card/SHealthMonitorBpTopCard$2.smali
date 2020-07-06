.class synthetic Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;
.super Ljava/lang/Object;
.source "SHealthMonitorBpTopCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->values()[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    :try_start_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_IN_PROGRESS:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_INTRO:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/card/SHealthMonitorBpTopCard$2;->$SwitchMap$com$samsung$android$shealthmonitor$bp$control$BpReCalibrationController$ReCalibrationState:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_INIT_DONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
