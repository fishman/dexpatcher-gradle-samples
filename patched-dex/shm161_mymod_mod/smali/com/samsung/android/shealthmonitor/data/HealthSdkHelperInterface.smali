.class public interface abstract Lcom/samsung/android/shealthmonitor/data/HealthSdkHelperInterface;
.super Ljava/lang/Object;
.source "HealthSdkHelperInterface.kt"


# virtual methods
.method public abstract getDbDataType()Ljava/lang/String;
.end method

.method public abstract getLastSyncedId()J
.end method

.method public abstract getSdkDataType()Ljava/lang/String;
.end method

.method public abstract getSdkPermission()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSyncableDataCount(J)I
.end method

.method public abstract makeHealthSyncData(Ljava/lang/String;)Lcom/samsung/android/shealthmonitor/data/HealthSyncData;
.end method

.method public abstract makeHealthSyncData(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/samsung/android/shealthmonitor/data/HealthSyncData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setLastSyncedId(J)V
.end method
