.class public final enum Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
.super Ljava/lang/Enum;
.source "CommonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/util/CommonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JobId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

.field public static final enum JOB_ID_UPDATE_CHECK_ECG:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_UPDATE_CHECK_BP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 8
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_UPDATE_CHECK_ECG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_ECG:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 9
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_CALIBRATION_2ND_NOTI"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 10
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_CALIBRATION_3RD_NOTI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 11
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_PRE_RECALIBRATION_NOTI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 12
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_FINAL_RECALIBRATION_NOTI"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 13
    new-instance v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    const-string v1, "JOB_ID_EXPIRED_RECALIBRATION_NOTI"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    .line 5
    new-array v0, v9, [Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_BP:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_UPDATE_CHECK_ECG:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_2ND_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_CALIBRATION_3RD_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_PRE_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_FINAL_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->JOB_ID_EXPIRED_RECALIBRATION_NOTI:Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->$VALUES:[Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    invoke-virtual {v0}, [Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/samsung/android/shealthmonitor/util/CommonConstants$JobId;->value:I

    return p0
.end method
