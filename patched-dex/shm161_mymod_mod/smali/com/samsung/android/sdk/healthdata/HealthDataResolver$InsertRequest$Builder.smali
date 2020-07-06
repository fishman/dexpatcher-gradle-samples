.class public Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDataType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest;
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->mDataType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->mDataType:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 916
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No data type or invalid data type is specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$InsertRequest$Builder;->mDataType:Ljava/lang/String;

    return-object p0
.end method
