.class public Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
.super Ljava/lang/Object;
.source "SAAuthenticationToken.java"


# static fields
.field public static final AUTHENTICATION_TYPE_CERTIFICATE_X509:I = 0x60c

.field public static final AUTHENTICATION_TYPE_NONE:I = 0x60b

.field private static final KEY_ENCODING_FORMAT:Ljava/lang/String; = "ISO-8859-1"

.field private static final TAG:Ljava/lang/String; = "[SA_SDK]SAAuthenticationToken"


# instance fields
.field private mAuthType:I

.field private mKey:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 53
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    .line 55
    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    return-void
.end method


# virtual methods
.method public getAuthenticationType()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    return p0
.end method

.method public getKey()[B
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mKey:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to encode Key!! charsetISO-8859-1 is not supported"

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->mAuthType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Key:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
