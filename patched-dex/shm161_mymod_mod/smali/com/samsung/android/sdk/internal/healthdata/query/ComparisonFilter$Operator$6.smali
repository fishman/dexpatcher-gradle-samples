.class final Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$6;
.super Ljava/lang/Object;
.source "ComparisonFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
    .locals 0

    .line 105
    invoke-static {}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->values()[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$6;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
    .locals 0

    .line 110
    new-array p0, p1, [Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$6;->newArray(I)[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    move-result-object p0

    return-object p0
.end method
