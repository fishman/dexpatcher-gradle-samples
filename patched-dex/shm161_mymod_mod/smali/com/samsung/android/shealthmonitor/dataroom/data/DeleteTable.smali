.class public Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;
.super Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;
.source "DeleteTable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - DeleteTable"


# instance fields
.field private mDataUuid:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;Ljava/lang/String;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUuid(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getDeviceUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setDeviceUuid(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setPkgName(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setStartTime(J)V

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setCreateTime(J)V

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setUpdateTime(J)V

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setTimeOffset(J)V

    const-string v0, ""

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->setComment(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p12}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;)V

    .line 39
    iput-object p13, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    .line 40
    iput-object p14, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "table_name"

    .line 46
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    const-string v0, "data_uuid"

    .line 47
    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/Utils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataUuid()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method public setDataUuid(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - DeleteTable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/CommonData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTableName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dataUuid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->mDataUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
