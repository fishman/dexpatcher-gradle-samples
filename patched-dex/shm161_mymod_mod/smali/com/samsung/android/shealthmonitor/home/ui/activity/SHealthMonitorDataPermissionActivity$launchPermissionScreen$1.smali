.class public final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity$launchPermissionScreen$1;
.super Ljava/lang/Object;
.source "SHealthMonitorDataPermissionActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$SyncResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->launchPermissionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HealthSdkDataManager request() - Success"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HealthSdkDataManager request() - Failed"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 73
    sget-object p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->Companion:Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$Companion;->getInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;->getProfile()Lcom/samsung/android/sdk/healthdata/HealthUserProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 75
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Profile "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Profile "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->getGender()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Profile "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->getBirthDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorDataPermissionActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Profile is null "

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
