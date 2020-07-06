.class Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;
.super Landroid/os/AsyncTask;
.source "HealthDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSupportedDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mErrorCode:I

.field final synthetic this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;I)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 612
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->mErrorCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;ILcom/samsung/android/sdk/healthdata/HealthDataStore$1;)V
    .locals 0

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 617
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$800(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 618
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$800(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$900(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/DeviceUtil;->isSamsungHealthDownloadable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$802(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 623
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$800(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 608
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 628
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;

    iget v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->mErrorCode:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;-><init>(IZ)V

    .line 630
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$900(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;->setPackageManager(Landroid/content/pm/PackageManager;)V

    .line 631
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$300(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ConnectionListener;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/HealthConnectionErrorResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 608
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$CheckSupportedDeviceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
