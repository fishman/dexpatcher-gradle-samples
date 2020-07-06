.class public Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - CommonData"


# instance fields
.field private mComment:Ljava/lang/String;

.field private mCreateTime:J

.field private mDeviceUuid:Ljava/lang/String;

.field private mId:J

.field private mPkgName:Ljava/lang/String;

.field private mStartTime:J

.field private mTimeOffset:J

.field private mUpdateTime:J

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v12, ""

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    .line 47
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V
    .locals 13

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getStartTime()J

    move-result-wide v6

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getTimeOffset()J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getComment()Ljava/lang/String;

    move-result-object v12

    move-object v0, p0

    .line 57
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 13

    const-string v12, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 52
    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    .line 66
    iput-wide p4, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    .line 67
    iput-wide p6, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    .line 68
    iput-wide p8, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    .line 69
    iput-wide p10, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    .line 70
    iput-object p12, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "datauuid"

    .line 75
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    const-string v0, "deviceuuid"

    .line 76
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    const-string v0, "pkg_name"

    .line 77
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    const-string v0, "create_time"

    .line 78
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    const-string v0, "start_time"

    .line 79
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    const-string v0, "update_time"

    .line 80
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    const-string v0, "time_offset"

    .line 81
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    const-string v0, "comment"

    .line 82
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 187
    :cond_1
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;

    .line 188
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getCreateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUpdateTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getTimeOffset()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getComment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    return-object p0
.end method

.method public getCreateTime()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    return-wide v0
.end method

.method public getDeviceUuid()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mId:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    return-wide v0
.end method

.method public getTimeOffset()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    return-void
.end method

.method public setDeviceUuid(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mId:J

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    return-void
.end method

.method public setTimeOffset(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " UUID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DeviceUUID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg_name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " create_time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " start_time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " update_time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " time_offset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " comment : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDataExceptStartTime(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;)V
    .locals 4

    const-string v0, "S HealthMonitor - CommonData"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [updateDataExceptStartTime] ob : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUuid:Ljava/lang/String;

    .line 166
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mStartTime:J

    .line 169
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mCreateTime:J

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mDeviceUuid:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mPkgName:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mUpdateTime:J

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getTimeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mTimeOffset:J

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getComment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->mComment:Ljava/lang/String;

    return-void
.end method
