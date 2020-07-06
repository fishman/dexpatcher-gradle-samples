.class public final Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;
.super Ljava/lang/Object;
.source "ReadRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBegin:J

.field private mCount:I

.field private final mDataType:Ljava/lang/String;

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

.field private mIsAliasOnly:B

.field private mLocalTimeBegin:J

.field private mLocalTimeEnd:J

.field private mLocalTimeOffsetProperty:Ljava/lang/String;

.field private mLocalTimeProperty:Ljava/lang/String;

.field private mOffset:I

.field private mPackageName:Ljava/lang/String;

.field private mProjections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrder:Ljava/lang/String;

.field private mTimeAfter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDataType:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mSortOrder:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mBegin:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mEnd:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mOffset:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mCount:I

    .line 87
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 88
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mIsAliasOnly:B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mTimeAfter:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeBegin:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeEnd:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDataType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/util/List;BLjava/lang/String;JJIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;B",
            "Ljava/lang/String;",
            "JJIIJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    .line 45
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    move-object v1, p1

    .line 61
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDataType:Ljava/lang/String;

    move-object v1, p2

    .line 62
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mPackageName:Ljava/lang/String;

    move-object v1, p7

    .line 63
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mSortOrder:Ljava/lang/String;

    move-wide v1, p8

    .line 64
    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mBegin:J

    move-wide v1, p10

    .line 65
    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mEnd:J

    move v1, p12

    .line 66
    iput v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mOffset:I

    move/from16 v1, p13

    .line 67
    iput v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mCount:I

    move-object v1, p3

    .line 68
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-object v1, p4

    .line 69
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    move-object v1, p5

    .line 70
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    move v1, p6

    .line 71
    iput-byte v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mIsAliasOnly:B

    move-wide/from16 v1, p14

    .line 72
    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mTimeAfter:J

    move-object/from16 v1, p16

    .line 73
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 74
    iput-object v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    .line 75
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeBegin:J

    .line 76
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeEnd:J

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCount()J
    .locals 2

    .line 188
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDataType:Ljava/lang/String;

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

    .line 216
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    return-object p0
.end method

.method public final getEndTime()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mEnd:J

    return-wide v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object p0
.end method

.method public final getLocalTimeBegin()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeBegin:J

    return-wide v0
.end method

.method public final getLocalTimeEnd()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeEnd:J

    return-wide v0
.end method

.method public final getLocalTimeOffsetProperty()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocalTimeProperty()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    return-object p0
.end method

.method public final getOffset()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mOffset:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getProjections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    return-object p0
.end method

.method public final getSortOrder()Ljava/lang/String;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mSortOrder:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTime()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mBegin:J

    return-wide v0
.end method

.method public final getTimeAfter()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mTimeAfter:J

    return-wide v0
.end method

.method public final isAliasOnly()B
    .locals 0

    .line 223
    iget-byte p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mIsAliasOnly:B

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mSortOrder:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 107
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mBegin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mFilter:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mProjections:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mDeviceUuids:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 117
    iget-byte p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mIsAliasOnly:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 118
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mTimeAfter:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeOffsetProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeBegin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->mLocalTimeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
