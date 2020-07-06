.class public final enum Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
.super Ljava/lang/Enum;
.source "BpReCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReCalibrationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_INTRO:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_IN_PROGRESS:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_STATE_INIT_DONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_STATE_NONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

.field public static final enum RE_CALIBRATION_STATE_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;


# instance fields
.field private remainDay:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_NONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    .line 22
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_STATE_INIT_DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_INIT_DONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    .line 23
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_STATE_REMINDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    .line 24
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_STATE_EXCEEDED_TIME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    .line 25
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_IN_PROGRESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_IN_PROGRESS:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    .line 26
    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const-string v1, "RE_CALIBRATION_INTRO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_INTRO:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_NONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_INIT_DONE:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_REMINDER:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_STATE_EXCEEDED_TIME:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_IN_PROGRESS:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->RE_CALIBRATION_INTRO:Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->remainDay:I

    .line 32
    iput p3, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    .locals 1

    .line 19
    const-class v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/control/BpReCalibrationController$ReCalibrationState;->value:I

    return p0
.end method
