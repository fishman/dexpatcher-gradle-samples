.class public abstract enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
.super Ljava/lang/Enum;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AggregateFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

.field public static final enum AVG:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

.field public static final enum COUNT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

.field public static final enum MAX:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

.field public static final enum MIN:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

.field public static final enum SUM:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2228
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$1;

    const-string v1, "SUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->SUM:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    .line 2239
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$2;

    const-string v1, "MIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->MIN:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    .line 2250
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$3;

    const-string v1, "MAX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->MAX:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    .line 2261
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$4;

    const-string v1, "AVG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->AVG:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    .line 2272
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$5;

    const-string v1, "COUNT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->COUNT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    const/4 v0, 0x5

    .line 2221
    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->SUM:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->MIN:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->MAX:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->AVG:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->COUNT:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2282
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->mValue:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V
    .locals 0

    .line 2221
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static from(I)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
    .locals 3

    if-ltz p0, :cond_1

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 2300
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 2298
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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
    .locals 1

    .line 2221
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
    .locals 1

    .line 2221
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 2292
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->mValue:I

    return p0
.end method

.method public abstract toSqlLiteral()Ljava/lang/String;
.end method
