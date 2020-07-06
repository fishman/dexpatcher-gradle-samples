.class public final Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;,
        Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;,
        Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;,
        Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;,
        Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;


# instance fields
.field private final ERROR_POPUP_TAG:Ljava/lang/String;

.field private MAX_SENDING_COUNT:I

.field private final SDK_COMMENT:Ljava/lang/String;

.field private final SDK_UUID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mAllPermissionKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplicationContext:Landroid/content/Context;

.field private mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

.field private mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

.field private mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsShowRequest:Z

.field private mNeedToPermissionKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkHelperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

.field private mSycing:Z

.field private final mSyncThread:Landroid/os/HandlerThread;

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "S HealthMonitor - SamsungHealthDataSyncManager"

    .line 29
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string v0, "datauuid"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->SDK_UUID:Ljava/lang/String;

    const-string v0, "comment"

    .line 31
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->SDK_COMMENT:Ljava/lang/String;

    const-string v0, "ERROR_POPUP_TAG"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->ERROR_POPUP_TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->MAX_SENDING_COUNT:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "ContextHolder.getContext().getApplicationContext()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mApplicationContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    .line 62
    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$ConnectionListenerObject;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->initSdkHelper()V

    .line 66
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectionListener:Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    .line 67
    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestConnectService(Ljava/util/Set;)V

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "syncThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSyncThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$deleteSdkSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSdkSyncedData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMConnError$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    return-object p0
.end method

.method public static final synthetic access$getMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    return-object p0
.end method

.method public static final synthetic access$getMIsShowRequest$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mIsShowRequest:Z

    return p0
.end method

.method public static final synthetic access$getMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/Set;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getMSdkHelperList$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/util/ArrayList;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMSycing$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSycing:Z

    return p0
.end method

