.class final Landroid/support/design/widget/BottomNavigationView$SavedState$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomNavigationView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/widget/BottomNavigationView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/BottomNavigationView$SavedState;
    .locals 1

    .line 601
    new-instance p0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/BottomNavigationView$SavedState;
    .locals 0

    .line 596
    new-instance p0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomNavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/BottomNavigationView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/BottomNavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/BottomNavigationView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Landroid/support/design/widget/BottomNavigationView$SavedState;
    .locals 0

    .line 606
    new-array p0, p1, [Landroid/support/design/widget/BottomNavigationView$SavedState;

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomNavigationView$SavedState$1;->newArray(I)[Landroid/support/design/widget/BottomNavigationView$SavedState;

    move-result-object p0

    return-object p0
.end method
