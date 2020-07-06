.class public final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectionListenerObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Health data service is connected."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTED:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 146
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMIsShowRequest$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "mWeakActivity.get()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$requestPermission(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Landroid/app/Activity;Ljava/util/Set;)V

    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasPermission(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 151
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;->onResult(ZZ)V

    .line 153
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/Set;)V

    return-void

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    const-string v2, "mWeakActivity.get()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    invoke-static {v0, v1, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$requestPermission(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Landroid/app/Activity;Ljava/util/Set;)V

    :cond_a
    return-void
.end method

.method public final onConnectionFailed(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Health data service is not available."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnError$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMConnError$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$showConnectionFailureDialog(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V

    .line 170
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public final onDisconnected()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Health data service is disconnected."

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-static {v2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$getMConnError$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$showConnectionFailureDialog(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->access$setMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/Set;)V

    :cond_2
    return-void
.end method