.method public static final synthetic access$getMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getSdkHelper(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getSdkHelper(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$requestPermission(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Landroid/app/Activity;Ljava/util/Set;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$setMConnError$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    return-void
.end method

.method public static final synthetic access$setMConnectState$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    return-void
.end method

.method public static final synthetic access$setMIsShowRequest$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mIsShowRequest:Z

    return-void
.end method

.method public static final synthetic access$setMNeedToPermissionKeySet$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/Set;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$setMSdkHelperList$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setMSycing$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSycing:Z

    return-void
.end method

.method public static final synthetic access$setMWeakActivity$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setMWeakListener$p(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$showConnectionFailureDialog(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->showConnectionFailureDialog(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public static final synthetic access$syncDataToSamsungDataStore(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->syncDataToSamsungDataStore(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V

    return-void
.end method

.method public static final synthetic access$syncDeletedSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->syncDeletedSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V

    return-void
.end method

.method public static final synthetic access$syncUpdatedSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->syncUpdatedSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V

    return-void
.end method

.method public static final synthetic access$updateSdkSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSdkSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final deleteSdkSyncedData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 577
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Landroid/os/Handler;)V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->SDK_UUID:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object p2

    .line 580
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;-><init>()V

    .line 581
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;

    move-result-object p1

    .line 582
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;

    move-result-object p1

    .line 583
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest$Builder;->build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;

    move-result-object p1

    .line 587
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->delete(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$DeleteRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p1

    .line 588
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting health data success. : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 591
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Deleting health data fails."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getDefaultPermissionKey()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final getPermissionKeys()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 331
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v1

    const-string v2, "ControlManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getHealthSdkHelpers()Ljava/util/ArrayList;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    .line 333
    invoke-interface {v2}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkPermission()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getDefaultPermissionKey()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested keyList : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSdkHelper(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    .line 126
    invoke-interface {v0}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final initSdkHelper()V
    .locals 5

    .line 81
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getHealthSdkHelpers()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "ControlManager.getInstance().getHealthSdkHelpers()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "SdkHelper is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSdkHelperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    .line 87
    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkPermission()Ljava/util/Set;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    if-nez v3, :cond_1

    .line 89
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.sdk.healthdata.HealthPermissionManager.PermissionKey"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getDefaultPermissionKey()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 96
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init SDK DataType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string v0, "AllPermissionKeySet is empty"

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final insertDataToSdk(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;)Z"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not initialize service connection : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 462
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "Empty healthData list"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 467
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Landroid/os/Handler;)V

    .line 468
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;-><init>()V

    .line 469
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;

    move-result-object p1

    .line 472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    .line 473
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getHealthData()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;->addHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)V

    goto :goto_0

    .line 477
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sending bp health data : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->insert(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p1

    const-string p2, "result"

    .line 479
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 480
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sending health data for inserting is success."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 482
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending health data fails. : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 486
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sending health data fails. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private final insertToSyncDb(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Ljava/util/List;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;)J"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "insertToSyncDb() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 502
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "Empty healthData list"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 508
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-wide v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    .line 510
    new-instance v6, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    .line 511
    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getSamsungDataStoreUuid()Ljava/lang/String;

    move-result-object v8

    .line 512
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object v9

    .line 510
    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {v5}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getId()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    .line 515
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Data size : "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :try_start_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->insertHealthSyncData(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    .line 519
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "inserted datas "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception p1

    .line 522
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "insertBpSyncedData : Exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private final isUsable()Z
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not usable service, Syncable state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final requestConnectService(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)V"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request connection service  : with permission ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    .line 766
    sget-object p1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTING:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    .line 767
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->connectService()V

    return-void
.end method

.method static synthetic requestConnectService$default(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 763
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestConnectService(Ljava/util/Set;)V

    return-void
.end method

.method private final requestPermission(Landroid/app/Activity;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 794
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    .line 795
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V

    .line 797
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$requestPermission$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast p2, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->setResultListener(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 820
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IllegalStateException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 822
    sget-object p1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->DISCONNECT:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    .line 823
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;->onResult(ZZ)V

    :cond_1
    return-void
.end method

.method private final sendDataToSamsungDataStore(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;)J"
        }
    .end annotation

    .line 414
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getExistUuidInSyncData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    .line 421
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 426
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-wide v4, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    .line 427
    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 428
    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    invoke-virtual {v6}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getId()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 433
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Remove sent data, final size is "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 435
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "data is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :cond_2
    move-object p2, v3

    .line 443
    :cond_3
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->insertDataToSdk(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string v1, "insertDataToSdk() is success"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->insertToSyncDb(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    .line 447
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "insertDataToSdk() is failed"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private final showConnectionFailureDialog(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V
    .locals 5

    .line 831
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->ERROR_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "showConnectionFailureDialog is already, visible"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 839
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    .line 840
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_not_available:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 842
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 843
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->getErrorCode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    .line 848
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_error:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 847
    :cond_3
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_not_agreed:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 846
    :cond_4
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_not_enabled:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 845
    :cond_5
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_not_upgrade:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 844
    :cond_6
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->samsung_health_sdk_not_install:I

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 852
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-nez v0, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    .line 856
    :goto_1
    new-instance v3, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    const-string v4, ""

    invoke-direct {v3, v4, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;-><init>(Ljava/lang/String;I)V

    .line 857
    invoke-virtual {v3, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setHideTitle(Z)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 859
    invoke-virtual {v3, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setContentText(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 861
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->baseui_button_ok:I

    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast v2, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 868
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/samsung/android/shealthmonitor/dataroom/R$color;->baseui_control_activated_color:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setPositiveButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    if-ne v0, v1, :cond_a

    .line 871
    sget p1, Lcom/samsung/android/shealthmonitor/dataroom/R$string;->baseui_button_cancel:I

    new-instance v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast v0, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    invoke-virtual {v3, p1, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonClickListener(ILcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 874
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/shealthmonitor/dataroom/R$color;->baseui_control_activated_color:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setNegativeButtonTextColor(I)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 877
    :cond_a
    new-instance p1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$showConnectionFailureDialog$3;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast p1, Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    invoke-virtual {v3, p1}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->setDialogDismissListener(Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;)Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;

    .line 883
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment$Builder;->build()Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->ERROR_POPUP_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/shealthmonitor/ui/dialog/SAlertDlgFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 885
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "showConnectionFailureDialog(), error in confirm dialog build"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic startSyncToHealthSdkStore$default(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 346
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->startSyncToHealthSdkStore(J)Z

    move-result p0

    return p0
.end method

.method private final syncDataToSamsungDataStore(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 9

    .line 380
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getLastSyncedId()J

    move-result-wide v0

    .line 381
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSyncableDataCount(J)I

    move-result v2

    if-gtz v2, :cond_0

    .line 383
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "No new data"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TotalCount : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget v3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->MAX_SENDING_COUNT:I

    div-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_2

    move v5, v4

    .line 391
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " loop "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget v6, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->MAX_SENDING_COUNT:I

    invoke-interface {p1, v0, v1, v6}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->makeHealthSyncData(JI)Ljava/util/List;

    move-result-object v0

    .line 394
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->sendDataToSamsungDataStore(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Ljava/util/List;)J

    move-result-wide v0

    const-wide/16 v6, -0x1

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    .line 399
    iget-object v5, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Update lastSyncedId : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->setLastSyncedId(J)V

    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 405
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.health.blood_pressure"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "SamsungHealthDataSyncManager"

    const-string p1, "BP07"

    .line 406
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final syncDeletedSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 2

    .line 561
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    .line 562
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getDeletedSyncedData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 564
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    .line 570
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->deleteSdkSyncedData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    return-void

    .line 565
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "deletedList is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final syncUpdatedSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;)V
    .locals 3

    .line 676
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    move-result-object v0

    .line 677
    invoke-interface {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->getSdkDataType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getUpdatedSyncedData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 679
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;

    const-string v2, "updatedData"

    .line 685
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 680
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "updatedList is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateSdkSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;)Z
    .locals 3

    .line 717
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getDataUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p1, v0}, Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;->makeHealthSyncData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSyncData;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 720
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "healthSyncData is null"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 727
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSamsungHealthDataUuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->setSamsungDataStoreUuid(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 732
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getHealthData()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->SDK_COMMENT:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/sdk/healthdata/HealthData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_3
    new-instance p3, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Landroid/os/Handler;)V

    .line 738
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->SDK_UUID:Ljava/lang/String;

    .line 739
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getSamsungDataStoreUuid()Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object v1

    .line 740
    new-instance v2, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;-><init>()V

    .line 741
    invoke-virtual {p2}, Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;->getSdkDataType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;

    move-result-object p2

    .line 742
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;

    move-result-object p2

    .line 743
    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getHealthData()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->setHealthData(Lcom/samsung/android/sdk/healthdata/HealthData;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;

    move-result-object p2

    .line 744
    invoke-virtual {p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest$Builder;->build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;

    move-result-object p2

    .line 747
    :try_start_0
    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->update(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$UpdateRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object p2

    .line 748
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating health data success. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/data/HealthSyncData;->getSamsungDataStoreUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 750
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Updating health data fails."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic updateSdkSyncedData$default(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 715
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->updateSdkSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final updateSyncedData(Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)Z
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    if-eq v0, v1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not initialize service connection : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$2;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;Lcom/samsung/android/shealthmonitor/dataroom/data/HealthSdkSyncedData;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final deleteSyncedData(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$deleteSyncedData$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$deleteSyncedData$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final getLatestSyncedData(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;)Z
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    if-eq v0, v1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not initialize service connection : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$getLatestSyncedData$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final getProfile()Lcom/samsung/android/sdk/healthdata/HealthUserProfile;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->CONNECTED:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->SYNCABLE:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    if-eq v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Not initialize service connection : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isUsable()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 218
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 219
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    const-string v3, "com.samsung.health.user_profile"

    .line 220
    sget-object v4, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    .line 219
    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasPermission(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->getProfile(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthUserProfile;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public final hasDefaultPermissions()Z
    .locals 2

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getDefaultPermissionKey()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasPermission(Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPermission(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "keySet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V

    .line 785
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->isPermissionAcquired(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    .line 786
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSyncable()Z
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 774
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mStore:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mAllPermissionKeySet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->isPermissionAcquired(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 776
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getDefaultPermissionKey()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 778
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final requestPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getPermissionKeys()Ljava/util/HashSet;

    move-result-object v0

    .line 286
    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V

    return-void
.end method

.method public final requestPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionKeySet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service Connecting state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-nez p3, :cond_0

    .line 319
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestConnectService(Ljava/util/Set;)V

    return-void

    .line 321
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->showConnectionFailureDialog(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 311
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasPermission(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->hasDefaultPermissions()Z

    move-result p0

    invoke-interface {p3, p1, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;->onResult(ZZ)V

    return-void

    .line 314
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V

    return-void

    .line 308
    :pswitch_2
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V

    return-void

    .line 305
    :pswitch_3
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setMaxSendingCount(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->MAX_SENDING_COUNT:I

    return-void
.end method

.method public final showPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getPermissionKeys()Ljava/util/HashSet;

    move-result-object v0

    .line 274
    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->showPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V

    return-void
.end method

.method public final showPermissionForSdkStore(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionKeySet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 240
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 242
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service Connecting state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnectState:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;

    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SdkStoreConnectionState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    if-nez p3, :cond_0

    .line 257
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mIsShowRequest:Z

    .line 258
    invoke-direct {p0, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestConnectService(Ljava/util/Set;)V

    return-void

    .line 260
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mConnError:Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->showConnectionFailureDialog(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 253
    :pswitch_1
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V

    return-void

    .line 250
    :pswitch_2
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->requestPermission(Landroid/app/Activity;Ljava/util/Set;)V

    return-void

    .line 246
    :pswitch_3
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mIsShowRequest:Z

    .line 247
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mNeedToPermissionKeySet:Ljava/util/Set;

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startSyncToHealthSdkStore(J)Z
    .locals 3

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isUsable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSycing:Z

    if-eqz v0, :cond_1

    .line 353
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->TAG:Ljava/lang/String;

    const-string p1, "Syncing now"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mSycing:Z

    .line 358
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$startSyncToHealthSdkStore$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$startSyncToHealthSdkStore$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public final updateSyncedData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "dataUuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->isUsable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$updateSyncedData$1;-><init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
