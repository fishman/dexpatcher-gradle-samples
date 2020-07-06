.class public final enum Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
.super Ljava/lang/Enum;
.source "HealthPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

.field public static final enum READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

.field public static final enum WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 476
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    .line 482
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    const-string v1, "WRITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    const/4 v0, 0x2

    .line 471
    new-array v0, v0, [Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 488
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->mValue:I

    return-void
.end method

.method public static getType(I)Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
    .locals 1

    .line 509
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 510
    sget-object p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->READ:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-object p0

    .line 511
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 512
    sget-object p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->WRITE:Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-object p0

    .line 514
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown input value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
    .locals 1

    .line 471
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;
    .locals 1

    .line 471
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->$VALUES:[Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 498
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionType;->mValue:I

    return p0
.end method
