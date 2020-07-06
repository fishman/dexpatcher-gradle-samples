.class public Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;
.super Ljava/lang/Object;
.source "WearableDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTypeInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mLastSyncTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mLastSyncTime:J

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mCount:I

    return p0
.end method

.method public getTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mLastSyncTime:J

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mCount:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/samsung/android/shealthmonitor/wearable/data/WearableDataManager$DataTypeInfo;->mLastSyncTime:J

    return-void
.end method
