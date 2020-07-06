.class Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;
.super Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 466
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync$AsyncResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->access$1300(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;ILandroid/os/Bundle;)V

    return-void
.end method
