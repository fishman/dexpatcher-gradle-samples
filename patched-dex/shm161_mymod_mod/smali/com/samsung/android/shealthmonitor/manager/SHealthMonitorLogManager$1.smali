.class Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager$1;
.super Ljava/lang/Object;
.source "SHealthMonitorLogManager.java"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager$1;->this$0:Lcom/samsung/android/shealthmonitor/manager/SHealthMonitorLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/samsung/android/shealthmonitor/helper/SharedPreferenceHelper;->getAppInit()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "S HealthMonitor - SHealthMonitorLogManager"

    const-string v0, "init() : isAgreement() is called. return true."

    .line 90
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "S HealthMonitor - SHealthMonitorLogManager"

    const-string v0, "init() : isAgreement() is called. return false."

    .line 93
    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
