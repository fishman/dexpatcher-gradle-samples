.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;
.super Ljava/lang/Object;
.source "PrerequisiteStep3.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;->sendPreCalibrationRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const-string p2, "SUCCESS_REQUEST"

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/PrerequisiteStep3$sendPreCalibrationRequest$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
