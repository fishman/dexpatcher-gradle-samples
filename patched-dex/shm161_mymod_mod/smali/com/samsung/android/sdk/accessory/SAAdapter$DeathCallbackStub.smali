.class final Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;
.super Lcom/samsung/accessory/api/IDeathCallback$Stub;
.source "SAAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeathCallbackStub"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/samsung/accessory/api/IDeathCallback$Stub;-><init>()V

    if-nez p1, :cond_0

    .line 306
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid packageName:null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAdapter$DeathCallbackStub;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
