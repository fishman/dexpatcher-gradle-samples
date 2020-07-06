.class final synthetic Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;


# static fields
.field static final $instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$5;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$5;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController$$Lambda$5;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnBackPressedListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/shealthmonitor/controller/UpdateCheckController;->lambda$showMobileAppUpdateDialog$4$UpdateCheckController()V

    return-void
.end method
