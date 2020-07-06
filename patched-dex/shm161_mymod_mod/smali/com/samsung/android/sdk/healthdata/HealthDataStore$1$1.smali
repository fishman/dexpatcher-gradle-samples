.class Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;
.super Ljava/lang/Object;
.source "HealthDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;

.field final synthetic val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;Lcom/samsung/android/sdk/healthdata/IHealth;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;->this$1:Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;->val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;->this$1:Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;->val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$000(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 432
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1$1;->this$1:Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$100(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
