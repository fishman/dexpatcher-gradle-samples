.class Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6$1;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "EcgDataDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;->compute()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6$1;->this$1:Lcom/samsung/android/shealthmonitor/ecg/roomdata/data/EcgDataDao_Impl$6;

    invoke-direct {p0, p2, p3}, Landroid/arch/persistence/room/InvalidationTracker$Observer;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method
