.class final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
        "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;)V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission callback is received. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    .line 799
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->getResultMap()Ljava/util/Map;

    move-result-object p1

    .line 801
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 802
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 803
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isSyncable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 804
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    goto :goto_0

    .line 806
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTED:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 808
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasDefaultPermissions()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;->onResult(ZZ)V

    .line 810
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission callback is failed. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 812
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 813
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 814
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast p1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasDefaultPermissions()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;->onResult(ZZ)V

    .line 816
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;->onResult(Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;)V

    return-void
.end method
