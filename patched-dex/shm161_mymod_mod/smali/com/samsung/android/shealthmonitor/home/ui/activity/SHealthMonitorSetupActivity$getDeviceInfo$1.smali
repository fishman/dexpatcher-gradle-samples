.class final Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;
.super Ljava/lang/Object;
.source "SHealthMonitorSetupActivity.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->getDeviceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/samsung/android/shealthmonitor/wearable/device/Node;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;->this$0:Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;->access$setConnectedDevice(Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity;Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/samsung/android/shealthmonitor/wearable/device/Node;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/home/ui/activity/SHealthMonitorSetupActivity$getDeviceInfo$1;->accept(Lcom/samsung/android/shealthmonitor/wearable/device/Node;)V

    return-void
.end method
