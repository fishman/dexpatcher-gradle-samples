.class Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;
.super Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;
.source "HealthResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/IHealthResultReceiver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async$MyResultReceiver;->this$0:Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;->access$900(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$Async;ILandroid/os/Bundle;)V

    return-void
.end method
