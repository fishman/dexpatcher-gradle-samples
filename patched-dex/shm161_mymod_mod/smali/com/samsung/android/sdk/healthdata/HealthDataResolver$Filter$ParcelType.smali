.class public abstract enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "ParcelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

.field public static final enum STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 3575
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$1;

    const-string v1, "COMPARABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3581
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$2;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3587
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$3;

    const-string v1, "STRING_ARRAY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3593
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$4;

    const-string v1, "NUMBER_ARRAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3599
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$5;

    const-string v1, "AND"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3605
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$6;

    const-string v1, "OR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3611
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$7;

    const-string v1, "NOT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    const/4 v0, 0x7

    .line 3574
    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->COMPARABLE:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->STRING_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NUMBER_ARRAY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->AND:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->OR:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->NOT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    .line 3628
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$8;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType$8;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3574
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V
    .locals 0

    .line 3574
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 1

    .line 3574
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;
    .locals 1

    .line 3574
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;

    return-object v0
.end method


# virtual methods
.method abstract createFilter(Landroid/os/Parcel;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3625
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter$ParcelType;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
