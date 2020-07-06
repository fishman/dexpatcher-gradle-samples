.class public final Lcom/samsung/android/shealthmonitor/data/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mDateOfBirth:Lcom/samsung/android/shealthmonitor/data/DateOfBirth;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dob"
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private mGender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private mGenderIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender_index"
    .end annotation
.end field

.field private mLastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    invoke-direct {v0}, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mDateOfBirth:Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    return-void
.end method


# virtual methods
.method public final getDateOfBirth()Lcom/samsung/android/shealthmonitor/data/DateOfBirth;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mDateOfBirth:Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    return-object p0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mFirstName:Ljava/lang/String;

    return-object p0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public final getGenderIndex()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mGenderIndex:I

    return p0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mLastName:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateOfBirth(Lcom/samsung/android/shealthmonitor/data/DateOfBirth;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mDateOfBirth:Lcom/samsung/android/shealthmonitor/data/DateOfBirth;

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public final setGender(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mGender:Ljava/lang/String;

    return-void
.end method

.method public final setGenderIndex(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mGenderIndex:I

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/UserProfile;->mLastName:Ljava/lang/String;

    return-void
.end method
