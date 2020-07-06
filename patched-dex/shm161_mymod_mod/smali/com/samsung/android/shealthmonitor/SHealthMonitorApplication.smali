.class public Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "SHealthMonitorApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S HealthMonitor - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static getAppNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, "activity"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 78
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 79
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 49
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 51
    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/helper/ContextHolder;->setContext(Landroid/app/Application;)V

    .line 53
    sget-object v0, Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;->TAG:Ljava/lang/String;

    const-string v1, "[PERF] oncreate - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/samsung/android/shealthmonitor/OomExceptionHandler;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/OomExceptionHandler;-><init>()V

    .line 56
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 57
    invoke-static {}, Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;->getInstance()Lcom/samsung/android/shealthmonitor/wearable/device/NodeMonitor;

    .line 59
    invoke-static {}, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->getInstance()Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    .line 60
    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->initCardController()V

    .line 63
    sget-object v0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->getInstance()Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->init(Landroid/app/Application;)V

    .line 66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;->getAppNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 67
    sget-object v0, Lcom/samsung/android/shealthmonitor/SHealthMonitorApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PERF] oncreate - end : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
