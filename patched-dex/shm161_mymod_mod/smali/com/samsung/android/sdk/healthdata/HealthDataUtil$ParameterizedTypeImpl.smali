.class final Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "HealthDataUtil.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParameterizedTypeImpl"
.end annotation


# instance fields
.field private final mOwnerType:Ljava/lang/reflect/Type;

.field private final mRawType:Ljava/lang/reflect/Type;

.field private final mTypeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/lang/Class;

    .line 193
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 194
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 197
    :cond_2
    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    const-string v3, "typeArgument == null"

    .line 198
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 202
    :cond_3
    iput-object p3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mOwnerType:Ljava/lang/reflect/Type;

    .line 203
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mRawType:Ljava/lang/reflect/Type;

    .line 204
    invoke-virtual {p2}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 269
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-object p1
.end method

.method private checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 275
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 276
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private hashCodeOrZero(Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 0

    .line 264
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 228
    :cond_0
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 232
    :cond_1
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mOwnerType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mRawType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mRawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mOwnerType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mRawType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mRawType:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    const-string v1, ", "

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->mTypeArguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/healthdata/HealthDataUtil$ParameterizedTypeImpl;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ">"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
