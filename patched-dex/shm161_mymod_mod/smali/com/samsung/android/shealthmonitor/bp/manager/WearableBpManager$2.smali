.class Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;
.super Ljava/lang/Object;
.source "WearableBpManager.java"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$000(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "S HealthMonitor - WearableBpManager"

    const-string v2, " [resultListener] ok? "

    .line 124
    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "S HealthMonitor - WearableBpManager"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WM] onResult : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", seq num : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", receiveBody : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$102(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 128
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Result : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "result"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcom/samsung/android/shealthmonitor/util/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$102(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "result"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "S HealthMonitor - WearableBpManager"

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, " [] Exception : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$000(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_5
    const-string p2, "S HealthMonitor - WearableBpManager"

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, " [mResultListener] Exception : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :try_start_6
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$102(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 137
    :try_start_7
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "result"

    const-string p3, "error"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_8
    const-string p2, "S HealthMonitor - WearableBpManager"

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, " [] Exception : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$000(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 144
    :goto_3
    monitor-exit v0

    return-void

    .line 134
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_3

    .line 135
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2, p3}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$102(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 137
    :try_start_9
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$100(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "result"

    const-string v1, "error"

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catch_3
    move-exception p2

    :try_start_a
    const-string p3, "S HealthMonitor - WearableBpManager"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [] Exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;->access$000(Lcom/samsung/android/shealthmonitor/bp/manager/WearableBpManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    throw p1

    :catchall_1
    move-exception p0

    .line 144
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0
.end method
