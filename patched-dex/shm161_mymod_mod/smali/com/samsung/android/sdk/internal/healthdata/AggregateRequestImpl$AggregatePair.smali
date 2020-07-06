.class public Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;
.super Ljava/lang/Object;
.source "AggregateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregatePair"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAggNum:I

.field final mAlias:Ljava/lang/String;

.field final mField:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAggNum:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mField:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->getValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAggNum:I

    .line 246
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mField:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAlias:Ljava/lang/String;

    return-void

    .line 243
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguments for aggregate function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAggNum()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAggNum:I

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getField()Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mField:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAggNum:I

    invoke-static {v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->from(I)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$AggregateFunction;->toSqlLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mField:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 265
    iget p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAggNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mField:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
