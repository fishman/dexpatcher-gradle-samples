.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation
.end field

.field private mBegin:J

.field private mCount:I

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

.field private mHasLocalTimeRange:Z

.field private mHasTimeAfter:Z

.field private mHasTimeBefore:Z

.field private mInvalidAliasMsg:Ljava/lang/String;

.field private mInvalidPropertiesMsg:Ljava/lang/String;

.field private mLocalTimeBegin:J

.field private mLocalTimeEnd:J

.field private mLocalTimeOffsetProperty:Ljava/lang/String;

.field private mLocalTimeProperty:Ljava/lang/String;

.field private mOffset:I

.field private mPackageName:Ljava/lang/String;

.field private mProperties:[Ljava/lang/String;

.field private mResultCountSet:I

.field private mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

.field private mSortProperty:Ljava/lang/String;

.field private mTimeAfter:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1430
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mBegin:J

    .line 1431
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mEnd:J

    const/4 v2, 0x0

    .line 1432
    iput v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mOffset:I

    const/4 v3, -0x1

    .line 1433
    iput v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    .line 1434
    iput v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mResultCountSet:I

    .line 1436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    const/4 v3, 0x0

    .line 1437
    iput-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidPropertiesMsg:Ljava/lang/String;

    .line 1438
    iput-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidAliasMsg:Ljava/lang/String;

    .line 1439
    iput-wide v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mTimeAfter:J

    .line 1440
    iput-boolean v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeAfter:Z

    .line 1441
    iput-boolean v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeBefore:Z

    .line 1444
    iput-boolean v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasLocalTimeRange:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;
    .locals 30

    move-object/from16 v0, p0

    .line 1718
    iget-boolean v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeAfter:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mTimeAfter:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 1719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal setTimeAfter value is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1721
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeBefore:Z

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mEnd:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 1722
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal setTimeBefore value is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDataType:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v1, ""

    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 1727
    :cond_2
    iget-boolean v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasLocalTimeRange:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeBegin:J

    iget-wide v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeEnd:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 1729
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal local time range is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1731
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidAliasMsg:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1732
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidAliasMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1734
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidPropertiesMsg:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1735
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidPropertiesMsg:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1737
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    .line 1738
    invoke-virtual {v2}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->getAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1739
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null or empty alias for read request is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1742
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDeviceUuids:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 1743
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDeviceUuids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_a

    .line 1745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null device uuid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1750
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortProperty:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1751
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    if-eqz v1, :cond_c

    .line 1752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortProperty:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;->toSqlLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v10, v1

    goto :goto_1

    .line 1754
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortProperty:Ljava/lang/String;

    goto :goto_0

    :cond_d
    move-object v10, v2

    .line 1757
    :goto_1
    iget v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mResultCountSet:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_f

    .line 1758
    iget v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    if-gtz v1, :cond_e

    .line 1759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong count (zero or negative number)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1761
    :cond_e
    iget v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mOffset:I

    if-gez v1, :cond_10

    .line 1762
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong offset (negative number)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1765
    :cond_f
    iput v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    .line 1769
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1770
    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_11

    goto/16 :goto_5

    .line 1780
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1782
    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_15

    aget-object v8, v4, v1

    move v9, v3

    :goto_3
    if-ge v9, v6, :cond_13

    .line 1785
    iget-object v11, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->getProperty()Ljava/lang/String;

    move-result-object v11

    if-eqz v8, :cond_12

    .line 1786
    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_13
    if-ge v9, v6, :cond_14

    .line 1791
    iget-object v8, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1794
    :cond_14
    new-instance v9, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    invoke-direct {v9, v8, v2}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    if-eqz v6, :cond_16

    .line 1797
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 1799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not matched aliases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1802
    :cond_16
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDataType:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iget-object v8, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDeviceUuids:Ljava/util/List;

    iget-wide v11, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mBegin:J

    iget-wide v13, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mEnd:J

    iget v15, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mOffset:I

    iget v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    move-object/from16 v23, v10

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mTimeAfter:J

    iget-object v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    move-wide/from16 v24, v9

    iget-object v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    move-object/from16 v26, v9

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeBegin:J

    .line 1804
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeEnd:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object v0, v3

    move-object v3, v1

    move-wide/from16 v17, v24

    move-object/from16 v20, v26

    const/4 v9, 0x0

    move-object/from16 v10, v23

    move/from16 v16, v2

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v22}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/util/List;BLjava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v1

    :cond_17
    :goto_5
    move-object/from16 v23, v10

    if-lez v1, :cond_18

    .line 1772
    iget-object v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    :cond_18
    move-object v7, v2

    .line 1776
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    iget-object v4, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDataType:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iget-object v8, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDeviceUuids:Ljava/util/List;

    iget-wide v11, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mBegin:J

    iget-wide v13, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mEnd:J

    iget v15, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mOffset:I

    iget v2, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mTimeAfter:J

    iget-object v3, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    move-wide/from16 v27, v9

    iget-object v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    move-object/from16 v29, v9

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeBegin:J

    .line 1778
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    iget-wide v9, v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeEnd:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object v0, v3

    move-object v3, v1

    move-wide/from16 v17, v27

    move-object/from16 v20, v29

    const/4 v9, 0x1

    move-object/from16 v10, v23

    move/from16 v16, v2

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v22}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/util/List;BLjava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v1

    .line 1725
    :cond_19
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No data type or invalid data type is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1483
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public setLocalTimeRange(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1695
    iput-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasLocalTimeRange:Z

    .line 1696
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeProperty:Ljava/lang/String;

    .line 1697
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 1698
    iput-wide p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeBegin:J

    .line 1699
    iput-wide p5, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mLocalTimeEnd:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setProperties([Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1511
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    goto :goto_2

    .line 1513
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1514
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 1515
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 1516
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1520
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mProperties:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "Null or empty property for read request is not allowed"

    .line 1517
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidPropertiesMsg:Ljava/lang/String;

    :cond_3
    :goto_2
    return-object p0
.end method

.method public setPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 2

    .line 1538
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mAliases:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1540
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mInvalidAliasMsg:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setResultCount(II)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1597
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mOffset:I

    .line 1598
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mCount:I

    const/4 p1, 0x1

    .line 1599
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mResultCountSet:I

    return-object p0
.end method

.method public setSort(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1577
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortProperty:Ljava/lang/String;

    .line 1578
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mSortOrder:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;

    return-object p0
.end method

.method public setSourceDevices(Ljava/util/List;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;"
        }
    .end annotation

    .line 1496
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method

.method public setTimeAfter(J)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1632
    iput-wide p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mTimeAfter:J

    const/4 p1, 0x1

    .line 1633
    iput-boolean p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeAfter:Z

    return-object p0
.end method

.method public setTimeBefore(J)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;
    .locals 0

    .line 1666
    iput-wide p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mEnd:J

    const/4 p1, 0x1

    .line 1667
    iput-boolean p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest$Builder;->mHasTimeBefore:Z

    return-object p0
.end method
