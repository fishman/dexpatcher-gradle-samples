.class public final Lcom/samsung/android/shealthmonitor/data/DateOfBirth;
.super Ljava/lang/Object;
.source "DateOfBirth.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mDate:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field private mMonth:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month"
    .end annotation
.end field

.field private mMonthInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "month_int"
    .end annotation
.end field

.field private mYear:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDate()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mDate:I

    return p0
.end method

.method public final getMonth()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mMonth:Ljava/lang/String;

    return-object p0
.end method

.method public final getMonthInt()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mMonthInt:I

    return p0
.end method

.method public final getYear()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mYear:I

    return p0
.end method

.method public final setDate(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mDate:I

    return-void
.end method

.method public final setMonth(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mMonth:Ljava/lang/String;

    return-void
.end method

.method public final setMonthInt(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mMonthInt:I

    return-void
.end method

.method public final setYear(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/samsung/android/shealthmonitor/data/DateOfBirth;->mYear:I

    return-void
.end method
