.class final Lnet/sqlcipher/CursorWindow$1;
.super Ljava/lang/Object;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/CursorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lnet/sqlcipher/CursorWindow;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Lnet/sqlcipher/CursorWindow$1;->createFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;
    .locals 1

    .line 615
    new-instance p0, Lnet/sqlcipher/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sqlcipher/CursorWindow;-><init>(Landroid/os/Parcel;I)V

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Lnet/sqlcipher/CursorWindow$1;->newArray(I)[Lnet/sqlcipher/CursorWindow;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Lnet/sqlcipher/CursorWindow;
    .locals 0

    .line 619
    new-array p0, p1, [Lnet/sqlcipher/CursorWindow;

    return-object p0
.end method
