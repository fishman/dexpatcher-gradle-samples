.class Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;
.super Ljava/lang/Object;
.source "WearableProvider.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->getDeleteDataList(Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

.field final synthetic val$dataReadListener:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;

.field final synthetic val$dataType:Ljava/lang/String;

.field final synthetic val$dataTypeInfoMap:Ljava/util/Map;

.field final synthetic val$entryList:Ljava/util/List;

.field final synthetic val$index:I

.field final synthetic val$maxDataSize:I

.field final synthetic val$prevDataSize:I

.field final synthetic val$queryEndTime:J

.field final synthetic val$resultJsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Map;JLjava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;II)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$resultJsonArray:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataTypeInfoMap:Ljava/util/Map;

    iput-wide p5, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$queryEndTime:J

    iput-object p7, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$entryList:Ljava/util/List;

    iput p8, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$index:I

    iput-object p9, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataReadListener:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;

    iput p10, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$maxDataSize:I

    iput p11, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$prevDataSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    return-void

    .line 153
    :cond_0
    move-object/from16 v2, p2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "S HealthMonitor - WearableProvider"

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [read DATA] read_data = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;

    .line 160
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 161
    iget-object v7, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    invoke-static {v7, v6, v5}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->access$000(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Lorg/json/JSONObject;Lcom/samsung/android/shealthmonitor/dataroom/data/DeleteTable;)V

    .line 164
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 166
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 170
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "S HealthMonitor - WearableProvider"

    const-string v5, "getDeleteDataList length is 0"

    .line 171
    invoke-static {v2, v5}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataType:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$resultJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v5, "S HealthMonitor - WearableProvider"

    .line 179
    invoke-static {v5, v2}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataTypeInfoMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataType:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;

    if-nez v2, :cond_3

    const-string v2, "S HealthMonitor - WearableProvider"

    const-string v3, "getDataPlatformData() dataTypeInfoTemp is null"

    .line 185
    invoke-static {v2, v3}, Lcom/samsung/android/shealthmonitor/wearable/utils/WLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->getCount()I

    move-result v5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->setCount(I)V

    .line 188
    iget-wide v5, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$queryEndTime:J

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->setTime(J)V

    .line 191
    :goto_2
    iget-object v7, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->this$0:Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;

    iget-object v8, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$resultJsonArray:Lorg/json/JSONArray;

    iget-object v9, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataTypeInfoMap:Ljava/util/Map;

    iget-object v10, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$entryList:Ljava/util/List;

    iget v2, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$index:I

    add-int/lit8 v11, v2, 0x1

    iget-object v12, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$dataReadListener:Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;

    iget-wide v13, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$queryEndTime:J

    iget v15, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$maxDataSize:I

    iget v1, v1, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider$1;->val$prevDataSize:I

    add-int v16, v1, v4

    const/16 v17, 0x1

    invoke-static/range {v7 .. v17}, Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;->access$100(Lcom/samsung/android/shealthmonitor/wearable/data/WearableProvider;Lorg/json/JSONArray;Ljava/util/Map;Ljava/util/List;ILcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataReadListener;JIIZ)V

    return-void
.end method
