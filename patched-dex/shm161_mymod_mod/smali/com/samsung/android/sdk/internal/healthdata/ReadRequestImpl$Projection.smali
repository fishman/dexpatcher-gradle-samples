.class public Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;
.super Ljava/lang/Object;
.source "ReadRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Projection"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlias:Ljava/lang/String;

.field final mProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mProperty:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mProperty:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mAlias:Ljava/lang/String;

    return-void

    .line 270
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null or empty property for read request is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mProperty:Ljava/lang/String;

    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mProperty:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 283
    iget-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mProperty:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
