.class Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;
.super Ljava/lang/Object;
.source "DataRoomManager.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

.field final synthetic val$data:Landroid/arch/lifecycle/LiveData;

.field final synthetic val$listener:Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    iput-object p2, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->val$data:Landroid/arch/lifecycle/LiveData;

    iput-object p3, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->val$listener:Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->val$data:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    if-eqz p1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->val$listener:Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;->onResult(ILjava/lang/Object;)V

    return-void

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$2;->val$listener:Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;

    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;->onResult(ILjava/lang/Object;)V

    const-string p0, "S HealthMonitor - DataRoomManager"

    const-string p1, " [observe] items is null "

    .line 103
    invoke-static {p0, p1}, Lcom/samsung/android/shealthmonitor/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
