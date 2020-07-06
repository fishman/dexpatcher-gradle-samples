.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;


# static fields
.field static final $instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$8;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$8;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$8;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnNegativeButtonClickListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->lambda$showWearableAppUpdateDialog$7$UpdateCheckController(Landroid/view/View;)V

    return-void
.end method
