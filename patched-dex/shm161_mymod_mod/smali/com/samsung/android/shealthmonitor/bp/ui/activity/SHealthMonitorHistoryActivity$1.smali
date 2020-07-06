.class Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;
.super Ljava/lang/Object;
.source "SHealthMonitorHistoryActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 301
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/bp/roomdata/data/BloodPressureData;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity$1;->this$0:Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;->access$000(Lcom/samsung/android/shealthmonitor/bp/ui/activity/SHealthMonitorHistoryActivity;Ljava/util/List;)V

    return-void
.end method
