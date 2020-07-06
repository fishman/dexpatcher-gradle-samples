.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.source "BloodPressureData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - BloodPressureData"


# instance fields
.field private mCalUuid:Ljava/lang/String;

.field private mDiastole:I

.field private mHeartRate:I

.field private mSystolic:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;III)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V

    .line 66
    iput p2, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    .line 67
    iput p3, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    .line 68
    iput p4, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->setUuid(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJIIILjava/lang/String;)V
    .locals 17

    const-string v12, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    .line 51
    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;IIILjava/lang/String;)V
    .locals 2

    move-object v0, p0

    .line 56
    invoke-direct/range {p0 .. p12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    move v1, p13

    .line 57
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    move/from16 v1, p14

    .line 58
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    move/from16 v1, p15

    .line 59
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    move-object/from16 v1, p16

    .line 60
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mCalUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "systolic"

    .line 74
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    const-string v0, "diastolic"

    .line 75
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    const-string v0, "hr"

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    const-string v0, "calibration_datauuid"

    .line 77
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mCalUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCalUuid()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mCalUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getDiastole()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    return p0
.end method

.method public getHeartRate()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    return p0
.end method

.method public getSystolic()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    return p0
.end method

.method public setCalUuid(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mCalUuid:Ljava/lang/String;

    return-void
.end method

.method public setDiastole(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    return-void
.end method

.method public setHeartRate(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    return-void
.end method

.method public setSystolic(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - BloodPressureData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Systolic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mSystolic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Diastole : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mDiastole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HeartRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mHeartRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCalUUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;->mCalUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
