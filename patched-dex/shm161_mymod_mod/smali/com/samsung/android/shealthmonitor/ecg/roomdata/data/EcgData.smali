.class public Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.source "EcgData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - EcgData"


# instance fields
.field private mDiastole:I

.field private mHeartRate:I

.field private mSystolic:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    .line 16
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 17
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 18
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;III)V
    .registers 5
    .param p1, "commonData"    # Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V

    .line 42
    iput p2, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 43
    iput p3, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 44
    iput p4, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->setUuid(Ljava/lang/String;)V

    .line 23
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 24
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 25
    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJIII)V
    .registers 31
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;
    .param p4, "j"    # J
    .param p6, "j2"    # J
    .param p8, "j3"    # J
    .param p10, "j4"    # J
    .param p12, "i"    # I
    .param p13, "i2"    # I
    .param p14, "i3"    # I

    .prologue
    .line 29
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

    invoke-direct/range {v0 .. v15}, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;III)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;III)V
    .registers 16
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;
    .param p3, "str3"    # Ljava/lang/String;
    .param p4, "j"    # J
    .param p6, "j2"    # J
    .param p8, "j3"    # J
    .param p10, "j4"    # J
    .param p12, "str4"    # Ljava/lang/String;
    .param p13, "i"    # I
    .param p14, "i2"    # I
    .param p15, "i3"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    .line 35
    iput p13, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 36
    iput p14, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 37
    iput p15, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jSONObject"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lorg/json/JSONObject;)V

    .line 49
    const-string v0, "systolic"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 50
    const-string v0, "diastolic"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 51
    const-string v0, "hr"

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 52
    return-void
.end method


# virtual methods
.method public getDiastole()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    return v0
.end method

.method public getHeartRate()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    return v0
.end method

.method public getSystolic()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    return v0
.end method

.method public setDiastole(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    .line 72
    return-void
.end method

.method public setHeartRate(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    .line 80
    return-void
.end method

.method public setSystolic(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S HealthMonitor - EcgData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Systolic : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mSystolic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Diastole : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mDiastole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HeartRate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgData;->mHeartRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
