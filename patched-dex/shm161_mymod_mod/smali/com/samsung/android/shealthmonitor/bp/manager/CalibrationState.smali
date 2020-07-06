.class public abstract enum Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.super Ljava/lang/Enum;
.source "CalibrationState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$NONE;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_READY;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_1_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_2_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_DONE;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_READY_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_1_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_2_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_DONE;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_READY_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_1_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_2_STEP;,
        Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$CALIBRATION_DONE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum FIRST_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum FIRST_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum NONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum SECOND_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum THIRD_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum THIRD_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

.field public static final enum THIRD_READY_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;


# instance fields
.field private mPreviousStep:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$NONE;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$NONE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_READY;

    const-string v2, "FIRST_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_READY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_READY:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_1_STEP;

    const-string v2, "FIRST_1_STEP"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_1_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_2_STEP;

    const-string v2, "FIRST_2_STEP"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_2_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_DONE;

    const-string v2, "FIRST_DONE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$FIRST_DONE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->FIRST_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_READY_STEP;

    const-string v2, "SECOND_READY_STEP"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_READY_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_READY_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_1_STEP;

    const-string v2, "SECOND_1_STEP"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_1_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_2_STEP;

    const-string v2, "SECOND_2_STEP"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_2_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_DONE;

    const-string v2, "SECOND_DONE"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$SECOND_DONE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->SECOND_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_READY_STEP;

    const-string v2, "THIRD_READY_STEP"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_READY_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->THIRD_READY_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_1_STEP;

    const-string v2, "THIRD_1_STEP"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_1_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->THIRD_1_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_2_STEP;

    const-string v2, "THIRD_2_STEP"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$THIRD_2_STEP;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->THIRD_2_STEP:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$CALIBRATION_DONE;

    const-string v2, "CALIBRATION_DONE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState$CALIBRATION_DONE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->CALIBRATION_DONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 1

    const-class v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 1

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->$VALUES:[Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object v0
.end method


# virtual methods
.method public abstract getCalibrationCount()I
.end method

.method public getMPreviousStep()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->mPreviousStep:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0
.end method

.method public abstract hasMenu()Z
.end method

.method public abstract initState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.end method

.method public abstract isPossibleBack()Z
.end method

.method public abstract nextState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
.end method

.method public previousState()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getMPreviousStep()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 370
    sget-object p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->NONE:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-object p0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->getMPreviousStep()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object p0
.end method

.method public abstract responsibleView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;
.end method

.method public abstract save()Z
.end method

.method public setMPreviousStep(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->mPreviousStep:Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    return-void
.end method

.method public setPreviousStep(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;->setMPreviousStep(Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    return-void
.end method
