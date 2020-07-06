.class public Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
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
    name = "TimeGroup"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAlias:Ljava/lang/String;

.field final mAmount:I

.field final mOffsetProperty:Ljava/lang/String;

.field final mTimeProperty:Ljava/lang/String;

.field final mTimeUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 460
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeUnit:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAmount:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeProperty:Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mOffsetProperty:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 371
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid timeUnit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p2, :cond_1

    .line 374
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid amount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$2;->$SwitchMap$com$samsung$android$sdk$healthdata$HealthDataResolver$AggregateRequest$TimeGroupUnit:[I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 400
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid timeUnit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    .line 396
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid amount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eq p2, v1, :cond_2

    .line 391
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid amount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/16 v0, 0x18

    .line 383
    rem-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 384
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid amount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    const/16 v0, 0x3c

    .line 378
    rem-int/2addr v0, p2

    if-eqz v0, :cond_2

    .line 379
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid amount"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p3, :cond_4

    .line 402
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->getValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeUnit:I

    .line 407
    iput p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAmount:I

    .line 408
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeProperty:Ljava/lang/String;

    .line 409
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mOffsetProperty:Ljava/lang/String;

    .line 410
    iput-object p5, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAlias:Ljava/lang/String;

    return-void

    .line 403
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient arguments for time group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getAmount()I
    .locals 0

    .line 437
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAmount:I

    return p0
.end method

.method public getOffsetProperty()Ljava/lang/String;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mOffsetProperty:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeProperty()Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeProperty:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeUnit()I
    .locals 0

    .line 433
    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeUnit:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 429
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeUnit:I

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->from(I)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mOffsetProperty:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAmount:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateRequest$TimeGroupUnit;->toSqlLiteral(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 420
    iget p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeUnit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAmount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mTimeProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mOffsetProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
