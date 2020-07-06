.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7$1;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->compute()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7$1;->this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;

    invoke-direct {p0, p2, p3}, Landroid/arch/persistence/room/InvalidationTracker$Observer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 647
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7$1;->this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$7;->invalidate()V

    return-void
.end method
