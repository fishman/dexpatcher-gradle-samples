.class Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6$1;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "DeviceProfileDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;->compute()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6$1;->this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;

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

    .line 445
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6$1;->this$1:Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;

    invoke-virtual {p0}, Lcom/samsung/android/shealthmonitor/dataroom/data/DeviceProfileDao_Impl$6;->invalidate()V

    return-void
.end method
