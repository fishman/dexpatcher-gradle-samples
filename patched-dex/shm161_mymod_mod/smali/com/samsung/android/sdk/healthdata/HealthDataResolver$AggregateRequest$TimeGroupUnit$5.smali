.class final enum Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit$5;
.super Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 2574
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;-><init>(Ljava/lang/String;IILcom/samsung/android/sdk/healthdata/HealthDataResolver$1;)V

    return-void
.end method


# virtual methods
.method public final toSqlLiteral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string p0, ", \'unixepoch\', \'localtime\'"

    if-eqz p2, :cond_0

    .line 2579
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/1000, \'unixepoch\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p2, 0x3

    if-eq p3, p2, :cond_2

    const/4 p2, 0x6

    if-eq p3, p2, :cond_1

    .line 2598
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "strftime(\'%Y-%m\', datetime(strftime(\'%s\', "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/1000"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), \'unixepoch\'))"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2593
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "strftime(\'%Y\', strftime(\'%s\', "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/1000"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), \'unixepoch\') || \'-\' || CASE  WHEN strftime(\'%m\', strftime(\'%s\', "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/1000"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), \'unixepoch\') <= \'06\' THEN \'01\' ELSE \'07\' END"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2583
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "strftime(\'%Y\', strftime(\'%s\', "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/1000"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), \'unixepoch\') || \'-\' || CASE strftime(\'%m\', strftime(\'%s\', "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/1000"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "), \'unixepoch\') WHEN \'01\' THEN \'01\' WHEN \'02\' THEN \'01\' WHEN \'03\' THEN \'01\' WHEN \'04\' THEN \'04\' WHEN \'05\' THEN \'04\' WHEN \'06\' THEN \'04\'  WHEN \'07\' THEN \'07\' WHEN  \'08\' THEN \'07\' WHEN \'09\' THEN \'07\'  WHEN \'10\' THEN \'10\' WHEN \'11\' THEN \'10\' WHEN \'12\' THEN \'10\' END"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
