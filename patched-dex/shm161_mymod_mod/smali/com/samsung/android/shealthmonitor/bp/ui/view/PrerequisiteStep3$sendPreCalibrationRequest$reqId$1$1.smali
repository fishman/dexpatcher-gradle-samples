.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$1;
.super Ljava/lang/Object;
.source "PrerequisiteStep3.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->onResult(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success sendPreCalibrationRequest"

    invoke-static {v0, v1}, Lcom/samsung/android/shealthmonitor/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;

    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-static {p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->access$launchNextScreen(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V

    return-void
.end method
