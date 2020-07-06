.class public interface abstract Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomInterface;
.super Ljava/lang/Object;
.source "DataRoomInterface.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getAllData(Ljava/lang/String;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getAllData(Ljava/lang/String;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
.end method

.method public abstract getAllDataSync(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/lang/String;JJ)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/lang/String;Ljava/util/List;)Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getData(Ljava/lang/String;JJLcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
.end method

.method public abstract getData(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/shealthmonitor/dataroom/data/internal/DataRoomResultListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDataSync(Ljava/lang/String;JJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getDataSync(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract insert(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation
.end method
