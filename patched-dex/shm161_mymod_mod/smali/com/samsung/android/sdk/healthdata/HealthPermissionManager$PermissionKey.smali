.class public Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;
.super Ljava/lang/Object;
.source "HealthPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionKey"
.end annotation


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    .line 538
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 572
    instance-of v1, p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    if-eqz v1, :cond_3

    .line 573
    check-cast p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;

    .line 576
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result p0

    iget-object p1, p1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    .line 581
    invoke-virtual {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionType()Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mDataType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;->mPermissionType:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
