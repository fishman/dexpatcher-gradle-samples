.class Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;
.super Ljava/lang/Object;
.source "DataRoomManager.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field final synthetic this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;->this$0:Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance p1, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/manager/DataRoomManager$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object p0
.end method
