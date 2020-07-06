.class Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;
.super Landroid/os/Handler;
.source "HealthDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataHandler"
.end annotation


# instance fields
.field private final mObserver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataObserver;Landroid/os/Looper;)V
    .locals 0

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;->mObserver:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver$DataHandler;->mObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;

    if-eqz p0, :cond_0

    .line 172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataObserver;->onChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
