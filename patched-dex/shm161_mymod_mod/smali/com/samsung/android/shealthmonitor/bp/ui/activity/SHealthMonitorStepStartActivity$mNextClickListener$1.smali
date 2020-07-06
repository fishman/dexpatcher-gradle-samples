.class public final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepStartActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->getInstance()Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/shealthmonitor/bp/manager/StateManager;->next()Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;

    move-result-object p1

    .line 169
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity$mNextClickListener$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;

    const-string v0, "nextState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;->access$changeView(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorStepStartActivity;Lcom/samsung/android/shealthmonitor/bp/manager/CalibrationState;)V

    return-void
.end method
