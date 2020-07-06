.class public Lcom/samsung/android/sdk/healthdata/HealthUserProfile;
.super Ljava/lang/Object;
.source "HealthUserProfile.java"


# static fields
.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final USER_PROFILE_KEY_BIRTH_DATE:Ljava/lang/String; = "birth_date"

.field public static final USER_PROFILE_KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final USER_PROFILE_KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final USER_PROFILE_KEY_IMAGE:Ljava/lang/String; = "image"

.field public static final USER_PROFILE_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_PROFILE_KEY_USER_NAME:Ljava/lang/String; = "name"

.field public static final USER_PROFILE_KEY_WEIGHT:Ljava/lang/String; = "weight"


# instance fields
.field private final mBirthDate:Ljava/lang/String;

.field private final mGender:I

.field private final mHeight:F

.field private final mImage:Landroid/graphics/Bitmap;

.field private final mUserId:Ljava/lang/String;

.field private final mUserName:Ljava/lang/String;

.field private final mWeight:F


# direct methods
.method private constructor <init>(Ljava/lang/String;FFLjava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mBirthDate:Ljava/lang/String;

    .line 204
    iput p2, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mHeight:F

    .line 205
    iput p3, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mWeight:F

    .line 206
    iput-object p4, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mUserId:Ljava/lang/String;

    .line 207
    iput p5, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mGender:I

    .line 208
    iput-object p6, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mUserName:Ljava/lang/String;

    .line 209
    iput-object p7, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static getProfile(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/HealthUserProfile;
    .locals 9

    .line 226
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getInterface(Lcom/samsung/android/sdk/healthdata/HealthDataStore;)Lcom/samsung/android/sdk/healthdata/IHealth;

    move-result-object v0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataStore;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/healthdata/IHealth;->getUserProfile2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 231
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "profileBundle is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v0, "birth_date"

    .line 233
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "height"

    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    const-string v0, "weight"

    .line 235
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string v0, "user_id"

    .line 236
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "gender"

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "name"

    .line 238
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "image"

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    move-object v8, p0

    goto :goto_1

    .line 240
    :cond_1
    array-length v0, p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 242
    :goto_1
    new-instance p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;-><init>(Ljava/lang/String;FFLjava/lang/String;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Lcom/samsung/android/sdk/internal/healthdata/ErrorUtil;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBirthDate()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mBirthDate:Ljava/lang/String;

    return-object p0
.end method

.method public getGender()I
    .locals 0

    .line 307
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mGender:I

    return p0
.end method

.method public getHeight()F
    .locals 0

    .line 267
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mHeight:F

    return p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()F
    .locals 0

    .line 278
    iget p0, p0, Lcom/samsung/android/sdk/healthdata/HealthUserProfile;->mWeight:F

    return p0
.end method
