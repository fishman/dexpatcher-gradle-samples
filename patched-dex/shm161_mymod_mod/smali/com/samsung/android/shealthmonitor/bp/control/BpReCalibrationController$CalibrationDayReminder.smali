.class public final enum Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
.super Ljava/lang/Enum;
.source "BpReCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalibrationDayReminder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

.field public static final enum CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

.field public static final enum CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    const-string v1, "CALIBRATION_2ND_REMINDER"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 44
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    const-string v1, "CALIBRATION_3RD_REMINDER"

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    .line 41
    new-array v0, v2, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_2ND_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
    .locals 5

    .line 60
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->values()[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
    .locals 1

    .line 41
    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;
    .locals 1

    .line 41
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    return-object v0
.end method


# virtual methods
.method public final getInDays()I
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->CALIBRATION_3RD_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->getValue()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->value:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getValue()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$CalibrationDayReminder;->value:I

    return p0
.end method
