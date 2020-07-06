.class public Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;
.super Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
.source "HealthPermissionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResultBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 648
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 1

    const/4 v0, 0x1

    .line 619
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    .line 620
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(Landroid/os/Parcel;)V

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$1;)V
    .locals 0

    .line 611
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResultMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->mResultBundle:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->access$100(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 641
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 642
    iget-object p0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
