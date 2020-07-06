.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAggregates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation
.end field

.field private mBegin:J

.field private mDataType:Ljava/lang/String;

.field private mDeviceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:J

.field private mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private final mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation
.end field

.field private mHasLocalTimeRange:Z

.field private mInvalidAggregateMsg:Ljava/lang/String;

.field private mInvalidGroupMsg:Ljava/lang/String;

.field private mInvalidTimeGroupMsg:Ljava/lang/String;

.field private mLocalTimeBegin:J

.field private mLocalTimeEnd:J

.field private mLocalTimeOffsetProperty:Ljava/lang/String;

.field private mLocalTimeProperty:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSortField:Ljava/lang/String;

.field private mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

.field private mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mAggregates:Ljava/util/List;

    const/4 v0, 0x0

    .line 2640
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidAggregateMsg:Ljava/lang/String;

    .line 2641
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mGroups:Ljava/util/List;

    .line 2642
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidGroupMsg:Ljava/lang/String;

    .line 2644
    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidTimeGroupMsg:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 2651
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mBegin:J

    .line 2652
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mEnd:J

    const/4 v0, 0x0

    .line 2655
    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mHasLocalTimeRange:Z

    return-void
.end method


# virtual methods
.method public addFunction(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 2

    .line 2868
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mAggregates:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2870
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidAggregateMsg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public addGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 2

    .line 2847
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mGroups:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2849
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidGroupMsg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;
    .locals 21

    move-object/from16 v0, p0

    .line 2940
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDataType:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ""

    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 2943
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mHasLocalTimeRange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeBegin:J

    iget-wide v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeEnd:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 2945
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal local time range is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2947
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mAggregates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No aggregate function is included"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2950
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidAggregateMsg:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2951
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidAggregateMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2954
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidTimeGroupMsg:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2955
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidTimeGroupMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2957
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidGroupMsg:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2958
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidGroupMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2960
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 2961
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2963
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null device uuid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v1, 0x0

    .line 2968
    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortField:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 2969
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    if-eqz v1, :cond_9

    .line 2970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortField:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;->toSqlLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2972
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortField:Ljava/lang/String;

    :cond_a
    :goto_0
    move-object v10, v1

    .line 2976
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    iget-object v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDataType:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mAggregates:Ljava/util/List;

    iget-object v6, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mGroups:Ljava/util/List;

    iget-object v7, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    iget-object v8, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iget-object v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    iget-wide v11, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mBegin:J

    iget-wide v13, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mEnd:J

    iget-object v15, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    move-wide/from16 v19, v13

    iget-wide v13, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeBegin:J

    .line 2978
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-wide v13, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeEnd:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v2

    move-object v2, v1

    move-wide/from16 v13, v19

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v18}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v1

    .line 2941
    :cond_b
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data type or invalid data type is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 0

    .line 2680
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 0

    .line 2693
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public setLocalTimeRange(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 2915
    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mHasLocalTimeRange:Z

    .line 2916
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    .line 2917
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 2918
    iput-wide p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeBegin:J

    .line 2919
    iput-wide p5, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mLocalTimeEnd:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 0

    .line 2706
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setSort(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 0

    .line 2886
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortField:Ljava/lang/String;

    .line 2887
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    return-object p0
.end method

.method public setSourceDevices(Ljava/util/List;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;"
        }
    .end annotation

    .line 2719
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method

.method public setTimeGroup(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 7

    .line 2771
    :try_start_0
    new-instance v6, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2773
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidTimeGroupMsg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setTimeGroup(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;
    .locals 7

    .line 2828
    :try_start_0
    new-instance v6, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2830
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$Builder;->mInvalidTimeGroupMsg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
