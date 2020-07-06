.class public final Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;
.super Ljava/lang/Object;
.source "AggregateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;,
        Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;,
        Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;",
            ">;"
        }
    .end annotation
.end field


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

.field private final mBegin:J

.field private final mDataType:Ljava/lang/String;

.field private final mDeviceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnd:J

.field private final mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private final mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalTimeBegin:J

.field private final mLocalTimeEnd:J

.field private final mLocalTimeOffsetProperty:Ljava/lang/String;

.field private final mLocalTimeProperty:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDataType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mPackageName:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mAggregates:Ljava/util/List;

    .line 73
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mGroups:Ljava/util/List;

    .line 74
    const-class v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    .line 75
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mSortOrder:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mBegin:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mEnd:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeBegin:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeEnd:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 53
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDataType:Ljava/lang/String;

    move-object v1, p2

    .line 54
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mPackageName:Ljava/lang/String;

    move-object v1, p3

    .line 55
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mAggregates:Ljava/util/List;

    move-object v1, p4

    .line 56
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mGroups:Ljava/util/List;

    move-object v1, p5

    .line 57
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    move-object v1, p6

    .line 58
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-object v1, p7

    .line 59
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDeviceUuids:Ljava/util/List;

    move-object v1, p8

    .line 60
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mSortOrder:Ljava/lang/String;

    move-wide v1, p9

    .line 61
    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mBegin:J

    move-wide v1, p11

    .line 62
    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mEnd:J

    move-object/from16 v1, p13

    .line 63
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 64
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 65
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeBegin:J

    .line 66
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeEnd:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getAggregatePair()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mAggregates:Ljava/util/List;

    return-object p0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceUuids()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method

.method public final getEndTime()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mEnd:J

    return-wide v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public final getGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mGroups:Ljava/util/List;

    return-object p0
.end method

.method public final getLocalTimeBegin()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeBegin:J

    return-wide v0
.end method

.method public final getLocalTimeEnd()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeEnd:J

    return-wide v0
.end method

.method public final getLocalTimeOffsetProperty()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalTimeProperty()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSortOrder()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mSortOrder:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTime()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mBegin:J

    return-wide v0
.end method

.method public final getTimeGroup()Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 95
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mAggregates:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mGroups:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mTimeGroup:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mBegin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeBegin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->mLocalTimeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
