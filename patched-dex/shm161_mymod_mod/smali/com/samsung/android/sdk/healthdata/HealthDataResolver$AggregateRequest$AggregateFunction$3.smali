.class final enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction$3;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2250
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;-><init>(Ljava/lang/String;IILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral()Ljava/lang/String;
    .locals 0

    const-string p0, "MAX"

    return-object p0
.end method
