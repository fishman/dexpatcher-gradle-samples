.class Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/interfaces/ParcelFdSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->insert(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

.field final synthetic val$receiverId:Ljava/lang/String;

.field final synthetic val$req:Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

.field final synthetic val$resolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver;Lcom/samsung/android/sdk/healthdata/IDataResolver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->this$0:Lcom/samsung/android/sdk/healthdata/HealthDataResolver;

    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$resolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$req:Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    iput-object p4, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$receiverId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$resolver:Lcom/samsung/android/sdk/healthdata/IDataResolver;

    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$req:Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 349
    invoke-virtual {v2}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->getDataType()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$1;->val$receiverId:Ljava/lang/String;

    move-object v3, p1

    move-object v5, p2

    .line 348
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/healthdata/IDataResolver;->requestBlobTransferChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method
