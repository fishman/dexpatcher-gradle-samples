.class final synthetic Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final $instance:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$$Lambda$0;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$$Lambda$0;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver$$Lambda$0;->$instance:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/receiver/BpBroadcastReceiver;->lambda$synchronizeTnc$0$BpBroadcastReceiver()V

    return-void
.end method
