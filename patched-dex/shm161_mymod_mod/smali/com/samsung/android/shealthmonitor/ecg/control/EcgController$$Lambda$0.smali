.class final Lcom/samsung/android/shealthmonitor/ecg/control/EcgController$$Lambda$0;
.super Ljava/lang/Object;
.source "EcgController$$Lambda$0.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final $instance:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    new-instance v0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController$$Lambda$0;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController$$Lambda$0;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController$$Lambda$0;->$instance:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 10
    invoke-static {}, Lcom/samsung/android/shealthmonitor/ecg/control/EcgController;->lambda$getCardView$0$EcgController()V

    .line 11
    return-void
.end method
