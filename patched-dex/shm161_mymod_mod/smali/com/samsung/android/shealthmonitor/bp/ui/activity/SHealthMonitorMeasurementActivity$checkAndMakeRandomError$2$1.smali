.class final Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2$1;
.super Ljava/lang/Object;
.source "SHealthMonitorMeasurementActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 560
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$checkAndMakeRandomError$2;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;

    sget-object v0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->INSTANCE:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;

    invoke-virtual {v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity$Dialog;->getTIME_OUT()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;->access$showDialog(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorMeasurementActivity;Ljava/lang/String;)V

    return-void
.end method
