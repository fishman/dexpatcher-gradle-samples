.class public Lcom/samsung/android/shealthmonitor/controller/ControlManager;
.super Ljava/lang/Object;
.source "ControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;
    }
.end annotation


# static fields
.field public static SUPPORT_CONTROLLER_BP:Ljava/lang/String; = "com.samsung.android.shealthmonitor.bp.control.BloodPressureController"

.field public static SUPPORT_CONTROLLER_ECG:Ljava/lang/String; = "com.samsung.android.shealthmonitor.ecg.control.EcgController"

.field private static final TAG:Ljava/lang/String; = "S HealthMonitor - ControlManager"

.field public static mSyncListenerCounter:I

.field private static sInstance:Lcom/samsung/android/shealthmonitor/controller/ControlManager;


# instance fields
.field private final SUPPORT_CONTROL_LIST:[Ljava/lang/String;

.field private final WEARABLE_PACKAGE_NAME:[Ljava/lang/String;

.field private mCheckCount:I

.field private mCurrentDeviceId:Ljava/lang/String;

.field private mInterfaceMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/shealthmonitor/controller/ControlInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncResultCallback:Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

.field private mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_BP:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROLLER_ECG:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    const-string v0, "com.samsung.health.samd.bp"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->WEARABLE_PACKAGE_NAME:[Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager$1;-><init>(Lcom/samsung/android/shealthmonitor/controller/ControlManager;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    const-string v0, ""

    .line 185
    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/shealthmonitor/controller/ControlManager;)Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncResultCallback:Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

    return-object p0
.end method

.method private getControlObject(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
    .locals 2

    const-string p0, "S HealthMonitor - ControlManager"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [getControlObject] className : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    .line 65
    new-array v0, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 66
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "S HealthMonitor - ControlManager"

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [getControlObject] Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    const-string p1, "S HealthMonitor - ControlManager"

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [getControlObject] ret : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/shealthmonitor/controller/ControlManager;
    .locals 1

    .line 39
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->sInstance:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->sInstance:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->sInstance:Lcom/samsung/android/shealthmonitor/controller/ControlManager;

    return-object v0
.end method


# virtual methods
.method public clearAllView(Landroid/content/Context;)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    .line 96
    invoke-interface {v0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->clearView(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllCardView(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    .line 78
    invoke-interface {v1, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllTopCardView(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    .line 88
    invoke-interface {v1, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getTopCardView(Landroid/content/Context;)Lcom/samsung/android/shealthmonitor/ui/view/ProtoTypeTopView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getControllerInterface(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    return-object p0
.end method

.method public getDateChangeBroadcastReceivers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    .line 118
    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getDateChangeBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getHealthSdkHelpers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    .line 107
    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->getHealthSdkHelper()Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSupportPackageCount()I
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    return p0
.end method

.method public initCardController()V
    .locals 4

    const-string v0, "S HealthMonitor - ControlManager"

    const-string v1, " [initCardController] start "

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControlObject(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->initInterface()V

    .line 55
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized isAllValid(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getSupportPackageCount()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCurrentDeviceId:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getSupportPackageCount()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    :cond_1
    :goto_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    move v1, p2

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->WEARABLE_PACKAGE_NAME:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 198
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->WEARABLE_PACKAGE_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 200
    :try_start_1
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 201
    iget-object p3, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    invoke-interface {p3, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->isValid(Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    move p1, v0

    :goto_2
    if-nez p1, :cond_4

    .line 210
    :try_start_2
    iget p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    :cond_4
    const-string p1, "S HealthMonitor - ControlManager"

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, " [isAllValid] ret count : "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mCheckCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_5

    monitor-exit p0

    return v0

    :cond_5
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit p0

    throw p1
.end method

.method public requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;)V
    .locals 2

    const-string v0, "S HealthMonitor - ControlManager"

    const-string v1, " [requestSync] start "

    .line 127
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncResultCallback:Lcom/samsung/android/shealthmonitor/controller/ControlManager$ISyncResultCallback;

    .line 129
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 131
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    sget v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncListenerCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncListenerCounter:I

    .line 133
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mSyncResultListener:Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->requestSync(Lcom/samsung/android/shealthmonitor/controller/ControlInterface$ISyncResultListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnableNotification(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "S HealthMonitor - ControlManager"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [setEnableNotification] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControlObject(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0, p2}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->setEnableNotification(Z)V

    :cond_0
    return-void
.end method

.method public setEnableNotification(Z)V
    .locals 3

    const-string v0, "S HealthMonitor - ControlManager"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [setEnableNotification] enable : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->SUPPORT_CONTROL_LIST:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->getControlObject(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v1, p1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->setEnableNotification(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateController()V
    .locals 3

    const-string v0, "S HealthMonitor - ControlManager"

    const-string v1, " [updateController] start "

    .line 170
    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/samsung/android/shealthmonitor/controller/ControlManager;->mInterfaceMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v1}, Lcom/samsung/android/shealthmonitor/controller/ControlInterface;->onUpdate()V

    goto :goto_0

    :cond_1
    return-void
.end method
