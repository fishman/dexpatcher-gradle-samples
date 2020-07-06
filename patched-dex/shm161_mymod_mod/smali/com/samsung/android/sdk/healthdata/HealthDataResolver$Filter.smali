.class public abstract Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3352
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 3312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    .line 3319
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 3302
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->createChildFromParcel(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs and(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3401
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/AndFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0

    .line 3399
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Filter arguments for and method should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static checkFilter(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V
    .locals 1

    if-nez p0, :cond_0

    .line 3374
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid filter instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private static createChildFromParcel(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 0

    .line 3323
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->createFilter(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    move-result-object p0

    return-object p0
.end method

.method public static eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 3451
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p1, :cond_1

    .line 3454
    new-instance p1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object p1

    .line 3456
    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 3457
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 3458
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3459
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/StringFilter;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/StringFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3461
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type of value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greaterThan(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3516
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3519
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 3517
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static greaterThanEquals(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3535
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3538
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 3536
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    .line 3559
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3562
    :cond_0
    instance-of v0, p1, [Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 3563
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;

    check-cast p1, [Ljava/lang/Number;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/NumberArrayFilter;-><init>(Ljava/lang/String;[Ljava/lang/Number;)V

    return-object v0

    .line 3564
    :cond_1
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3565
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/StringArrayFilter;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 3567
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type of value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3560
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lessThan(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3478
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3481
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 3479
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lessThanEquals(Ljava/lang/String;Ljava/lang/Comparable;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3497
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3500
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, v1, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;-><init>(Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0

    .line 3498
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid property or value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static not(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .line 3434
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/query/NotFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0
.end method

.method public static varargs or(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3420
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/query/OrFilter;-><init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;)V

    return-object v0

    .line 3418
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Filter arguments for or method should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            ">;"
        }
    .end annotation

    .line 3382
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mFilters:Ljava/util/List;

    return-object p0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 3346
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3339
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;->mType:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
