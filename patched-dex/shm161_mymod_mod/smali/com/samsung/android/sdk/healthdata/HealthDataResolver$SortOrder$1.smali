.class final enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder$1;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3653
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$SortOrder;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral()Ljava/lang/String;
    .locals 0

    const-string p0, "ASC"

    return-object p0
.end method
