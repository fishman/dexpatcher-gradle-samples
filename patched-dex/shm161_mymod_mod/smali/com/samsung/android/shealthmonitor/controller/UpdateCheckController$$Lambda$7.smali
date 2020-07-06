.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;->arg$1:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;->arg$2:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;->arg$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$7;->arg$2:Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->lambda$showWearableAppUpdateDialog$6$UpdateCheckController(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$UpdateCheckCallback;Landroid/view/View;)V

    return-void
.end method
