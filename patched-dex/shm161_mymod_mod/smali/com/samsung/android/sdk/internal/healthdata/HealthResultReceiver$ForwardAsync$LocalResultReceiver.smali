.class Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;
.super Ljava/lang/Object;
.source "HealthResultReceiver.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 476
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$LocalResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->access$1300(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;ILandroid/os/Bundle;)V

    return-void
.end method
