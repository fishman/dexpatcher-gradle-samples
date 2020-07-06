.class public Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.source "CalibrationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - CalibrationConfig"


# instance fields
.field private mFeature:Ljava/lang/String;

.field private mHeartRate:I

.field private mRefDiastolic:I

.field private mRefSystolic:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;IILjava/lang/String;I)V
    .locals 2

    move-object v0, p0

    .line 43
    invoke-direct/range {p0 .. p12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    move v1, p13

    .line 44
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    move/from16 v1, p14

    .line 45
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    move-object/from16 v1, p15

    .line 46
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    move/from16 v1, p16

    .line 47
    iput v1, v0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "ref_systolic"

    .line 53
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    const-string v0, "ref_diastolic"

    .line 54
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    const-string v0, "feature"

    .line 55
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    const-string v0, "hr"

    .line 56
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    return-object p0
.end method

.method public getHeartRate()I
    .locals 0

    .line 88
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    return p0
.end method

.method public getRefDiastolic()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    return p0
.end method

.method public getRefSystolic()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    return p0
.end method

.method public setFeature(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    return-void
.end method

.method public setHeartRate(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    return-void
.end method

.method public setRefDiastolic(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    return-void
.end method

.method public setRefSystolic(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - CalibrationConfig "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRefSystolic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefSystolic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRefDiastolic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mRefDiastolic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFeature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHeartRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/shealthmonitor/bp/roomdata/data/CalibrationConfig;->mHeartRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
