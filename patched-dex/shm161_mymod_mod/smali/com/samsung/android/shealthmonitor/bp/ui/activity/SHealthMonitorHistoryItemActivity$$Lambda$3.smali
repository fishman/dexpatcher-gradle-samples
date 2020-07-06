.class final synthetic Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;


# static fields
.field static final $instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$3;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$3;-><init>()V

    sput-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity$$Lambda$3;->$instance:Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnDialogDismissListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryItemActivity;->lambda$checkSave$4$SHealthMonitorHistoryItemActivity(Landroid/app/Activity;)V

    return-void
.end method
