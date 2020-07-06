.class public abstract enum Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
.super Ljava/lang/Enum;
.source "ComparisonFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field public static final enum GREATER_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field public static final enum GREATER_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field public static final enum LESS_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

.field public static final enum LESS_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$1;

    const-string v1, "GREATER_THAN_EQUALS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 67
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$2;

    const-string v1, "GREATER_THAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 73
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$3;

    const-string v1, "LESS_THAN_EQUALS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$4;

    const-string v1, "LESS_THAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 85
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$5;

    const-string v1, "EQ"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->GREATER_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN_EQUALS:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->LESS_THAN:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->EQ:Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->$VALUES:[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    .line 102
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$6;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator$6;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
    .locals 1

    .line 60
    const-class v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->$VALUES:[Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract toQueryString()Ljava/lang/String;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/query/ComparisonFilter$Operator;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
