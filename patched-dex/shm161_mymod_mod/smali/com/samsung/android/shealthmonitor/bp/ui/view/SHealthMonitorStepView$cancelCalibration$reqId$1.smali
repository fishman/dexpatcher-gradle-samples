.class final Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;
.super Ljava/lang/Object;
.source "SHealthMonitorStepView.kt"

# interfaces
.implements Lcom/samsung/android/shealthmonitor/wearable/wearablemessage/WearableMessageManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;->cancelCalibration(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0xf21a1ed

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "SUCCESS_REQUEST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1$1;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 58
    :cond_2
    :goto_0
    new-instance p1, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1$2;-><init>(Lcom/samsung/android/shealthmonitor/bp/ui/view/SHealthMonitorStepView$cancelCalibration$reqId$1;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/shealthmonitor/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
