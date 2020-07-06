.class final Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil$1;
.super Ljava/lang/Object;
.source "DataUtil.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil;->doProcessListener(Landroid/arch/lifecycle/LiveData;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->markState(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 48
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DataUtil$1;->lifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object p0
.end method
