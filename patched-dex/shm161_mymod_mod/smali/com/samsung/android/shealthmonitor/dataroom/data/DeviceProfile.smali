.class public Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.source "DeviceProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DeviceProfile"


# instance fields
.field private mCapability:[B

.field private mConnectivityType:I

.field private mDeviceGroup:I

.field private mDeviceType:I

.field private mFixedName:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    .line 55
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    .line 56
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[B)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V

    .line 84
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    .line 87
    iput p5, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    .line 88
    iput p6, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    .line 89
    iput p7, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    .line 90
    iput-object p8, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[B)V
    .locals 21

    const-string v12, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 64
    invoke-direct/range {v0 .. v20}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[B)V
    .locals 2

    move-object v0, p0

    .line 70
    invoke-direct/range {p0 .. p12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    move-object v1, p13

    .line 71
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 72
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 73
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    move/from16 v1, p16

    .line 74
    iput v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    move/from16 v1, p17

    .line 75
    iput v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    move/from16 v1, p18

    .line 76
    iput v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    move-object/from16 v1, p19

    .line 77
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 78
    iput-object v1, v0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "name"

    .line 97
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    const-string v0, "model"

    .line 98
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    const-string v0, "manufacturer"

    .line 99
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    const-string v0, "device_group"

    .line 100
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    const-string v0, "connectivity_type"

    .line 101
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    const-string v0, "device_type"

    .line 102
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    const-string v0, "fixed_name"

    .line 103
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    const-string v0, "capability"

    .line 104
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getBytes(Lorg/json/JSONObject;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-void
.end method

.method private parseCapability([B)V
    .locals 3

    .line 173
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "device_nick_name"

    .line 174
    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "S HealthMonitor - DeviceProfile"

    const-string p1, " [parseCapability] parse exception "

    .line 176
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 201
    :cond_1
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;

    .line 202
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    .line 204
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceGroup()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getConnectivityType()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    .line 205
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceType()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getFixedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    .line 206
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCapability()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getCapability()[B
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-object p0
.end method

.method public getConnectivityType()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    return p0
.end method

.method public getDeviceGroup()I
    .locals 0

    .line 136
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    return p0
.end method

.method public getFixedName()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setCapability([B)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->parseCapability([B)V

    .line 168
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    return-void
.end method

.method public setConnectivityType(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    return-void
.end method

.method public setDeviceGroup(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    return-void
.end method

.method public setFixedName(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - DeviceProfile"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mModel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mManufacturer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDeviceGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mConnectivityType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDeviceType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFixedName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateData(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;)V
    .locals 2

    .line 181
    invoke-super {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->updateDataExceptStartTime(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mName:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mModel:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mManufacturer:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceGroup()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceGroup:I

    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getConnectivityType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mConnectivityType:I

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getDeviceType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mDeviceType:I

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getCapability()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mCapability:[B

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->getFixedName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->mFixedName:Ljava/lang/String;

    const-string p0, "S HealthMonitor - DeviceProfile"

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [updateData] ob : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
