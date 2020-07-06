.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepStartActivity.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/ui/dialog/listener/OnPositiveButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->showMeasureLaterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 289
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->reLoad()V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->finish()V

    .line 291
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$showMeasureLaterDialog$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.samsung.android.shealthmonitor.home.ui.activity.SHealthMonitorMainActivity"

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->startActivityByClassNameClearTask(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
