.class public abstract enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "TimeGroupUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

.field private static final CUSTOM_LOCAL_TAIL:Ljava/lang/String; = "/1000, \'unixepoch\'"

.field public static final enum DAILY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

.field private static final DEFAULT_LOCAL:Ljava/lang/String; = ", \'unixepoch\', \'localtime\'"

.field public static final enum HOURLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

.field public static final enum MINUTELY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

.field public static final enum MONTHLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

.field public static final enum WEEKLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2483
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$1;

    const-string v1, "MINUTELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->MINUTELY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    .line 2506
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$2;

    const-string v1, "HOURLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->HOURLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    .line 2529
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$3;

    const-string v1, "DAILY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->DAILY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    .line 2552
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$4;

    const-string v1, "WEEKLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->WEEKLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    .line 2574
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$5;

    const-string v1, "MONTHLY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->MONTHLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    const/4 v0, 0x5

    .line 2468
    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->MINUTELY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->HOURLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->DAILY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->WEEKLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->MONTHLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2606
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2607
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->mValue:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V
    .locals 0

    .line 2468
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
    .locals 3

    if-ltz p0, :cond_1

    .line 2622
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->MONTHLY:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->getValue()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2625
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 2623
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid range : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
    .locals 1

    .line 2468
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
    .locals 1

    .line 2468
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 2617
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->mValue:I

    return p0
.end method

.method public abstract toSqlLiteral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
