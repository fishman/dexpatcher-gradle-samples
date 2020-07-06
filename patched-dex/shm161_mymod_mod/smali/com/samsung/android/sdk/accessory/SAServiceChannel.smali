.class public Lcom/samsung/android/sdk/accessory/SAServiceChannel;
.super Ljava/lang/Object;
.source "SAServiceChannel.java"


# static fields
.field public static final DATARATE_HIGH:I = 0x1

.field public static final DATARATE_LOW:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_MEDIUM:I = 0x1

.field public static final RELIABILITY_DISABLE:I = 0x0

.field public static final RELIABILITY_ENABLE:I = 0x1


# instance fields
.field private mChannelId:I

.field private mDataRate:I

.field private mPriority:I

.field private mReliability:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    .line 22
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    .line 23
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    .line 28
    iput p2, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    .line 29
    iput p3, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    .line 30
    iput p4, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mChannelId:I

    return p0
.end method

.method public getDataRate()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mDataRate:I

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mPriority:I

    return p0
.end method

.method public getReliability()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAServiceChannel;->mReliability:I

    return p0
.end method
