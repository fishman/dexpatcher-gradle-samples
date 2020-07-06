.class public final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->values()[Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepStartView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
