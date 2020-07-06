.class final synthetic Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# static fields
.field static final $instance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$1;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$1;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController$$Lambda$1;->$instance:Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/shealthmonitor/bp/control/BpUpdateController;->lambda$sendUpdateMessageToWearable$1$BpUpdateController(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
