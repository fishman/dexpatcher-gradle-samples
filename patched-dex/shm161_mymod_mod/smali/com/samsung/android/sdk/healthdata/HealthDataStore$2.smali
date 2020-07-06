.class Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;
.super Ljava/lang/Object;
.source "HealthDataStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataStore;->waitForInitialization(JLcom/samsung/android/sdk/healthdata/IHealth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$ResultListener<",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

.field final synthetic val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 1

    .line 539
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 540
    iget-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->val$healthInterface:Lcom/samsung/android/sdk/healthdata/IHealth;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$202(Lcom/samsung/android/sdk/healthdata/HealthDataStore;Lcom/samsung/android/sdk/healthdata/IHealth;)Lcom/samsung/android/sdk/healthdata/IHealth;

    .line 541
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$100(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessage(I)Z

    return-void

    .line 543
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataStore$2;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataStore;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->access$100(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataStore$ErrorMessageHandler;->sendEmptyMessage(I)Z

    return-void
.end method
