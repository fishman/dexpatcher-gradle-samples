.class Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;
.super Ljava/lang/Object;
.source "WearableProvider.java"


# static fields
.field private static final QUERY_MARGIN:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - WearableProvider"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Lorg/json/JSONObject;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->makeDeleteDataJsonObject(Lorg/json/JSONObject;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZ)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->queryAllData(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZ)V

    return-void
.end method

.method private getDbData(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;>;I",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;",
            "JII)V"
        }
    .end annotation

    move-object v11, p2

    .line 127
    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v0, "S HealthMonitor - WearableProvider"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getDataPlatformData() dataType : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", from : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p8

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 131
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x42e50a42

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "delete_data"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "S HealthMonitor - WearableProvider"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dataType. dataType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v8, p10

    move/from16 v9, p11

    .line 133
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->getDeleteDataList(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZLjava/lang/String;)V

    return-void
.end method

.method private getDeleteDataList(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZLjava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;>;I",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;",
            "JIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v17, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;

    move-object/from16 v5, v17

    move-object/from16 v6, p0

    move-object/from16 v7, p11

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p6

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;-><init>(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Map;JLjava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;II)V

    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getDeleteTableData(JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V

    return-void
.end method

.method private makeDeleteDataJsonObject(Lorg/json/JSONObject;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V
    .locals 2

    :try_start_0
    const-string p0, "update_time"

    .line 199
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "table_name"

    .line 200
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "data_uuid"

    .line 201
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;->getDataUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableProvider"

    .line 204
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private queryAllData(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;>;I",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;",
            "JIIZ)V"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v7, p5

    const/4 v0, 0x0

    if-nez p10, :cond_0

    .line 80
    invoke-interface {v7, v1, v0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;->onDataReceived(Lorg/json/JSONArray;Z)V

    return-void

    :cond_0
    add-int/lit8 v2, p4, 0x1

    .line 84
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    .line 86
    invoke-interface {v7, v1, v0}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;->onDataReceived(Lorg/json/JSONArray;Z)V

    return-void

    .line 90
    :cond_1
    invoke-interface/range {p3 .. p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    invoke-interface/range {p3 .. p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    const-string v3, "S HealthMonitor - WearableProvider"

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "queryAllData()  dataType : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", count : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getCount()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", time : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v8, -0x42e50a42

    if-eq v4, v8, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "delete_data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v0

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    const-string v0, "S HealthMonitor - WearableProvider"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dataType. dataType : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    .line 113
    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->getDbData(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JII)V

    return-void
.end method


# virtual methods
.method public getDataJsonObject(Ljava/util/Map;Lcom/samsung/android/shealthmonitor/wearable/device/Node;Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
            "Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 68
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const v8, 0xf4240

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->queryAllData(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - WearableProvider"

    .line 71
    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "S HealthMonitor - WearableProvider"

    const-string p1, "dataTypeInfoMap is null or size 0"

    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dataTypeInfoMap is null or size 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
