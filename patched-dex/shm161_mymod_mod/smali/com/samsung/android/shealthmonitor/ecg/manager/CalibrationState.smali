.class public abstract enum Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
.super Ljava/lang/Enum;
.source "CalibrationState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum FIRST_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum FIRST_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum FIRST_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum SECOND_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum THIRD_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum THIRD_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

.field public static final enum THIRD_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;


# instance fields
.field private mPreviousStep:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 61
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$2;

    const-string v1, "FIRST_READY"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 105
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$3;

    const-string v1, "FIRST_1_STEP"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 154
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$4;

    const-string v1, "FIRST_2_STEP"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 198
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$5;

    const-string v1, "FIRST_DONE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 251
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$6;

    const-string v1, "SECOND_READY_STEP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 297
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$7;

    const-string v1, "SECOND_1_STEP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 345
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$8;

    const-string v1, "SECOND_2_STEP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 384
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$9;

    const-string v1, "SECOND_DONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 435
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$10;

    const-string v1, "THIRD_READY_STEP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 480
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$11;

    const-string v1, "THIRD_1_STEP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 527
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$12;

    const-string v1, "THIRD_2_STEP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 565
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$13;

    const-string v1, "CALIBRATION_DONE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 18
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->SECOND_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_READY_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_1_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->THIRD_2_STEP:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState$1;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method


# virtual methods
.method public abstract getCalibrationCount()I
.end method

.method public getMPreviousStep()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->mPreviousStep:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    return-object v0
.end method

.method public abstract hasMenu()Z
.end method

.method public abstract initState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
.end method

.method public abstract isPossibleBack()Z
.end method

.method public abstract nextState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
.end method

.method public previousState()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    .registers 3

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->getMPreviousStep()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v1

    if-nez v1, :cond_9

    .line 644
    sget-object v0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 650
    :cond_8
    :goto_8
    return-object v0

    .line 646
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->getMPreviousStep()Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    move-result-object v0

    .line 647
    .local v0, "mPreviousStep2":Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;
    if-nez v0, :cond_8

    .line 648
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_8
.end method

.method public abstract responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.end method

.method public abstract save()Z
.end method

.method public setMPreviousStep(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V
    .registers 2
    .param p1, "calibrationState"    # Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->mPreviousStep:Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .line 635
    return-void
.end method

.method public setPreviousStep(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V
    .registers 3
    .param p1, "calibrationState"    # Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;

    .prologue
    .line 638
    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;->setMPreviousStep(Lcom/samsung/android/shealthmonitor/ecg/manager/CalibrationState;)V

    .line 640
    return-void
.end method
