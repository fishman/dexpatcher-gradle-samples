.class public interface abstract Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager$DataResultListener;
.super Ljava/lang/Object;
.source "SamsungHealthDataSyncManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/dataroom/manager/SamsungHealthDataSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataResultListener"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract OnResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;)V"
        }
    .end annotation
.end method
