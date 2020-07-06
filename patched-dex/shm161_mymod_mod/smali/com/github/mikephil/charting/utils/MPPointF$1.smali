.class final Lcom/github/mikephil/charting/utils/MPPointF$1;
.super Ljava/lang/Object;
.source "MPPointF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/utils/MPPointF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/github/mikephil/charting/utils/MPPointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2062
    new-instance p0, Lcom/github/mikephil/charting/utils/MPPointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/github/mikephil/charting/utils/MPPointF;-><init>(FF)V

    .line 2083
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 2084
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1071
    new-array p0, p1, [Lcom/github/mikephil/charting/utils/MPPointF;

    return-object p0
.end method
